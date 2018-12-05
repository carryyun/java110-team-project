package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.MenteeDao;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.service.MenteeService;

@Service
public class MenteeServiceImpl implements MenteeService {

  @Autowired    
  MenteeDao menteeDao;


  @Override
  public List<Mentee> list() {
    return menteeDao.findAll();

  }
  @Override
  public void tempwd(Mentee mentee) {
    System.out.println(mentee.getPwd());
    System.out.println(mentee.getEmail());
    menteeDao.tempwd(mentee);
  }

  public void naverMailSend(Mentee m) {
    String host = "smtp.naver.com";
    String user = "";
    String password = "";
    Properties props = new Properties(); 
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.port", 587);
    props.put("mail.smtp.auth", "true");
    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
      protected PasswordAuthentication getPasswordAuthentication() { 
        return new PasswordAuthentication(user,password);}});
    try { MimeMessage message = new MimeMessage(session); 
    message.setFrom(new InternetAddress(user)); 
    message.addRecipient(Message.RecipientType.TO, 
        new InternetAddress(m.getEmail())); 
    // 메일 제목 
    message.setSubject("Haru 임시 비밀번호입니다.");
    // 메일 내용 
    message.setText("임시비밀번호 : " + m.getPwd() + "로 로그인부탁드립니다."); 
    // send the message 
    Transport.send(message); 
    System.out.println("Success Message Send"); 
    }catch (MessagingException e) { e.printStackTrace(); } 

  }


  @Override
  public Mentee get(int no) {
    return menteeDao.findByNo(no);
  }

  @Override
  public String getByNamePhone(Mentee mentee) {
    return menteeDao.findByNamePhone(mentee);
  }

  @Override
  public String getByNameEmail(Mentee mentee) {
    return menteeDao.findByNameEmail(mentee);
  }

  

  // 회원가입시 이메일 중복체크에 필요한메소드
  @Override
  public int checkByEmail(Mentee mentee) {
    return menteeDao.checkemail(mentee);
  }

  // 회원가입시 닉네임 중복체크에 필요한메소드
  @Override
  public int checkByNick(Mentee mentee) {
    return menteeDao.checknick(mentee);
  }


  @Override
  public Mentee getByNick(String nick) {
    return menteeDao.findByNick(nick);
  }

  @Override
  public List<Mentee> listByPhone(int pageNo, int pageSize, String phone) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("paramPhone", phone);

    return menteeDao.findAllByPhone(params);
  }

  @Override
  public void add(Mentee mentee) {
    mentee.setSell('N');
    mentee.setStat('N');
    mentee.setMtstat('N');
    menteeDao.signup(mentee);
  }
  
  public void fbadd(Mentee mentee) {
    if(menteeDao.checkemail(mentee) == 0)
      menteeDao.fbsignup(mentee);
  }


  @Transactional
  @Override
  public void delete(int no) {
    if (menteeDao.delete(no) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다.");
    }
    menteeDao.delete(no);

  }

  // 멘토상태변경
  @Override
  public int updateMtstat(Mentee mentee) {
    return menteeDao.updateMtstat(mentee);
  }

  // 마이페이지 menu1 profile
  @Override
  public int updateProfile(Mentee mentee) {
    return menteeDao.updateProfile(mentee);
  }
  
  //마이페이지 menu1 pwd
  @Override
  public int updatePwd(Mentee mentee) {
    return menteeDao.updatePwd(mentee);
  }
  
  //마이페이지 menu1 phone
  @Override
  public int updatePhone(Mentee mentee) {
    return menteeDao.updatePhone(mentee);
  }
  
  //마이페이지 menu1 addr
  @Override
  public int updateAddr(Mentee mentee) {
    return menteeDao.updateAddr(mentee);
  }
  
  

}