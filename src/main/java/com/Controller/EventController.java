package com.Controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Bean.ClubBean;
import com.Bean.EventBean;
import com.Dao.EventDao;
import com.services.ImageUploadService;

@Controller
public class EventController {

	
	@Autowired
	EventDao eventDao;
	@Autowired
	ImageUploadService imgService;
	
	@GetMapping("/deleteTheEventBannerImageClub/{eventid_bannerId}")
	public String deleteTheEventBannerImageClub(@PathVariable("eventid_bannerId") String eventid_bannerId)
	{
		int eventid=Integer.parseInt(eventid_bannerId.substring(0,eventid_bannerId.indexOf("_")));  
		int bannerId=Integer.parseInt(eventid_bannerId.substring(eventid_bannerId.indexOf("_")+1,eventid_bannerId.length()));  
		System.out.println(eventid + "---" + bannerId);
		eventDao.deleteTheHammerImage(bannerId);
		return "redirect:../evntInfoFromListOfEvntClub/"+eventid;
	}
	
	@PostMapping("/AddTheEventBannerImageClub/{eventid}")
	public String AddTheEventBannerImageClub(@PathVariable("eventid") int id,@RequestParam("bannerimg") MultipartFile file) throws IOException
	{
		String path="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\event\\"+id+"\\BannerImage\\";
		imgService.uploadData(file, path);
		path="resources/images/event/"+id+"/BannerImage/"+file.getOriginalFilename();			
		eventDao.addBannerImagetoEvent(path,id);
		return "redirect:../evntInfoFromListOfEvntClub/"+id;
	}
	
	@GetMapping("/DeleteFromListOfEvntClub/{eventid}")
	public String DeleteFromListOfEvntClub(@PathVariable("eventid") int id) throws IOException
	{
		System.out.println("valla vall");
		String path="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\event\\"+id;
		imgService.deleteFile(path);
		eventDao.deleteAllBannerImges(id);
		eventDao.deleteEventInfo(id);
		System.out.println("valla vall");
		return "redirect:../ClubViewAllEvent";
	}
	
	
	@GetMapping("/UpdateFromListOfEvntClub/{eventid}")
	public String UpdateFromListOfEvntClub(@PathVariable("eventid") int eventid,Model model)
	{
		EventBean bean = eventDao.getEventsOfId(eventid);
		model.addAttribute("event", bean);
		return "EditEventDetails";
	}

	@PostMapping("/UpdateTheEventDetails")
	public String addEvntDataClub(@ModelAttribute("event") EventBean event,HttpSession session) throws IOException
	{
		
		event.setClubid(((ClubBean)session.getAttribute("user")).getClubid());
		
		
		eventDao.updateEventInfo(event);
		System.out.println(event.getEventid() + " EventId from add EventBean");
		if(!event.getMpHeroImg().isEmpty())
		{
			String pathIcon="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\event\\"+event.getEventid()+"\\HeroImage\\";
			imgService.uploadData(event.getMpHeroImg(), pathIcon);
			pathIcon="resources/images/event/"+event.getEventid()+"/HeroImage/"+event.getMpHeroImg().getOriginalFilename();			
			eventDao.updateHeroImage(pathIcon,event.getEventid());
		}
		return "redirect:/ClubViewAllEvent";
	}


}

