package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.CertDao;
import bitcamp.java110.cms.domain.Cert;
import bitcamp.java110.cms.service.CertService;

@Service
public class CertServiceImpl implements CertService {
  
  @Autowired CertDao certDao;
  
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)


  @Override
  public List<Cert> listByMeno(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo-1) * pageSize);
    params.put("size", pageSize);
    params.put("meno", meno);
    
    return certDao.findByMeno(params);
  }

  
  @Override
  public int insertCert(Cert cert) {
    return certDao.insertCert(cert);
  }


  @Override
  public Cert get(int no) {
    return certDao.findByNo(no);
  }

}