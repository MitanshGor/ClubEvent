package com.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.Bean.AdminBean;
import com.Bean.ClubBean;
import com.Bean.ExtraImage;
import com.Bean.SignupBean;
import com.Bean.UserBean;
import com.Dao.AdminDao;
import com.Dao.ClubDao;
import com.Dao.EventDao;
import com.Dao.UserDao;
import com.services.ImageUploadService;

@Controller
public class AdminController {

	@Autowired
	AdminDao adminDao;
	@Autowired
	ClubDao clubDao;
	@Autowired
	ImageUploadService imgService;
	@Autowired
	UserDao userDao;
	@Autowired
	EventDao eventDao;
	
	@GetMapping("/adminDashboardMain")
	public String adminDashboardMain(Model model)
	{
		System.out.println("**********************admin Dashboard Main");
		
		List<ExtraImage> images=eventDao.getAllExtraImages();
		model.addAttribute("images",images);
		
		return "AdminDashBoard";
	}

	
	
	@GetMapping("/addAdmin")
	public String addAdmin()
	{
		return "addAdminForm";
	}
	
	@GetMapping("/updateMyAdminDetails")
	public String updateMyAdminDetails(Model model,HttpSession session)
	{
		AdminBean bean=new AdminBean();
		bean.setAdminid(((AdminBean)session.getAttribute("user")).getAdminid());
		bean.setEmail(((AdminBean)session.getAttribute("user")).getEmail());
		bean.setName(((AdminBean)session.getAttribute("user")).getName());
		bean.setPassword(((AdminBean)session.getAttribute("user")).getPassword());
		bean.setPhone(((AdminBean)session.getAttribute("user")).getPhone());
		
		
		
		model.addAttribute("updateAdmin","updateAdmin");
		model.addAttribute("admin",bean);
		return "addAdminForm";
	}
	@PostMapping("/updateAdminDetails")
	public String updateAdminDetails(@ModelAttribute("user") SignupBean bean)
	{
		
		adminDao.updateAdmin(bean);
		return "redirect:/LoginPage";
	}
	
	      
	@PostMapping("/addAdminDetails")
	public String addAdminDetailsFor(Model model,@ModelAttribute("user") SignupBean bean)
	{
		boolean b= adminDao.addAdmin(bean);
		if(b==false)
		{
			return "addAdminForm";		
		}
		else
		{
			System.out.println("adminDashborard--------------------------");
			return "redirect:/adminDashboardMain";			
		}
	}

	@GetMapping("/viewAllAdmin")
	public String viewAllAdmins(Model model)
	{
		List<AdminBean> admins=adminDao.getAllAdmins();
		model.addAttribute("admins", admins);
		return "listOfAdmins";
	}
	
	@GetMapping("/viewAdminDetails")
	public String viewAdminDetails()
	{
		return "viewMyDetailAdmin";
	}
	
	@GetMapping("/adminAddTheClb")
	public String adminAddTheClb()
	{
		return "CreateTheClub";
	}
	
	@PostMapping("/addClbDataAdmin")
	public String addClubData(@ModelAttribute("club") ClubBean bean) throws IOException
	{
		
		long millis=System.currentTimeMillis();  
	    java.sql.Date date=new java.sql.Date(millis);  
		bean.setEst_year(date);
		System.out.println("add club Data  get club id  : "+"EMtered into club data");
		
		int clubid=clubDao.addCubDetails(bean);
		System.out.println("add club Data  get club id  : "+clubid);
		if(clubid!=0)
		{
				clubDao.addClubMember(bean,clubid);
				System.out.println(bean.getMpHeroImage());
				System.out.println((bean.getMpIconImage() instanceof  MultipartFile)  + " ---------> "+ bean.getMpIconImage());
				List<MultipartFile> files = new ArrayList<MultipartFile>();
				 files.add(bean.getMpHeroImage());
				 files.add(bean.getMpIconImage());
				 
					if(bean.getMpHeroImage()!=null)
					{
						MultipartFile multipartFile=files.get(0);
					            	System.out.println("--------------------------------   multipart file ");
					            	String path="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\club\\"+clubid+"\\HeroImage\\";
					            	clubDao.addHeroImage("resources/images/club/"+clubid+"/HeroImage/"+multipartFile.getOriginalFilename(),clubid);
					            	System.out.println("--------------------------------   multipart file ");
										imgService.uploadData(multipartFile, path);
				                	System.out.println("--------------------------------   multipart file ");
								}
					if(bean.getMpIconImage()!=null)
					{
						MultipartFile multipartFile=files.get(1);
					            	System.out.println("--------------------------------   multipart file ");
					            	String path="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\club\\"+clubid+"\\IconImage\\";
					                clubDao.addIconImage("resources/images/club/"+clubid+"/IconImage/"+multipartFile.getOriginalFilename(),clubid);
					                imgService.uploadData(multipartFile, path);
					}
		}
		else
		{
//			 printmessage upload insucessfull
		}
		return "redirect:/adminDashboardMain";
	}
	
	
	@GetMapping("/ViewAllClbAdmin")
	public String ViewAllClub(Model model)
	{
		List<ClubBean> clubs=clubDao.getAllClubs();
		model.addAttribute("clubs",clubs);
		return "ListOfClubs";
	}
	
	
	@GetMapping("/clbInfoFromListOfClbAdmin/{clubid}")
	public String clubInfoFromListOfClbAdmin(Model model,@PathVariable("clubid") int id)
	{
		ClubBean bean=clubDao.getClubById(id);
		List<ClubBean> members=clubDao.getAllMembersOfClub(id);
		model.addAttribute("members",members);
		model.addAttribute("club",bean);
		
		return "ClubInfoPage";
	}
	
	@GetMapping("/UpdateFromListOfClbAdmin/{clubid}")
	public String UpdateFromListOfClbAdmin(Model model,@PathVariable("clubid") int id)
	{
		ClubBean bean=clubDao.getClubById(id);
		model.addAttribute("club",bean);
		return "EditClubDetails";
	}
	@PostMapping("EditClbDataAdmin")
	public String EditClbDataAdmin(@ModelAttribute("club") ClubBean bean) throws Exception
	{
		
		clubDao.updateCubDetails(bean);
		System.out.println("wfsafgsaf");
		if(!bean.getMpHeroImage().isEmpty())
		{
			String pathHero="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\club\\"+bean.getClubid()+"\\HeroImage\\";
			imgService.deleteFile( pathHero);
			imgService.uploadData(bean.getMpHeroImage(), pathHero);
			pathHero="resources/images/club/"+bean.getClubid()+"/HeroImage/"+bean.getMpHeroImage().getOriginalFilename();
			clubDao.addHeroImage(pathHero, bean.getClubid());
		}
		if(!bean.getMpIconImage().isEmpty())
		{
			String pathIcon="C:\\Users\\MITANSH\\eclipse-workspace\\AdvanceJavaProject\\clubEvent\\src\\main\\webapp\\resources\\images\\club\\"+bean.getClubid()+"\\IconImage\\";
			imgService.deleteFile(pathIcon);
			imgService.uploadData(bean.getMpIconImage(), pathIcon);
			pathIcon="resources/images/club/"+bean.getClubid()+"/IconImage/"+bean.getMpIconImage().getOriginalFilename();
			clubDao.addIconImage(pathIcon, bean.getClubid());
		}
		System.out.println("reached Here QQQQ");
		return "redirect:/ViewAllClbAdmin";
	}
	
	@GetMapping("/DeleteFromListOfClbAdmin/{clubid}")
	public String DeleteFromListOfClbAdmin(@PathVariable("clubid") int id)
	{
		clubDao.DetletAllMembers(id);
		clubDao.DeleteClub(id);
		return "redirect:/ViewAllClbAdmin";
	}

	@GetMapping("/nonRegisteredUser")
	public String nonRegisteredUser(Model model)
	{
		List<UserBean> bean= userDao.getAllUnRegisteredUsers();
		model.addAttribute("users",bean);
		model.addAttribute("type","nonRegisterAdmin");
		
		return "listofUsers";
	}

	@GetMapping("/RegisteredUser")
	public String RegisteredUser(Model model)
	{
		List<UserBean> bean= userDao.getAllRegisteredUsers();
		model.addAttribute("users",bean);
		model.addAttribute("type","RegisterAdmin");
	
		return "listofUsers";
	}
}
