package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassOrderDao;
import bitcamp.java110.cms.domain.ClassOrder;
import bitcamp.java110.cms.service.ClassOrderService;

@Service
public class ClassOrderServiceImpl implements ClassOrderService{

  @Autowired ClassOrderDao classorderDao;
  
  @Override
  public List<ClassOrder> listByMeno(int meno , int pageNo, int pageSize) {
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("meno", meno);
    return classorderDao.findByMeno(params);
  }
  

  @Override
  public List<ClassOrder> listByMaster(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("pageNo", (pageNo - 1) * pageSize);
    params.put("pageSize", pageSize);

    return classorderDao.findAllMaster(params);
  }
  
  

  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  @Override
  public void orderadd(ClassOrder classorder) {
    classorderDao.orderinsert(classorder);
  }


  @Override
  public int listByCno(int no , int meno) {
    
    HashMap<String, Object> params = new HashMap<>();
    params.put("no", no);
    params.put("meno", meno);
    
    return classorderDao.findBycno(params);
  }


  @Override
  public List<ClassOrder> findBycnoFormeno(int no) {
    
    return classorderDao.findBycnoFormeno(no);
  }


  @Override
  public int countorderlist() {
    
    return classorderDao.countorderlist();
  }
}
