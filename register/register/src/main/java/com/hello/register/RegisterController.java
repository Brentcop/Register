package com.hello.register;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.hello.register.entity.User;
import com.hello.register.repo.UserRepo;

@Controller
@SessionAttributes({"first","last","address1","address2","city","state","zip","country"})
public class RegisterController {

	@Autowired
	private UserRepo uP;
	
	@RequestMapping("/")
	public ModelAndView register(HttpSession session, Model model) {
		ModelAndView mv = new ModelAndView("regform");
		model.addAttribute("first","");
		model.addAttribute("last","");
		model.addAttribute("address1","");
		model.addAttribute("address2","");
		model.addAttribute("city","");
		model.addAttribute("state","");
		model.addAttribute("zip","");
		model.addAttribute("country","");
		return mv;
	}
	@RequestMapping("confirm")
	public ModelAndView addUserAndLogin(@RequestParam("first") String first,@RequestParam("last") String last,
			@RequestParam("address1") String address1,@RequestParam(value ="address2", required=false) String address2,
			@RequestParam("city") String city,@RequestParam("state") String state,@RequestParam("zip") int zip,
			@RequestParam("country") String country, HttpSession session, Model model) {
		Date date = new Date();
		SimpleDateFormat fd = new SimpleDateFormat ("yyyy.MM.dd hh:mm:ss");
		System.out.println(fd.toString());
		String curDate = fd.format(date);
		User newuser = new User(first,last,address1,address2,city,state,zip,country,curDate);
		model.addAttribute("first",first);
		model.addAttribute("last",last);
		model.addAttribute("address1",address1);
		model.addAttribute("address2",address2);
		model.addAttribute("city",city);
		model.addAttribute("state",state);
		model.addAttribute("zip",zip);
		model.addAttribute("country",country);
		Optional<User> User = uP.findByFirst(first);
		if(country.equals("US") || country.equals("us")) {
		if (User.isPresent()) {
			String message = "This user information exisits already. "
					+ "Please check and verify you are entering something that you haven't.";
			ModelAndView mv1 = new ModelAndView("/regform", "alreadyexists", message);
			return mv1;
		} else {
			
		uP.save(newuser);
		}
		return new ModelAndView("confirm","confirmed","Thank you " + first + "!");	
	}else {
		String message2 = "This registration is only appliable to the US. "
				+ "Please check and verify you are entering the correct country.";
		ModelAndView mv2 = new ModelAndView("/regform", "uscheck", message2);
		return mv2;
	}}
	
	@RequestMapping("/admin")
	public ModelAndView admin() {
		return new ModelAndView ("admin","users",uP.findAll());
	}
}
