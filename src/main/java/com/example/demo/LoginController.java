package com.example.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@Autowired
	UserRepository userRepository;
	
	@RequestMapping(value={"/","/login"},method=RequestMethod.GET)
	public ModelAndView loadLogin(HttpServletRequest request)
	{
	    List<User>  userList = (List<User>) userRepository.findAll();
		
	    if(userList.isEmpty())
	    {
	    	User user = new User();
	    	user.setUserName("admin");
	    	user.setFirstName("admin");
	    	user.setMobile("7891331023");
	    	user.setPassword("admin");
	    	userRepository.save(user);
	    	System.out.println("admin created");
	    }
	    
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
    
	@RequestMapping(value={"/login"},method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,ModelMap model)
	{
		ModelAndView mv = new ModelAndView();
		String userName = request.getParameter("username");
     	String password = request.getParameter("password");
		
		User user = userRepository.findByUserName(userName);
		
		
		
		if(userName.equals(user.getUserName()) && password.equals(user.getPassword()))
		{
			mv.setViewName("home");
		}
		else{
			mv.setViewName("login");
			model.put("msg", "Invalid credentials");
		}
		
		
		return mv;
	}
	
	
	@RequestMapping(value={"/register"},method=RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request,ModelMap model)
	{   
		ModelAndView mv = new ModelAndView();
		
		String userName = request.getParameter("username");
     	String fName = request.getParameter("fName");
     	
     	String password = request.getParameter("password");
     	String mobile = request.getParameter("mobile");
     	
		User user = new User();
		user.setUserName(userName);
		user.setFirstName(fName);
		user.setPassword(password);
		user.setMobile(mobile);
		
		User u = userRepository.save(user);
		System.out.println("UserCreated successfully and his credential is below");
		System.out.println("userName:"+u.getUserName());
		System.out.println("password:"+u.getPassword());
		mv.setViewName("login");
				
		return mv;
	}
	
	
	@RequestMapping(value="/getAllUser",method=RequestMethod.GET)
	public ModelAndView getAllUser(HttpServletRequest request,ModelMap model)
	{
		    ModelAndView mv = new ModelAndView();
			mv.setViewName("userList");
			model.put("userList", userRepository.findAll());
		
		return mv;
	}
}
