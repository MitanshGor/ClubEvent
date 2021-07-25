package com.Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.stereotype.Repository;

import com.Bean.AdminBean;
import com.Bean.ClubBean;
import com.Bean.LoginBean;
import com.Bean.SuggestionsBean;
import com.Bean.UserBean;

@Repository
public class ClubDao {

	@Autowired
	JdbcTemplate stmt;
	public ClubBean getClubOnLogedIn(LoginBean bean) {
		// TODO Auto-generated method stub
		try {	
			System.out.println(bean.getEmail());
			System.out.println(bean.getPassword());
			ClubBean bean1= stmt.queryForObject("select * from club_basic_detail where email='"+bean.getEmail()+"' and password='"+bean.getPassword()+"'", new BeanPropertyRowMapper<ClubBean>(ClubBean.class));
			System.out.println(bean1);
			return bean1;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	public int addCubDetails(final ClubBean bean) 
	{
		
		try
		{
			GeneratedKeyHolder holder = new GeneratedKeyHolder();
			stmt.update(new PreparedStatementCreator() {
				
				public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
					PreparedStatement pstmt = con.prepareStatement("insert into club_other_detail(president,vice_president,secretary,treasurer,president_email,vice_president_email,secretary_email,treasurer_email,club_detail,club_name,est_year) values (?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
	//,,,,,,,,,,,,			
					pstmt.setString(1, bean.getPresident());
					pstmt.setString(2, bean.getVice_president());	
					pstmt.setString(3, bean.getSecretary());	
					pstmt.setString(4, bean.getTreasurer());	
					pstmt.setString(5,bean.getPresident_email());	
					pstmt.setString(6, bean.getVice_president_email());	
					pstmt.setString(7,bean.getSecretary_email());	
					pstmt.setString(8,bean.getTreasurer_email());	
					pstmt.setString(9, bean.getClub_detail());	
					pstmt.setString(10,bean.getClub_name());	
					pstmt.setDate(11,bean.getEst_year());	
					System.out.println("AFTER DATE");
					return pstmt;
				}
			},holder);
			System.out.println((Integer)holder.getKeys().get("clubid"));
			return (Integer)holder.getKeys().get("clubid");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}

	public void addHeroImage(String string, int clubid) {
		System.out.println("addming hero image");
		stmt.update("update club_other_detail set hero_img=? where clubid=?",string,clubid);
	}

	public void addIconImage(String string, int clubid) {
		System.out.println("addming Icon image");
		
		stmt.update("update club_other_detail set icon_image=? where clubid=?",string,clubid);
	}

	public void addClubMember(ClubBean bean, int clubid) {
		stmt.update("insert into club_basic_Detail(clubid,name,email,password) values(?,?,?,?)",clubid,bean.getName(),bean.getEmail(),bean.getPassword());
	}

	public List<ClubBean> getAllClubs() {
		// TODO Auto-generated method stub
		return stmt.query("select * from club_other_detail", new BeanPropertyRowMapper<ClubBean>(ClubBean.class));
	}

	public ClubBean getClubById(int id) {
		try {
			ClubBean bean=stmt.queryForObject("select * from club_other_detail where clubid="+id, new BeanPropertyRowMapper<ClubBean>(ClubBean.class));
			return bean; 
						
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	return null;
		
	}

	public List<ClubBean> getAllMembersOfClub(int id) {
		
		try {
			List<ClubBean> bean=stmt.query("select * from club_basic_detail where clubid="+id, new BeanPropertyRowMapper<ClubBean>(ClubBean.class));

			return bean;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
		
}

	public void updateCubDetails(ClubBean bean) {
		
		System.out.println("update sucessfull");
		stmt.update("update club_other_detail set president=?,vice_president=?,secretary=?,treasurer=?,president_email=?,vice_president_email=?,secretary_email=?,treasurer_email=?,club_detail=? where clubid=?",bean.getPresident(),bean.getVice_president(),bean.getSecretary(),bean.getTreasurer(),bean.getPresident_email(),bean.getVice_president_email(),bean.getSecretary_email(),bean.getTreasurer_email(),bean.getClub_detail(),bean.getClubid());
		System.out.println("update sucessfull");
	}

	public void DetletAllMembers(int id) {
		
		stmt.update("delete from club_basic_detail where clubid="+id);
	}

	public void DeleteClub(int id) {
		stmt.update("delete from club_other_detail where clubid="+id);		
	}

	public ClubBean getInfoOfClub(int clubid) {
		// TODO Auto-generated method stub
		try {
		return stmt.queryForObject("select * from club_other_detail  where clubid="+clubid, new BeanPropertyRowMapper<ClubBean>(ClubBean.class));
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		}

	public List<UserBean> getAllRegisteredUsersOfClub(int clubid) {
		// TODO Auto-generated method stub
		try
		{
			
			return stmt.query("select * from user_basic join user_registrated_club on user_basic.userid=user_registrated_club.userid where user_registrated_club.clubid="+clubid, new BeanPropertyRowMapper<UserBean>(UserBean.class));
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	public void addTheUsersSuggestion(int club, int user, String suggestion) {
		
		try {
			stmt.update("INSERT INTO club_suggestions(userid, clubid, suggestion)	VALUES (?, ?, ?)",user,club,suggestion);
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public List<SuggestionsBean> getAllSuggestions(int clubid) {
		
		try {
			System.out.println(clubid);
			List<SuggestionsBean> sugestion = stmt.query("select * from club_suggestions join user_basic on club_suggestions.userid=user_basic.userid where club_suggestions.clubid="+clubid, new BeanPropertyRowMapper<SuggestionsBean>(SuggestionsBean.class));
			return sugestion;	
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public void removeSuggestion(int pk) {
		
		try {
		stmt.update("delete from club_suggestions where pk="+pk);
		}
		catch(Exception e)
		{
			
		}
		
		}
}
