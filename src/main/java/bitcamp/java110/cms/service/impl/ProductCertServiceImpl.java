package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductCertDao;
import bitcamp.java110.cms.domain.ProductCert;
import bitcamp.java110.cms.service.ProductCertService;

@Service
public class ProductCertServiceImpl implements ProductCertService {

  @Autowired ProductCertDao productCertDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ProductCert> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return productCertDao.findAll(params);

  }

  @Override
  public ProductCert get(int no) {

    return productCertDao.findByNo(no);
  }

  @Override
  public List<ProductCert> listByCno(int pageNo, int pageSize, int cno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("classno", cno);

    return productCertDao.findAllByCno(params);
  }

  
  @Override
  public List<ProductCert> listByMeno(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("mentno", meno);

    return productCertDao.findAllByMeno(params);
  }

  @Override
  public int add(ProductCert prct) {
    return productCertDao.insert(prct);
  }

  @Override
  public int update(ProductCert prct) {
    return productCertDao.update(prct);
  }


}
