package bitcamp.java110.cms.service.impl;


import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductTimetableDao;
import bitcamp.java110.cms.domain.ProductTimetable;
import bitcamp.java110.cms.service.ProductTimetableService;

@Service
public class ProductTimetableServiceImpl implements ProductTimetableService {

  @Autowired ProductTimetableDao productTimetableDao;
  
  @Transactional(
          rollbackFor=Exception.class)
  @Override
  public void add(ProductTimetable productTimetable) {
 
    productTimetableDao.insert(productTimetable);
    
      
      /*if (productTimetable.getCtno() != null) {
          
          HashMap<String,Object> params = new HashMap<>();
          params.put("no", productTimetable.getCtno());
          params.put("photo", productTimetable.getCtno());
          
          [??????????????].insert(params);
      }*/
  }
  
  @Override
  public List<ProductTimetable> list(int pageNo, int pageSize) {
      HashMap<String,Object> params = new HashMap<>();
      params.put("rowNo", (pageNo - 1) * pageSize);
      params.put("size", pageSize);
      
      return productTimetableDao.findAll(params);
  }
  
  @Override
  public ProductTimetable get(int no) {
      return productTimetableDao.findByCtno(no);
  }
  
  @Transactional
  @Override
  public void delete(int no) {
      if (productTimetableDao.delete(no) == 0) {
          throw new RuntimeException("해당 번호의 데이터가 없습니다.");
      }
      productTimetableDao.delete(no);
      productTimetableDao.delete(no);
  }
}
