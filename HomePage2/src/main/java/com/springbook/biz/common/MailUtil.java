package com.springbook.biz.common;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.springbook.biz.board.EstimationVO;

public class MailUtil {
	public void naverMailSend(EstimationVO vo) {

		String host = "smtp.naver.com"; // 
		String user = ""; //발송 메일 주체의 아이디 '아이디@naver.com'의 형식으로 입력
		String password = ""; //발송 메일 주체의 비밀번호

		// SMTP
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, 
					          new InternetAddress(vo.getEmail()));//

			// 
			message.setSubject("요청하신 물품 구매 대행에 대한 답변 메일입니다.");

			// 
			//message.setText(vo.toString());
			
			/*String cont=vo.toString();*/
			String cont="<table border='1' style='text-align: center;'><tr><th>번호</th><th>물품 명</th><th>관리자 메모</th><th>견적 요청 날짜</th></tr><tr><td>"+vo.getSeq()+"</td><td>"+vo.getProduct()+"</td><td>"+vo.getMemo()+"</td><td>"+vo.getRegDate()+"</td></tr></table>";
			//		
			message.setContent(cont, "text/html; charset=utf-8");
			
			//
			Transport.send(message);
			System.out.println("Success Message Send");
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}
}
