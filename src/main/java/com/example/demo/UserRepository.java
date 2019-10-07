package com.example.demo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;



public interface UserRepository extends JpaRepository<User, Integer>{

	Optional<User> findByUserName(String userName);
	
	public User findByUserNameAndActive(String userName,boolean active);
	
}
