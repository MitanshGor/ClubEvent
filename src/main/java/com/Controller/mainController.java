package com.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.Bean.AdminBean;
import com.Bean.ClubBean;
import com.Bean.EventBean;
import com.Bean.ExtraImage;
import com.Bean.LoginBean;
import com.Bean.SignupBean;
import com.Bean.UserBean;
import com.Bean.UserRegisteredClubEvent;
import com.Dao.AdminDao;
import com.Dao.ClubDao;
import com.Dao.EventDao;
import com.Dao.UserDao;

@Controller
public class mainController 
{
	

//	@Autowired
//	UserBean user;
//	@Autowired
//	AdminBean admin;
//	@Autowired
//	EventBean event;
//	@Autowired
//	ClubBean club;
	@Autowired
	UserDao userDao;
	@Autowired
	AdminDao adminDao;
	@Autowired
	ClubDao clubDao;
	@Autowired
	EventDao eventDao;
	
	@GetMapping("/")
	public String homePage(Model model)
	{
		List<ExtraImage> images=eventDao.getAllExtraImages();
		model.addAttribute("images",images);
		System.out.println("---------------"+images.size() + images.get(0).getImg() + " , "+ images.get(2).getImg());
		return "MainPage";
	}
	
	
	
	@GetMapping("/mainpage")
	public String mainPage(Model model)
	{
		List<ExtraImage> images=eventDao.getAllExtraImages();
		model.addAttribute("images",images);
		System.out.println("---------------"+images.size() + images.get(0).getImg() + " , "+ images.get(2).getImg());
		
		return "MainPage";
	}
	@GetMapping("/SignupPage")
	public String signupPage()
	{
		
		return "SignupPage";
	}
	@GetMapping("/loginPage")
	public String loginPage(HttpSession session)
	{
		
		if(session.getAttribute("user")!=null)
		{
			session.invalidate();
		}
		return "LoginPage";
	}
//	@GetMapping("/LogOutPage")
//	public String logOutPage(HttpSession session)
//	{
//		return "redirect:/LoginPage";
//	}
	
	@PostMapping("/loginperson")
	public String loginUser(Model model,@ModelAttribute("loginperson") LoginBean bean,HttpSession session)
	{
//		System.out.println("zlsfhglshgshglslgksjdbl   "+bean.getEmail());
		if(bean.getEmail().toLowerCase().endsWith("@club.com"))
		{
			ClubBean user=clubDao.getClubOnLogedIn(bean);
			if(user==null)
			{
			model.addAttribute("msg","Invalid Credentials");
				return "LoginPage";
			}
			else
			{
				ClubBean club=clubDao.getClubById(user.getClubid());
				club.setName(user.getName());
				club.setEmail(user.getEmail());
				club.setPassword(user.getPassword());
				
				
				session.setAttribute("user", club);
				session.setAttribute("isLogin",true);
				session.setAttribute("userType", "club");
				
				
				System.out.println(user.getClubid());
				
				return "redirect:/clubDashboardMain";
			}
		}
		else if(bean.getEmail().endsWith("@admin.com"))
		{
			AdminBean user=adminDao.getAdminOnLogedIn(bean);
			if(user==null)
			{
				model.addAttribute("msg","Invalid Credentials");
				return "LoginPage";
			}
			else
			{
				session.setAttribute("user", user);
				session.setAttribute("isLogin",true);
				session.setAttribute("userType", "admin");
				return "redirect:/adminDashboardMain";
			}
		}
		else
		{
			UserBean user=userDao.getuserOnLogedIn(bean);
			if(user==null)
			{
				model.addAttribute("msg","Invalid Credentials");
				return "LoginPage";
			}
			else
			{
				session.setAttribute("user", user);
				session.setAttribute("isLogin",true);
				session.setAttribute("userType", "user");
				System.out.println(user.getUserid());
//				System.out.println(user.getEmail());
//				System.out.println(user.getPassword());
				
				return "redirect:/userDashboardMain";
			}
		}
	}
	@GetMapping("/ViewClubs")
	public String ViewClubs(Model model,HttpSession session)
	{
		List<ClubBean> clubs=clubDao.getAllClubs();
		List<UserRegisteredClubEvent> regClubs=userDao.getAllRegsiteredClubsOfUser(((UserBean)(session.getAttribute("user"))).getUserid());
		model.addAttribute("clubs",clubs);
		model.addAttribute("regClubs",regClubs);
		model.addAttribute("type","club");
		return "ListOfClubsMainPage";
	}
	
	@GetMapping("/ViewEvents")
	public String ViewEvents(Model model,HttpSession session)
	{
		List<ClubBean> clubs=clubDao.getAllClubs();
		List<UserRegisteredClubEvent> regClubs=userDao.getAllRegsiteredClubsOfUser(((UserBean)(session.getAttribute("user"))).getUserid());
		model.addAttribute("clubs",clubs);
		model.addAttribute("regClubs",regClubs);
		model.addAttribute("type","event");
		return "ListOfClubsMainPage";
	}

}
