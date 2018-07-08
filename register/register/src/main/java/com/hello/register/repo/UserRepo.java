package com.hello.register.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.hello.register.entity.User;
@Repository
public interface UserRepo extends JpaRepository<User,String>{
	<S extends User> S save(S entity);
	Optional<User>findByFirst(String first);
	
	
}
	