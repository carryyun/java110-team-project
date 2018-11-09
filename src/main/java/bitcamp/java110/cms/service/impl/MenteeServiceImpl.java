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
  public List<Mentee> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return menteeDao.findAll(params);

  }

  @Override
  public Mentee get(int no) {

    return menteeDao.findByNo(no);
  }


  @Override
  public List<Mentee> listByEmail(int pageNo, int pageSize, String email) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("paramEmail", email);

    return menteeDao.findAllByEmail(params);
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
    menteeDao.insert(mentee);

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