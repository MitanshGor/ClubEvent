package com.Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Repository;

import com.Bean.ClubBean;
import com.Bean.EventBannerImageBean;
import com.Bean.EventBean;
import com.Bean.ExtraImage;

@Repository
public class EventDao {

	@Autowired
	JdbcTemplate stmt;
	
	public int addEventInfo(final EventBean event) {
			try
			{
				GeneratedKeyHolder holder = new GeneratedKeyHolder();
				stmt.update(new PreparedStatementCreator() {
					
					public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
						PreparedStatement pstmt = con.prepareStatement("insert into event_table(event_start_date,event_end_date,reg_start_date,reg_end_Date,clubid,event_title,event_desc,only_member) values(?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
						pstmt.setTimestamp(1,Timestamp.valueOf(event.getEvent_start_date()));
						pstmt.setTimestamp(2,Timestamp.valueOf(event.getEvent_end_date()));	
						pstmt.setTimestamp(3, Timestamp.valueOf(event.getReg_start_date()));	
						pstmt.setTimestamp(4,Timestamp.valueOf( event.getReg_end_date()));	
						pstmt.setInt(5, event.getClubid());	
						pstmt.setString(6, event.getEvent_title());	
						pstmt.setString(7, event.getEvent_desc());	
						pstmt.setBoolean(8, event.isOnly_member());	
					
						return pstmt;
					}
				},holder);
				System.out.println((Integer)holder.getKeys().get("eventid"));
				return (Integer)holder.getKeys().get("eventid");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return 0;
		}


	public void addHeroImage(String pathIcon, int eventId) {
		
		stmt.update("update event_table set hero_img = ? where eventid=?",pathIcon,eventId);
		System.out.println("valla valla");
	}


	public List<EventBean> getAllEventsOfId(int clubid) 
	{
		try {
		List<EventBean> lb= stmt.query("select * from event_table where clubid="+clubid,new  BeanPropertyRowMapper<EventBean>(EventBean.class));
		
		return lb;
		}catch(Exception e)
		{
		}
		return null;
	}


	public List<EventBannerImageBean> getExtraImageOfEventId(int eventid) 
	{
		try {
			
			List<EventBannerImageBean> lb= stmt.query("select * from event_other_image where eventid="+eventid,new  BeanPropertyRowMapper<EventBannerImageBean>(EventBannerImageBean.class));
			
			return lb;
			}catch(Exception e)
			{
			}
			
		System.out.println(  "EVENT BANNER IMAGE move to eventInfo NULL");
			return null;
	}


	public EventBean getEventsOfId(int id) {
		try {
			EventBean lb= stmt.queryForObject("select * from event_table where eventid="+id,new  BeanPropertyRowMapper<EventBean>(EventBean.class));
			return lb;
			}catch(Exception e)
			{
			}
		System.out.println("wow in getEventOfId NULL");
		
			return null;
		}


	public void deleteTheHammerImage(int bannerId) {
	
		stmt.update("delete from event_other_image where bannerid="+bannerId);
	}


	public void addBannerImagetoEvent(String path, int id) {
		
		stmt.update("insert into event_other_image(img,eventid) values(?,?)",path,id);	
	}

	
	
	public void deleteAllBannerImges(int id) {
		stmt.update("delete from event_other_image where eventid="+id);
			
	}
	
	
	public void deleteEventInfo(int id) {
		stmt.update("delete from event_table where eventid="+id);
	}
	
	
	public void updateEventInfo(EventBean event) {
		stmt.update("update  event_table  set event_start_date=?, event_end_date = ?,reg_start_date=?,reg_end_Date=?,event_title=?,event_desc=?,only_member=? where eventid=?",event.getEvent_start_date(),event.getEvent_end_date(),event.getReg_start_date(),event.getReg_end_date(),event.getEvent_title(),event.getEvent_desc(),event.isOnly_member(),event.getEventid());
	}


	public void updateHeroImage(String pathIcon, int eventid) {
		// TODO Auto-generated method stub
		stmt.update("update event_table set hero_img=? where eventid=?",pathIcon,eventid);
	}


	public void regsiterEventforUser(int eventid, int userid, Date date) {
		stmt.update("insert into user_event_register_table(eventid,userid,registration_date) values (?,?,?)",eventid,userid,date);
	}


	public void unRegisterEvent(int eventid, int userid) {
		// TODO Auto-generated method stub
		try {
			stmt.update("delete from user_event_register_table where eventid = ? and userid=?",eventid,userid);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	public List<EventBean> GetAllDeactivatedEvents() {

		try {
	
			return stmt.query("select * from event_table where event_end_date < current_date and results=false", new BeanPropertyRowMapper<EventBean>(EventBean.class));
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}


	public void setEventResultToTrue(int eventid) {
		// TODO Auto-generated method stub
		stmt.update("update event_table set results=true where eventid="+eventid);
	}


	public void addTheWinners(int winner1, int winner2, int winner3,int eventid) {
		// TODO Auto-generated method stub
		stmt.update("insert into event_winner_table(winner1id,winner2id,winner3id,eventid) values(?,?,?,?)",winner1,winner2,winner3,eventid);
	}


	public List<ExtraImage> getAllExtraImages() {
		
		try {
			List<ExtraImage> list=stmt.query("select * from event_other_image where eventid=0", new BeanPropertyRowMapper<ExtraImage>(ExtraImage.class));
			System.out.println("((((((((((((((   "+list.size() + " , " +list.get(1).getImg());
			return list;
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return  null;
	}
}
