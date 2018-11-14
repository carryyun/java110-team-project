package bitcamp.java110.cms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductPopulDao;
import bitcamp.java110.cms.domain.ProductPopul;
import bitcamp.java110.cms.service.ProductPopulService;

@Service
public class ProductPopulServiceImpl implements ProductPopulService {

  @Autowired
  ProductPopulDao productPopulDao;

  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ProductPopul> list() {

    return productPopulDao.findAll();

  }

}
