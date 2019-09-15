package com.example.demo;

import java.util.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoSpringBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoSpringBootApplication.class, args);
		System.out.println("APPLICATION STARTED CURRENT TIME IS:"+ new Date());
	}

}
