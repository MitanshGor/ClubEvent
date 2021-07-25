package com.Bean;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ClubBean {

	int clubid;
	String name;
	
	String email;
	String password;
	public int getClubid() {
		return clubid;
	}
	public void setClubid(int clubid) {
		this.clubid = clubid;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	String hero_img;
	String president;
	String vice_president;
	String secretary;
	String treasurer;
	String president_email;
	String vice_president_email;
	String secretary_email;
	String treasurer_email;
	String icon_image;
	String club_detail;
	String club_name;
	Date est_year;
	
	String img;
	
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getHero_img() {
		return hero_img;
	}
	public void setHero_img(String hero_img) {
		this.hero_img = hero_img;
	}
	public String getPresident() {
		return president;
	}
	public void setPresident(String president) {
		this.president = president;
	}
	public String getVice_president() {
		return vice_president;
	}
	public void setVice_president(String vice_president) {
		this.vice_president = vice_president;
	}
	public String getSecretary() {
		return secretary;
	}
	public void setSecretary(String secretary) {
		this.secretary = secretary;
	}
	public String getTreasurer() {
		return treasurer;
	}
	public void setTreasurer(String treasurer) {
		this.treasurer = treasurer;
	}
	public String getPresident_email() {
		return president_email;
	}
	public void setPresident_email(String president_email) {
		this.president_email = president_email;
	}
	public String getVice_president_email() {
		return vice_president_email;
	}
	public void setVice_president_email(String vice_president_email) {
		this.vice_president_email = vice_president_email;
	}
	public String getSecretary_email() {
		return secretary_email;
	}
	public void setSecretary_email(String secretary_email) {
		this.secretary_email = secretary_email;
	}
	public String getTreasurer_email() {
		return treasurer_email;
	}
	public void setTreasurer_email(String treasurer_email) {
		this.treasurer_email = treasurer_email;
	}
	public String getIcon_image() {
		return icon_image;
	}
	public void setIcon_image(String icon_image) {
		this.icon_image = icon_image;
	}
	public String getClub_detail() {
		return club_detail;
	}
	public void setClub_detail(String club_detail) {
		this.club_detail = club_detail;
	}
	public String getClub_name() {
		return club_name;
	}
	public void setClub_name(String club_name) {
		this.club_name = club_name;
	}
	public Date getEst_year() {
		return est_year;
	}
	public void setEst_year(Date date) {
		this.est_year = date;
	}
	
	
	
	MultipartFile mpIconImage;
	MultipartFile  mpHeroImage;
	public MultipartFile getMpIconImage() {
		return mpIconImage;
	}
	public void setMpIconImage(MultipartFile mpIconImage) {
		this.mpIconImage = mpIconImage;
	}
	public MultipartFile getMpHeroImage() {
		return mpHeroImage;
	}
	public void setMpHeroImage(MultipartFile mpHeroImage) {
		this.mpHeroImage = mpHeroImage;
	}
	
	
	
	
		

}
