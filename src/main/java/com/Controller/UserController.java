package com.Controller;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import javax.naming.LinkRef;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.Bean.ClubBean;
import com.Bean.EventBean;
import com.Bean.ExtraImage;
import com.Bean.SignupBean;
import com.Bean.UserBean;
import com.Bean.UserRegisteredClubEvent;
import com.Dao.ClubDao;
import com.Dao.EventDao;
import com.Dao.UserDao;
import com.services.EmailService;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;
	@Autowired
	ClubDao clubDao;
	@Autowired
	EventDao eventDao;
	@Autowired
	EmailService emailService;
	@PostMapping("/signUser")
	public String signUser(@ModelAttribute("user") SignupBean bean)
	{
		userDao.addSignupUser(bean);
		return "LoginPage";
	}
	@GetMapping("userDashboardMain")
	public String methodName(Model model )
	{
		List<ExtraImage> images=eventDao.getAllExtraImages();
		model.addAttribute("images",images);
		System.out.println("---------------"+images.size() + images.get(0).getImg() + " , "+ images.get(2).getImg());
		System.out.println();
		return "MainPage";
	}

	
	
	@GetMapping("/clubRegisterForUser/{clubid}")
	public String clubRegisterForUser(@PathVariable("clubid") int clubid,HttpSession session)
	{
		List<UserRegisteredClubEvent> urc=userDao.getAllRegsiteredClubsOfUser(((UserBean)session.getAttribute("user")).getUserid());
		boolean bool=true;
		for(UserRegisteredClubEvent u : urc)
		{
			if(u.getClubid()==clubid)
			{
				bool=false;
				break;
			}
		}
//		clubRegisterForUser/${club.clubid}
		if(bool)
		{
			userDao.regsiterUserforClub(clubid,(UserBean)session.getAttribute("user"));
			ClubBean cb=clubDao.getClubById(clubid);
			String msg="Hi "+((UserBean)session.getAttribute("user")).getName().toUpperCase() +" , <br>"+"Registration of  '"+cb.getClub_name().toUpperCase()+"'  Club is Sucessfull ! <br><br> ClubEvent Team";
			String title="Registration Successful";
			emailService.sendMail(((UserBean)session.getAttribute("user")).getEmail(), msg, title);
		}
		return "redirect:/ViewClubs";
	}
	
	@GetMapping("/UsersRegisteredClubs")
	public String UsersRegisteredClubs(HttpSession session,Model model)
	{
		List<UserRegisteredClubEvent> urc=userDao.getAllRegsiteredClubsOfUser(((UserBean)session.getAttribute("user")).getUserid());
		List<ClubBean> ListOfClubs=new ArrayList();
		for (UserRegisteredClubEvent u : urc)
			{
				ClubBean bean=clubDao.getInfoOfClub(u.getClubid());
				ListOfClubs.add(bean);
			}
		model.addAttribute("clubs",ListOfClubs);
		return "regsiteredClubsOfUsers";
	}
	
	@GetMapping("/UsersRegisteredEvents")
	public String UsersRegisteredEvents(HttpSession session,Model model)
	{
		List<UserRegisteredClubEvent> urc=userDao.getAllRegsiteredEventsOfUser(((UserBean)session.getAttribute("user")).getUserid());
		List<EventBean> ListOfClubs=new ArrayList();
		for (UserRegisteredClubEvent u : urc)
			{
				EventBean bean=eventDao.getEventsOfId(u.getEventid());
				ListOfClubs.add(bean);
			}
		model.addAttribute("events",ListOfClubs);
		model.addAttribute("type","registeredEvent");
		return "listOfEvents";
	}
	
	@GetMapping("/UnRegisterTheClubofUser/{clubid}")
	public String UnRegisterTheClubofUser(@PathVariable("clubid") int clubid,HttpSession session)
	{
		userDao.unRegisterTheClubforUser(clubid,((UserBean)session.getAttribute("user")).getUserid());
		ClubBean cb=clubDao.getClubById(clubid);
		String msg="Hi "+((UserBean)session.getAttribute("user")).getName().toUpperCase() +" , <br>"+"Un-Registration of  '"+cb.getClub_name().toUpperCase()+"'  Club is Sucessfull ! <br> You can only get notification of the clubs and its events if you are Registered !<br><br> ClubEvent Team";
		String title="Un-Registration Successful";
		emailService.sendMail(((UserBean)session.getAttribute("user")).getEmail(), msg, title);

		return "redirect:../UsersRegisteredClubs";
	}
	
	
	@GetMapping("/viewEventsOfClub/{clubid}")
	public String ClubViewAllEvent(@PathVariable("clubid") int clubid,HttpSession session,Model model)
	{
		
		List<EventBean> events =eventDao.getAllEventsOfId(clubid);
	
		System.out.println("------------"+session.getAttribute("userType")+"-----------------");
		model.addAttribute("events", events);
		model.addAttribute("type","event");
		
//		for(EventBean event : events)
//		{
//			List<String> imgs=eventDao.getExtraImageOfEventId(event.getEventid());
//			event.setImg(imgs);
//		}
		return "listOfEvents";
	}
	
	
	@GetMapping("/evntRegister/{eventid}")
	public String evntRegister(@PathVariable("eventid") int eventid,HttpSession session)
	{
			
		List<UserRegisteredClubEvent> urc=userDao.getAllRegsiteredEventsOfUser(((UserBean)session.getAttribute("user")).getUserid());
		boolean bool=true;
		for(UserRegisteredClubEvent u : urc)
		{
			System.out.println(u.getEventid() + " - " + eventid);
			if(u.getEventid()==eventid)
			{
				System.out.println(false + " and break");
				bool=false;
				break;
			}
		}
//		clubRegisterForUser/${club.clubid}
		if(bool)
		{
			eventDao.regsiterEventforUser(eventid,((UserBean)session.getAttribute("user")).getUserid(),new Date(System.currentTimeMillis()));
			EventBean cb=eventDao.getEventsOfId(eventid);
			String msg="Hi "+((UserBean)session.getAttribute("user")).getName().toUpperCase() +" , <br>"+"Registration of  '"+cb.getEvent_title().toUpperCase()+"'  Event is Sucessfull ! <br><br> ClubEvent Team";
			String title="Registration Successful";
			emailService.sendMail(((UserBean)session.getAttribute("user")).getEmail(), msg, title);
		
		
		}
			return "redirect:../ViewEvents";
	}
	
	@GetMapping("/evntUnRegister/{eventid}")
	public String evntUnRegister(@PathVariable("eventid") int eventid,HttpSession session)
	{
		eventDao.unRegisterEvent(eventid,((UserBean)session.getAttribute("user")).getUserid());
		
		EventBean cb=eventDao.getEventsOfId(eventid);
		String msg="Hi "+((UserBean)session.getAttribute("user")).getName().toUpperCase() +" , <br>"+" Un-Registration of  '"+cb.getEvent_title().toUpperCase()+"'  Event is Sucessfull !  <br> You can only get notification of the Events  if you are Registered !<br><br> ClubEvent Team";
		String title="un-Registration Successful";
		emailService.sendMail(((UserBean)session.getAttribute("user")).getEmail(), msg, title);

		return "redirect:../ViewEvents";
	}
}
//	@PostMapping("/signupperson")
//	public String signupUser(Model model,@ModelAttribute("user") SignupBean user)
//	{
//		List<UserRegisteredClub> urc=userDao.getAllRegsiteredClubsOfUser(user.getUserid());
//		List<List<ClubBean>> ListOfClubs=new ArrayList();
//		for (UserRegisteredClub u : urc)
//		{
//			List<ClubBean> bean=clubDao.getInfoOfClub(u.getClubid());
//			ListOfClubs.add(bean);
//		}
//		return "redirect:/LoginPage";
//	}