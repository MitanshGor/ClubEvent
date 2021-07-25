package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Bean.AdminBean;
import com.Bean.LoginBean;
import com.Bean.SignupBean;
import com.Bean.UserBean;

@Repository
public class AdminDao {

	@Autowired
	JdbcTemplate stmt;
	
	public AdminBean getAdminOnLogedIn(LoginBean bean) {
		// TODO Auto-generated method stub
		try {	
			System.out.println(bean.getEmail());
			System.out.println(bean.getPassword());
			AdminBean bean1= stmt.queryForObject("select * from admin_basic_detail where email='"+bean.getEmail()+"' and password='"+bean.getPassword()+"'", new BeanPropertyRowMapper<AdminBean>(AdminBean.class));
			System.out.println(bean1);
			return bean1;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	public boolean addAdmin(SignupBean bean) {
		
		try
		{
			stmt.update("insert into admin_basic_detail(email,name,password,phone) values(?,?,?,?)",bean.getEmail(),bean.getName(),bean.getPassword(),bean.getPhone());
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	public List<AdminBean> getAllAdmins() {
		
		try
		{
		List<AdminBean> bean1= stmt.query("select * from admin_basic_detail", new BeanPropertyRowMapper<AdminBean>(AdminBean.class));
			return bean1;
		}
		catch(Exception e)
		{
			
		}
		return null;
	}
	public void updateAdmin(SignupBean bean) {
		System.out.println(" adminid = "+bean.getUserid());
		stmt.update("update admin_basic_detail set name=?,email=?,password=?,phone=? where adminid=?",bean.getName(),bean.getEmail(),bean.getPassword(),bean.getPhone(),bean.getUserid());
	}
}
