package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductRepDao;
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.service.ProductRepService;

@Service
public class ProductRepServiceImpl implements ProductRepService {

  @Autowired ProductRepDao productRepDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ProductRep> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return productRepDao.findAll(params);

  }

  @Override
  public ProductRep get(int no) {

    return productRepDao.findByNo(no);
  }

  
  @Override
  public List<ProductRep> listByMeno(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("mentno", meno);

    return productRepDao.findAllByMeno(params);
  }


  @Override
  public List<ProductRep> listByPtno(int pageNo, int pageSize, int ptno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("productno", ptno);

    return productRepDao.findAllByPtno(params);
  }


}
