package com.Bean;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class EventBean {


	int eventid;
	int clubid;
	String event_title;
	String event_desc;
	String hero_img;
	boolean only_member;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")	
	LocalDateTime event_start_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")	
	LocalDateTime event_end_date;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")	
	LocalDateTime reg_start_date;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")	
	LocalDateTime reg_end_date;
	boolean results;
	
	
	
	public boolean isResults() {
		return results;
	}
	public void setResults(boolean results) {
		this.results = results;
	}
	public int getEventid() {
		return eventid;
	}
	public void setEventid(int eventid) {
		this.eventid = eventid;
	}
	public int getClubid() {
		return clubid;
	}
	public void setClubid(int clubid) {
		this.clubid = clubid;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getEvent_desc() {
		return event_desc;
	}
	public void setEvent_desc(String event_desc) {
		this.event_desc = event_desc;
	}
	public String getHero_img() {
		return hero_img;
	}
	public void setHero_img(String hero_img) {
		this.hero_img = hero_img;
	}
	public boolean isOnly_member() {
		return only_member;
	}
	public void setOnly_member(boolean only_member) {
		this.only_member = only_member;
	}


	public LocalDateTime getEvent_start_date() {
		return event_start_date;
	}
	public void setEvent_start_date(LocalDateTime event_start_date) {
		this.event_start_date = event_start_date;
	}
	public LocalDateTime getEvent_end_date() {
		return event_end_date;
	}
	public void setEvent_end_date(LocalDateTime event_end_date) {
		this.event_end_date = event_end_date;
	}
	public LocalDateTime getReg_start_date() {
		return reg_start_date;
	}
	public void setReg_start_date(LocalDateTime reg_start_date) {
		this.reg_start_date = reg_start_date;
	}
	public LocalDateTime getReg_end_date() {
		return reg_end_date;
	}
	public void setReg_end_date(LocalDateTime reg_end_date) {
		this.reg_end_date = reg_end_date;
	}


	int winner1id;
	int winner2id;
	int winner3id;
	public int getWinner1id() {
		return winner1id;
	}
	public void setWinner1id(int winner1id) {
		this.winner1id = winner1id;
	}
	public int getWinner2id() {
		return winner2id;
	}
	public void setWinner2id(int winner2id) {
		this.winner2id = winner2id;
	}
	public int getWinner3id() {
		return winner3id;
	}
	public void setWinner3id(int winner3id) {
		this.winner3id = winner3id;
	}
	
	List<EventBannerImageBean> bannerImg;
	public List<EventBannerImageBean> getBannerImg() {
		return bannerImg;
	}
	public void setBannerImg(List<EventBannerImageBean> bannerImg) {
		this.bannerImg = bannerImg;
	}


	MultipartFile mpHeroImg;
	public MultipartFile getMpHeroImg() {
		return mpHeroImg;
	}
	public void setMpHeroImg(MultipartFile mpHeroImg) {
		this.mpHeroImg = mpHeroImg;
	}

}
