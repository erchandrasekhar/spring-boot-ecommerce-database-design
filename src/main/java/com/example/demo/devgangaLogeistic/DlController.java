package com.example.demo.devgangaLogeistic;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class DlController {
	
	@Autowired
	DlBillRepository dlBillRepository;
	@Autowired
	Contactrepository contactrepository;
	@Autowired
	UserRepository userRepository;
	@RequestMapping(value="loadDlBill",method=RequestMethod.GET)
	public ModelAndView loadDlBill(Principal principal,Model modelMap)
	{   ModelAndView mv =new ModelAndView();
	    mv.setViewName("dlBill");
	    User loginUser = userRepository.findByUserNameAndActive(principal.getName(), true);
        modelMap.addAttribute("loginUser", loginUser);
		return mv;
		
	}

	@RequestMapping(value="generateBill",method=RequestMethod.POST)
	public ModelAndView generateBill(HttpServletRequest request,ModelMap modelMap)
	{      
		    ModelAndView mv =new ModelAndView();
		    DlBill dlBill = new DlBill();
		    dlBill.setLoriNumber(request.getParameter("loriNumber"));
		    /*dlBill.setBillGenratedBy(request.getParameter("generatedBy"));*/
		    User user = userRepository.findOne(Integer.parseInt(request.getParameter("userId")));
		    dlBill.setUser(user);
		    dlBill.setBillDate(new Date());
		    
		    String fromDate = request.getParameter("fromDate");
		    String toDate = request.getParameter("toDate");
		    Date date1 = null;
		    Date date2 = null;
		    try {
				date1 = new SimpleDateFormat("dd-MM-yyyy").parse(fromDate);
				date2 = new SimpleDateFormat("dd-MM-yyyy").parse(toDate);
				dlBill.setFromDate(date1);
				dlBill.setToDate(date2);
			} catch (Exception e)
		    {
				e.printStackTrace();
			}
		    
		    
		    dlBill.setLogesticName(request.getParameter("logesticName"));
		    dlBill.setDriver(request.getParameter("driverName"));
		    dlBill.setLoadingLocation(request.getParameter("loadingLocation"));
		    dlBill.setUnLoadingLocation(request.getParameter("unLoadingLocation"));
		    dlBill.setMaterialCategory(request.getParameter("materialCategory"));
		    double materialPrice = Double.parseDouble(request.getParameter("meterialPrice"));
		    double dieselPrice = Double.parseDouble(request.getParameter("dieselPrice"));
		    double passingprice = Double.parseDouble(request.getParameter("passingprice"));
		    double grisingPrice = Double.parseDouble(request.getParameter("grisingPrice"));
		    double commissionPrice = Double.parseDouble(request.getParameter("commissionPrice"));
		    double labourPrice = Double.parseDouble(request.getParameter("labourPrice"));
		    double policePrice = Double.parseDouble(request.getParameter("policePrice"));
		    double dalaliPrice = Double.parseDouble(request.getParameter("dalaliPrice"));
		    double foodprice = Double.parseDouble(request.getParameter("foodprice"));
		    double tollPrice = Double.parseDouble(request.getParameter("tollPrice"));
		    
		    double totalPrice = materialPrice + dieselPrice + passingprice + 
		    		grisingPrice + commissionPrice + labourPrice + policePrice + 
		    		dalaliPrice + foodprice + tollPrice;
		    dlBill.setMaterialPrice(materialPrice);
		    dlBill.setDieselPrice(dieselPrice);
		    dlBill.setPassingPrice(passingprice);
		    dlBill.setGrisingPrice(grisingPrice);
		    dlBill.setComisionPrice(commissionPrice);
		    dlBill.setLabourPrice(labourPrice);
		    dlBill.setPolicePrice(policePrice);
		    dlBill.setDalaliPrice(dalaliPrice);
		    dlBill.setFoodPrice(foodprice);
		    dlBill.setTollPrice(tollPrice);
		    dlBill.setGrandTotal(totalPrice);
		    try 
		    {
		    	DlBill b =  dlBillRepository.save(dlBill);
		    	// modelMap.put("saveSuccess", true);
		    	 modelMap.put("bill", b);
			} 
		    catch (Exception e)
		    {
				e.printStackTrace();
				
			}
		    
		    mv.setViewName("redirect:/successBill");
			return mv;
	}
	
	@RequestMapping(value="successBill",method=RequestMethod.GET)
	public ModelAndView successBill(ModelMap modelMap)
	{   ModelAndView mv =new ModelAndView();
	    modelMap.put("saveSuccess",true);
	    mv.setViewName("successBill");
		return mv;
		
	}
	
	@RequestMapping(value="viewAllBills",method=RequestMethod.GET)
	public ModelAndView viewAllBills(ModelMap modelMap)
	{   ModelAndView mv =new ModelAndView();
	    modelMap.put("billList", dlBillRepository.findAll());
	    mv.setViewName("billList");
		return mv;
		
	}
	
	@RequestMapping(value="contact",method=RequestMethod.GET)
	public ModelAndView contact(ModelMap modelMap)
	{   ModelAndView mv =new ModelAndView();
	   
	    mv.setViewName("contact");
		return mv;
		
	}
	
	
	
	
	

	@RequestMapping(value="viewBill",method=RequestMethod.GET)
	public ModelAndView viewBill(ModelMap modelMap,HttpServletRequest request)
	{   ModelAndView mv =new ModelAndView();
	
	   DlBill dlBill = dlBillRepository.findOne(Integer.parseInt(request.getParameter("id")));
	  if(dlBill!=null)
	  {   
		  modelMap.put("billView", true);
		  modelMap.put("dlBill", dlBill);
		  mv.setViewName("billList");  
		  modelMap.put("billList", dlBillRepository.findAll());
	  }
	  else{
		  mv.setViewName("billList");  
		  modelMap.put("billList", dlBillRepository.findAll());
	  }
	    
		return mv;
		
	}
	
	@RequestMapping(value="updateBill",method=RequestMethod.GET)
	public ModelAndView loaUupdateBill(ModelMap modelMap,HttpServletRequest request)
	{   ModelAndView mv =new ModelAndView();
	
	   DlBill dlBill = dlBillRepository.findOne(Integer.parseInt(request.getParameter("id")));
	  if(dlBill!=null)
	  {   
		  modelMap.put("billUpdate", true);
		  modelMap.put("dlBill", dlBill);
		  mv.setViewName("billList");  
		  modelMap.put("billList", dlBillRepository.findAll());
	  }
	  else{
		  mv.setViewName("billList");  
		  modelMap.put("billList", dlBillRepository.findAll());
	  }
	    
		return mv;
		
	}
	
	
	
	
	@RequestMapping(value="updateBill",method=RequestMethod.POST)
	public ModelAndView updateBill(HttpServletRequest request,ModelMap modelMap)
	{      
		    ModelAndView mv =new ModelAndView();
		    DlBill dlBill = dlBillRepository.findOne(Integer.parseInt(request.getParameter("id")));
		    dlBill.setLoriNumber(request.getParameter("loriNumber"));
		   /* dlBill.setBillGenratedBy(request.getParameter("generatedBy"));*/
		    dlBill.setBillDate(new Date());
		    
		    String fromDate = request.getParameter("fromDate");
		    String toDate = request.getParameter("toDate");
		    Date date1 = null;
		    Date date2 = null;
		    try {
				date1 = new SimpleDateFormat("yyyy-MM-dd").parse(fromDate);
				date2 = new SimpleDateFormat("yyyy-MM-dd").parse(toDate);
				dlBill.setFromDate(date1);
				dlBill.setToDate(date2);
			} catch (Exception e)
		    {
				e.printStackTrace();
			}
		    
		    dlBill.setLogesticName(request.getParameter("logesticName"));
		    dlBill.setDriver(request.getParameter("driverName"));
		    dlBill.setLoadingLocation(request.getParameter("loadingLocation"));
		    dlBill.setUnLoadingLocation(request.getParameter("unLoadingLocation"));
		    dlBill.setMaterialCategory(request.getParameter("materialCategory"));
		    double materialPrice = Double.parseDouble(request.getParameter("meterialPrice"));
		    double dieselPrice = Double.parseDouble(request.getParameter("dieselPrice"));
		    double passingprice = Double.parseDouble(request.getParameter("passingprice"));
		    double grisingPrice = Double.parseDouble(request.getParameter("grisingPrice"));
		    double commissionPrice = Double.parseDouble(request.getParameter("commissionPrice"));
		    double labourPrice = Double.parseDouble(request.getParameter("labourPrice"));
		    double policePrice = Double.parseDouble(request.getParameter("policePrice"));
		    double dalaliPrice = Double.parseDouble(request.getParameter("dalaliPrice"));
		    double foodprice = Double.parseDouble(request.getParameter("foodprice"));
		    double tollPrice = Double.parseDouble(request.getParameter("tollPrice"));
		    
		    double totalPrice = materialPrice + dieselPrice + passingprice + 
		    		grisingPrice + commissionPrice + labourPrice + policePrice + 
		    		dalaliPrice + foodprice + tollPrice;
		    dlBill.setMaterialPrice(materialPrice);
		    dlBill.setDieselPrice(dieselPrice);
		    dlBill.setPassingPrice(passingprice);
		    dlBill.setGrisingPrice(grisingPrice);
		    dlBill.setComisionPrice(commissionPrice);
		    dlBill.setLabourPrice(labourPrice);
		    dlBill.setPolicePrice(policePrice);
		    dlBill.setDalaliPrice(dalaliPrice);
		    dlBill.setFoodPrice(foodprice);
		    dlBill.setTollPrice(tollPrice);
		    dlBill.setGrandTotal(totalPrice);
		    try 
		    {
		    	DlBill b =  dlBillRepository.save(dlBill);
		    	 modelMap.put("updateSuccess", true);
		    	 modelMap.put("bill", b);
		    	 
		    	 modelMap.put("billList", dlBillRepository.findAll());
		 	     mv.setViewName("billList");
			} 
		    catch (Exception e)
		    {
				e.printStackTrace();
				
			}
		    
		    mv.setViewName("billList");
			return mv;
	}
	
	
	@RequestMapping(value="saveContact",method=RequestMethod.POST)
	public ModelAndView saveContact(HttpServletRequest request,ModelMap modelMap)
	{      
		    System.out.println(request.getParameter("name"));
		    ModelAndView mv =new ModelAndView();
		    Contact contact = new Contact();
		     contact.setContactName(request.getParameter("name"));
		     contact.setContactEmail(request.getParameter("email"));
		     contact.setContactComment(request.getParameter("comments"));
		     contact.setContactDate(new Date());
		     
		     try {
		    	 contactrepository.save(contact);
		    	 mv.setViewName("contact");
		    	 modelMap.put("contactSaveSuccess",true);
			} catch (Exception e) 
		     {
				e.printStackTrace();
			}
		     
		    
			return mv;
	}
	
	
	
	@RequestMapping(value="search",method=RequestMethod.GET)
	public ModelAndView loadSearch(ModelMap modelMap,HttpServletRequest request)
	{   ModelAndView mv =new ModelAndView();
	    mv.setViewName("search");
		return mv;
		
	}
	
	@RequestMapping(value="search",method=RequestMethod.POST)
	public ModelAndView search(ModelMap modelMap,HttpServletRequest request)
	{   ModelAndView mv =new ModelAndView();
		List<DlBill> billList = dlBillRepository.findByLoriNumber(request.getParameter("loriNumber"));
		if (!billList.isEmpty()) 
		{    System.out.println(billList);
			 modelMap.put("billList",billList);
			 mv.setViewName("search");
		}
		else{
			
			 modelMap.put("searchError", true);
			 mv.setViewName("search");
		}
		
		
	   
		return mv;
		
	}
	
	
}


