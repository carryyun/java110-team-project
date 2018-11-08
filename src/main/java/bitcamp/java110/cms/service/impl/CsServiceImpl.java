package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.CsDao;
import bitcamp.java110.cms.domain.Cs;
import bitcamp.java110.cms.service.CsService;

@Service
public class CsServiceImpl implements CsService {
  
  @Autowired CsDao csDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
  
  @Override
  public void add(Cs cs) {
    csDao.insert(cs);
    
  }

  @Override
  public List<Cs> list(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1)* pageSize);
    params.put("size", pageSize);
    
    return csDao.findAll(params);
    
  }

  @Override
  public Cs get(int no) {
    return csDao.findByNo(no);
  }

  @Override
  public void delete(int no) {
    if (csDao.delete(no) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다");
    }
    csDao.delete(no);
    
  }

}
