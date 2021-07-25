package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Bean.ClubBean;
import com.Bean.LoginBean;
import com.Bean.SignupBean;
import com.Bean.UserBean;
import com.Bean.UserRegisteredClubEvent;

@Repository
public class UserDao 
{
	@Autowired
	JdbcTemplate stmt;

	public void addSignupUser(SignupBean user) 
	{
		stmt.update("insert into user_basic(email,password,name,phone) values(?,?,?,?)",user.getEmail(),user.getPassword(),user.getName(),user.getPhone());
	}

	public UserBean getuserOnLogedIn(LoginBean bean) {
		// TODO Auto-generated method stub
		try {	
			System.out.println(bean.getEmail());
			System.out.println(bean.getPassword());
			UserBean bean1= stmt.queryForObject("select * from user_basic where email='"+bean.getEmail()+"' and password='"+bean.getPassword()+"'", new BeanPropertyRowMapper<UserBean>(UserBean.class));
			System.out.println(bean1);
			return bean1;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	public void regsiterUserforClub(int clubid, UserBean attribute) {
		
		stmt.update("insert into user_registrated_club(userid,clubid) values(?,?)",attribute.getUserid(),clubid);
	}

	public List<UserRegisteredClubEvent> getAllRegsiteredClubsOfUser(int userid) {
		
		try
		{
			return stmt.query("select * from user_registrated_club where userid="+userid,new BeanPropertyRowMapper<UserRegisteredClubEvent>(UserRegisteredClubEvent.class));
		}
		catch(Exception e)
		{
			
		}
		return null;
	}

	public void unRegisterTheClubforUser(int clubid, int userid) {
		
		stmt.update("delete from user_registrated_club where clubid = ? and userid = ?",clubid,userid);
	}

	public List<UserRegisteredClubEvent> getAllRegsiteredEventsOfUser(int userid) {
		try
		{
			System.out.println(userid);
			return stmt.query("select * from user_event_register_table where userid = "+userid,new BeanPropertyRowMapper<UserRegisteredClubEvent>(UserRegisteredClubEvent.class));
		}
		catch (Exception e) {
		
			e.printStackTrace();
		}
		return null;
	}

	public List<UserBean> getAllUnRegisteredUsers() {
		// TODO Auto-generated method stub
			try {
				return stmt.query("select * from user_basic where userid not in (select distinct userid from user_event_register_table)", new BeanPropertyRowMapper<UserBean>(UserBean.class));
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
	}
	
	public List<UserBean> getAllRegisteredUsers() {
		// TODO Auto-generated method stub
			try {
				return stmt.query("select * from user_basic where userid in (select distinct userid from user_event_register_table)", new BeanPropertyRowMapper<UserBean>(UserBean.class));
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
	}

	public List<UserBean> getAllUserswhoRegisteredEvent(int eventid) {
		// TODO Auto-generated method stub
		try {
			return stmt.query("select * from user_basic where userid in(select userid from user_event_register_table where eventid = "+eventid+")", new BeanPropertyRowMapper<UserBean>(UserBean.class));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
}