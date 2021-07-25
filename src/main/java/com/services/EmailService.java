package com.services;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
 



@Service
public class EmailService {

	// firstName email password
	public void sendMail(String email,String msg,String title) {

		String to = email; // to address
		final String from = "testjap517@gmail.com";// from address
		final String appPassword = "rrgqvpivvgtadcoh";
		Properties prop = System.getProperties();

		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.ssl.enable", "false");

		Session session = Session.getInstance(prop, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication(from, appPassword);
			}
		});

		session.setDebug(true);

		try {
			MimeMessage message = new MimeMessage(session);

			message.setFrom(new InternetAddress(from));
			message.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(title);
			message.setContent(msg, "text/html");

			Transport.send(message);

			System.out.println("email sent.............");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("something went wrong...........");
		}

		}
	
	

	
}