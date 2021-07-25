package com.Bean;

import java.sql.Date;

public class UserRegisteredClubEvent {

	
	int clubid;
	int eventid;
	int userid;
	Date registration_Date;
	
	
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Date getRegistration_Date() {
		return registration_Date;
	}
	public void setRegistration_Date(Date registration_Date) {
		this.registration_Date = registration_Date;
	}
	public int getClubid() {
		return clubid;
	}
	public void setClubid(int clubid) {
		this.clubid = clubid;
	}
	public int getEventid() {
		return eventid;
	}
	public void setEventid(int eventid) {
		this.eventid = eventid;
	}
	
	
	
}
