package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.MenteeDao;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.service.MenteeService;

@Service
public class MenteeServiceImpl implements MenteeService {

  @Autowired
  MenteeDao menteeDao;


  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
  @Override
  public List<Mentee> list() {
    return menteeDao.findAll();

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
  public Mentee getM2(int no) {

    return menteeDao.findM2ByNo(no);
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
  public List<Mentee> listByNick(int pageNo, int pageSize, String nick) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("paramNick", nick);

    return menteeDao.findAllByNick(params);
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


}