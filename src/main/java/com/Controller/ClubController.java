package com.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.Bean.ClubBean;
import com.Bean.EventBannerImageBean;
import com.Bean.EventBean;
import com.Bean.SuggestionsBean;
import com.Bean.UserBean;
import com.Dao.ClubDao;
import com.Dao.EventDao;
import com.Dao.UserDao;
import com.services.EmailService;
import com.services.ImageUploadService;

@Controller
public class ClubController {

	@Autowired
	ClubDao clubDao;
	@Autowired
	EventDao eventDao;
	@Autowired
	ImageUploadService imgService;
	@Autowired
	EmailService emailService;
	@Autowired
	UserDao userDao;
	
	@GetMapping("/clubDashboardMain")
	public String clubDashboardMain(HttpSession session,Model model)
	{
		System.out.println(session.getAttribute("userType"));	
		List<ClubBean> members = clubDao.getAllMembersOfClub(((ClubBean) session.getAttribute("user")).getClubid());
		System.out.println(members + "    " + members.size());
		model.addAttribute("members",members);
		ClubBean club=clubDao.getClubById(((ClubBean) session.getAttribute("user")).getClubid());
		System.out.println(club + "    " + club.getClub_name());
		model.addAttribute("club",club);
		
		return "ClubDashBoard";
	}               

	@PostMapping("/clubSugestionSubmit")	
	public String clubSugestionSubmit(@ModelAttribute("club") int club,@ModelAttribute("user") int user,@ModelAttribute("suggestion") String suggestion)
	{
		System.out.println("INSIDE : "+club+user+ " : "+suggestion );
		clubDao.addTheUsersSuggestion(club,user,suggestion);
		System.out.println("INSIDE : "+club+user+ " : "+suggestion );
		return "redirect:/ViewClubs";
	}
	@GetMapping("/ClubAddTheEvent")
	public String ClubAddTheEvent()
	{
		
		return "CreateTheEvent";
	}
	
	@GetMapping("/ViewAllSuggestions")
	public String ViewAllSuggestions(HttpSession session,Model model)
	{
		List<SuggestionsBean> suggestions=clubDao.getAllSuggestions(((ClubBean)(session.getAttribute("user"))).getClubid()); 
			model.addAttribute("suggestions",suggestions);
		return "ViewAllSuggestions";
	}
	@GetMapping("/removeSuggestion/{pk}")
	public String removeSuggestion(@PathVariable("pk") int pk)
	{
		clubDao.removeSuggestion(pk);
		return "redirect:../ViewAllSuggestions";
	}
	
	@PostMapping("/addEvntDataClub")
	public String addEvntDataClub(@ModelAttribute("event") EventBean event,HttpSession session) throws IOException
	{
		
		event.setClubid(((ClubBean)session.getAttribute("user")).getClubid());
		int eventId=eventDao.addEventInfo(event);
		System.out.println(eventId + " EventId from add EventBean");
		if(!event.getMpHeroImg().isEmpty())
		{
			String pathIcon="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\event\\"+eventId+"\\HeroImage\\";
			imgService.uploadData(event.getMpHeroImg(), pathIcon);
			pathIcon="resources/images/event/"+eventId+"/HeroImage/"+event.getMpHeroImg().getOriginalFilename();			
			eventDao.addHeroImage(pathIcon,eventId);
		}
		
		List<UserBean> ub =clubDao.getAllRegisteredUsersOfClub(((ClubBean)session.getAttribute("user")).getClubid());
		
		for(UserBean cb :  ub)
		{
			String msg="Hi "+cb.getName().toUpperCase() +" , <br>"+
					((ClubBean)session.getAttribute("user")).getClub_name().toUpperCase()+" has sucessfully launched a new Event named '"+event.getEvent_title().toUpperCase()+"'"
					+ "  <br> If intrested please register for the event"
					+ "!<br><br> ClubEvent Team";
			String title="New Event Released !!";
			emailService.sendMail(cb.getEmail(), msg, title);
			
		}

		
		return "redirect:/clubDashboardMain";
	}
	
	
	@GetMapping("/ClubViewAllEvent")
	public String ClubViewAllEvent(HttpSession session,Model model)
	{
		ClubBean bean=(ClubBean)session.getAttribute("user");
		List<EventBean> events =eventDao.getAllEventsOfId(bean.getClubid());
		
		model.addAttribute("events", events);
//		for(EventBean event : events)
//		{
//			List<String> imgs=eventDao.getExtraImageOfEventId(event.getEventid());
//			event.setImg(imgs);
//		}
		return "listOfEvents";
	}
	
	@GetMapping("/ClubRegisteredUSeresOfEvent")
	public String ClubRegisteredUSeresOfEvent(HttpSession session,Model model)
	{
		ClubBean bean=(ClubBean)session.getAttribute("user");
		List<EventBean> events =eventDao.getAllEventsOfId(bean.getClubid());
		
		model.addAttribute("events", events);
		return "ViewRegisteredUserofEvents";
	}
	@GetMapping("/registeredUsersList/{eventid}")
	public String registeredUsersList(@PathVariable("eventid") int eventid,Model model)
	{
		List<UserBean> users= userDao.getAllUserswhoRegisteredEvent(eventid);
		model.addAttribute("users", users);
		return "listofUsersRegisteredEvent";
	}
	
	@GetMapping("/evntInfoFromListOfEvntClub/{eventid}")
	public String evntInfoFromListOfEvntClub(@PathVariable("eventid") int id,Model model)
	{
			System.out.println( "EOE WOW move to eventInfo");
		EventBean events =eventDao.getEventsOfId(id);	
			System.out.println(events.getEvent_title() + " move to eventInfo");
				
			List<EventBannerImageBean> imgs=eventDao.getExtraImageOfEventId(id);
			events.setBannerImg(imgs);
			System.out.println(events.getEvent_title() + " move to eventInfo" +imgs.size());
			model.addAttribute("events", events);
		
		return "EventInfoPage";
	}
	
	@GetMapping("/EventsFinished")
	public String EventsFinished(Model model)
	{
		
		List<EventBean> bean=eventDao.GetAllDeactivatedEvents();
		System.out.println(" -------------------------------------------------");
		System.out.println(bean.size());
		System.out.println(" -------------------------------------------------");
		
		model.addAttribute("events", bean);
		return "ListOfFinishedEvents";
	}
	
	@GetMapping("/SetTheResult/{eventid}")
	public String SetTheResult(@PathVariable("eventid")int eventid,Model model)
	{
		List<UserBean> users=userDao.getAllUserswhoRegisteredEvent(eventid);
		model.addAttribute("users",users);
		model.addAttribute("eventid",eventid);
		return "createTheResult";
	}
	@PostMapping("/setTheWinners")
	public String setTheWinners(@ModelAttribute("eventid") int eventid,@ModelAttribute("winner1")int winner1,@ModelAttribute("winner2")int winner2,@ModelAttribute("winner3")int winner3,Model model)
	{
		eventDao.setEventResultToTrue(eventid);
		eventDao.addTheWinners(winner1,winner2,winner3,eventid);
			model.addAttribute("","");
	
		return "redirect:/EventsFinished";
	}
}
