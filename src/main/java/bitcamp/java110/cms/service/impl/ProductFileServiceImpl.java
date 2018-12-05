package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductFileDao;
import bitcamp.java110.cms.domain.ProductFile;
import bitcamp.java110.cms.service.ProductFileService;

@Service
public class ProductFileServiceImpl implements ProductFileService {

  @Autowired
  ProductFileDao productFileDao;

  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  // 전체 조회
  @Override
  public List<ProductFile> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return productFileDao.findAll(params);

  }


  // 공예품 번호로 조회
  @Override
  public List<ProductFile> listByPtno(int ptno) {
    return productFileDao.findAllByPtno(ptno);
  }

  // insert
  @Override
  public int add(ProductFile profile) {
    return productFileDao.insert(profile);
  }

  @Override
  public int update(ProductFile profile) {
    return productFileDao.update(profile);
  }

  @Override
  public int delete(ProductFile profile) {
    return productFileDao.delete(profile);
  }

}
