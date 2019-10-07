package com.example.demo.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.User;
import com.example.demo.UserRepository;

@Controller
public class LoginController {
	
	@Autowired
	UserRepository userRepository;
	
	@RequestMapping(value={"/login","/"})
	public ModelAndView home()
	{
	    List<User> userList =userRepository.findAll();
	    if (userList.isEmpty()) 
	    {
			User user = new User();
			user.setFirstName("admin");
			user.setLastName("admin");
			user.setUserName("admin");
			user.setUserRole("ADMIN");
			user.setActive(true);
			user.setPassword("admin");
			user.setMobile("7891331023");
			user.setEmail("er.chandrasekharyadav@gmail.com");
			userRepository.save(user);
		}
		return new ModelAndView("login");
		
	}
	
	@RequestMapping(value={"/index/","/home"})
    public ModelAndView home(Principal principal,HttpServletRequest request,Model modelMap)
	{
		 ModelAndView mv = new ModelAndView();
       if(principal!=null)
       {
    	   mv.setViewName("home");
           User loginUser = userRepository.findByUserNameAndActive(principal.getName(), true);
           modelMap.addAttribute("loginUser", loginUser);
		   System.out.println("############### login User name ##############:"+loginUser.getFirstName());
		   System.out.println("############### login User Role ##############:"+loginUser.getUserRole());
		
       }
       else
       {
    	   mv.setViewName("error");
       }
        return mv;
    }
	
	
	@RequestMapping(value={"/register"},method=RequestMethod.GET)
	public ModelAndView loadRegister(HttpServletRequest request,ModelMap model)
	{   
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("registration");		
		return mv;
	}
	
	@RequestMapping(value={"/register"},method=RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request,ModelMap model)
	{   
		ModelAndView mv = new ModelAndView();
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
     	
     	
     	String password = request.getParameter("password");
     	String mobile = request.getParameter("mobile");
     	String email = request.getParameter("email");
     	
		User user = new User();
		user.setFirstName(fName);
		user.setLastName(lName);
		user.setUserName(userName);
		user.setMobile(mobile);
		user.setPassword(password);
		user.setEmail(email);
		user.setActive(true);
		user.setUserRole("USER");
		User u = userRepository.save(user);
		model.addAttribute("newUser", u);
		System.out.println("User Created successfully and his credential is below");
		System.out.println("userName:"+u.getUserName());
		System.out.println("password:"+u.getPassword());
		mv.setViewName("registration");
				
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
	
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public ModelAndView profile(HttpServletRequest request,ModelMap model,Principal principal)
	{
		
		
		    ModelAndView mv = new ModelAndView();
		    
		    User loginUser = userRepository.findByUserNameAndActive(principal.getName(), true);
		    model.addAttribute("loginUser", loginUser);
		    
			mv.setViewName("profile");
		
		return mv;
	}
	
	@RequestMapping(value={"/profile"},method=RequestMethod.POST)
	public ModelAndView updateProfile(HttpServletRequest request,ModelMap model,Principal principal)
	{   
		ModelAndView mv = new ModelAndView();
		
		User user = userRepository.findOne(Integer.parseInt(request.getParameter("id")));
		
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
     	
     	
    // 	String password = request.getParameter("password");
     	String mobile = request.getParameter("mobile");
     	String email = request.getParameter("email");
     	
		
		user.setFirstName(fName);
		user.setLastName(lName);
		user.setUserName(userName);
		user.setMobile(mobile);
	//	user.setPassword(password);
		user.setEmail(email);
		user.setActive(true);
		
		User u = userRepository.save(user);
		model.addAttribute("newUser", u);
		System.out.println("User Updated successfully and his credential is below");
		System.out.println("userName:"+u.getUserName());
		System.out.println("password:"+u.getPassword());
		
		 User loginUser = userRepository.findByUserNameAndActive(principal.getName(), true);
		    model.addAttribute("loginUser", loginUser);
		
		mv.setViewName("profile");
				
		return mv;
	}
	
	
	@RequestMapping(value="/changePassword",method=RequestMethod.GET)
	public ModelAndView loadChangePassword(HttpServletRequest request,ModelMap model,Principal principal)
	{
		
		
		    ModelAndView mv = new ModelAndView();
		    
		    User loginUser = userRepository.findByUserNameAndActive(principal.getName(), true);
		    model.addAttribute("loginUser", loginUser);
		    
			mv.setViewName("changePassword");
		
		return mv;
	}
	
	@RequestMapping(value={"/changePassword"},method=RequestMethod.POST)
	public ModelAndView changePassword(HttpServletRequest request,ModelMap model,Principal principal)
	{   
		ModelAndView mv = new ModelAndView();
		
		User user = userRepository.findOne(Integer.parseInt(request.getParameter("id")));
			
    	String password = request.getParameter("password");
     
	    user.setPassword(password);
		
		User u = userRepository.save(user);
		model.addAttribute("newUser", u);
		System.out.println("Password change  successfully ");
		System.out.println("userName:"+u.getUserName());
		System.out.println("password:"+u.getPassword());
		
		User loginUser = userRepository.findByUserNameAndActive(principal.getName(), true);
		model.addAttribute("loginUser", loginUser);
		
		mv.setViewName("changePassword");
				
		return mv;
	}
	
}
