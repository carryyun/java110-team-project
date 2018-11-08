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
  
  @Autowired NoticeDao noticeDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<Notice> list(int pageNo, int pageSize) {
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    
    return noticeDao.findAll(params);
  }
  
  
  

}
