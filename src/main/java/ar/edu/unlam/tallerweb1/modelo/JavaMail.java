package ar.edu.unlam.tallerweb1.modelo;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaMail {

	private final Properties properties = new Properties();
    private Session session;
    private String nombreMail;
    private String asuntoMail;
    private String textoMail;
    

    public String getNombreMail() {
		return nombreMail;
	}

	public void setNombreMail(String nombreMail) {
		this.nombreMail = nombreMail;
	}

	public String getAsuntoMail() {
		return asuntoMail;
	}

	public void setAsuntoMail(String asuntoMail) {
		this.asuntoMail = asuntoMail;
	}

	public String getTextoMail() {
		return textoMail;
	}

	public void setTextoMail(String textoMail) {
		this.textoMail = textoMail;
	}


	private void init() {
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.port", 587);
        properties.put("mail.smtp.mail.sender", "cursoft@educacion.com");
        properties.put("mail.smtp.password", "cursoft");
        properties.put("mail.smtp.user", "cursoft@educacion.com");
        properties.put("mail.smtp.auth", "true");
        session = Session.getDefaultInstance(properties);
    }

    public void send(String destino,String asunto, String mensaje) {
        init();
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress((String) properties.get("mail.smtp.mail.sender")));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(destino));
            message.setSubject(asunto);
            message.setText(mensaje);
            Transport t = session.getTransport("smtp");
            t.connect((String) properties.get("mail.smtp.user"), (String) properties.get("mail.smtp.password"));
            t.sendMessage(message, message.getAllRecipients());
            t.close();
        } catch (MessagingException e) {
            return;
        }
    }
}