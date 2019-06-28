package com.mhs.goodsexchangehinge.util;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class EmailUtil {
	public static void sendEmail(MailSender mailSender, String toEmail, String fromEmail, String subject,
			String msgBody) {

		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(toEmail);
		mailMessage.setFrom(fromEmail);
		mailMessage.setSubject(subject);
		mailMessage.setText(msgBody);
		mailSender.send(mailMessage);
	}
}
