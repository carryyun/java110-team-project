package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.NoticeDao;
import bitcamp.java110.cms.domain.Notice;
import bitcamp.java110.cms.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService{
  
  @Autowired NoticeDao notiDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<Notice> list(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    
    return notiDao.findAll(params);
  }
  @Override
  public int add(Notice noti) {
    return notiDao.insert(noti);
  }
  @Override
  public Notice get(int no) {
    return notiDao.findByNo(no);
  }
  @Override
  public int update(Notice noti) {
    return notiDao.update(noti);
  }
  @Override
  public List<Notice> listByMeno(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("meno", meno);
    return notiDao.findByMeno(params);
  }
  
  @Override
  public int remove(int no) {
    return notiDao.delete(no);
  }
  
  

}
