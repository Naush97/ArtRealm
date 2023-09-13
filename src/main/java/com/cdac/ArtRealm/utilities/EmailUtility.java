package com.cdac.ArtRealm.utilities;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailUtility {
	@Autowired
	private JavaMailSender sender;
	
	public void sendItinerary(String toAddress ,String filePath) {
		  MimeMessage message = sender.createMimeMessage();
		
		  try {
		        MimeMessageHelper messageHelper = new MimeMessageHelper(message,true);
		        messageHelper.setTo(toAddress);
		        messageHelper.setSubject("Itinerary of Flight");
		        messageHelper.setText("Please find the attached");
		        messageHelper.addAttachment("Itinerary ",new File(filePath));

		        sender.send(message);
		      } catch (MessagingException e) {
		        e.printStackTrace();
		      }
		   }

		}

