package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.MentorLicenseDao;
import bitcamp.java110.cms.domain.MentorLicense;
import bitcamp.java110.cms.service.MentorLicenseService;

@Service
public class MentorLicenseServiceImpl implements MentorLicenseService {
  
  @Autowired MentorLicenseDao mlicnDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<MentorLicense> list(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo-1) * pageSize);
    params.put("size", pageSize);
    
    return mlicnDao.findAll(params);
  }

  @Override
  public MentorLicense get(int no) {
    return mlicnDao.findByNo(no);
  }

  @Override
  public void delete(int no) {
    if(mlicnDao.delete(no) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다 ");
    }
    mlicnDao.delete(no);
    
  }

  @Override
  public int add(MentorLicense mlicn) {
    return mlicnDao.insert(mlicn);
  }

  @Override
  public int update(MentorLicense mlicn) {
    return mlicnDao.update(mlicn);
  }

}
