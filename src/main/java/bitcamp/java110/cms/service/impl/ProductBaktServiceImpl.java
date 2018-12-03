package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductBaktDao;
import bitcamp.java110.cms.domain.ProductBakt;
import bitcamp.java110.cms.service.ProductBaktService;

@Service
public class ProductBaktServiceImpl implements ProductBaktService {

  @Autowired ProductBaktDao productBaktDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ProductBakt> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return productBaktDao.findAll(params);

  }

  @Override
  public ProductBakt get(int no) {

    return productBaktDao.findByNo(no);
  }

 


  @Override
  public List<ProductBakt> listByPtno(int pageNo, int pageSize, int ptno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("productno", ptno);

    return productBaktDao.findAllByPtno(params);
  }

  @Override
  public List<ProductBakt> listAllByMeno(int meno) {
    
    return productBaktDao.findAllByMeno(meno);
    
  }

  @Override
  public int add(ProductBakt productbakt) {
    return productBaktDao.insert(productbakt);
  }

  @Override
  public int update(ProductBakt productbakt) {
    // TODO Auto-generated method stub
    return productBaktDao.update(productbakt);
  }

  @Override
  public void delete(int pbno) {
    if (productBaktDao.delete(pbno) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다");
    }
    productBaktDao.delete(pbno);
  }

  @Override
  public List<ProductBakt> sumByMeno(int no) {
    return productBaktDao.sumByMeno(no);
  }


}
