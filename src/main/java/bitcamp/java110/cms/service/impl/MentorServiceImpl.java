package bitcamp.java110.cms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bitcamp.java110.cms.dao.MenteeDao;
import bitcamp.java110.cms.dao.MentorDao;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.service.MentorService;

@Service
public class MentorServiceImpl implements MentorService {
  
  @Autowired MentorDao mentorDao;
  @Autowired MenteeDao menteeDao;

  
  
  @Override
  public int add(Mentor mentor) {
    mentor.setNo(6);
    mentor.setCarr(3);
    mentor.setMtstat('Y');
    mentorDao.insert(mentor);
    return 0;
  }

  @Override
  public int delete(int no) {
    return 0;
  }

  @Override
  public List<Mentor> listByNick(int pageSize, String nick) {
    // TODO Auto-generated method stub
    return null;
  }
  @Override
  public List<Mentor> listByPhone(int pageSize, String phone) {
    // TODO Auto-generated method stub
    return null;
  }
  
  @Override
  public List<Mentor> list() {
//    Map<String,Object> params = new HashMap<>();
//    params.put("pagesize", pageSize);
//    params.put("no", no);
    return mentorDao.findAll();
  }

  @Override
  public Mentor get(int no) {
    return mentorDao.findByNo(no);
  }

  @Override
  public List<Mentor> listByEmail(int pageSize, String email) {
    // TODO Auto-generated method stub
    return null;
  }
}
