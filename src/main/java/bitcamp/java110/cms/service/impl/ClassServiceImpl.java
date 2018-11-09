package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassDao;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.service.ClassService;

@Service
public class ClassServiceImpl implements ClassService{

  @Autowired ClassDao classDao;
  
  
  @Override
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  public int classadd(Classes classes) {
    
    Classes c = get(5);
    
    c.setTitl("고정지");
    c.setConts("고정지");
    c.setPric(111);
    //c.setrgdt("now()");
    c.setTime("고정지");
    c.setCapa(5);
    c.setCfile("고정지");
    c.setTinfo("고정지");
    c.setCinfo("고정지");
    c.setPstno("고정지");
    c.setBas_addr("고정지");
    c.setDetAddr("고정지");
    //c.setEdt("고정지");
    c.setMono(4);
    c.setMtno(4);
    
    
    return classDao.classinsert(c);
    
  }

  @Override
  public List<Classes> classlist(int pageSize){
    HashMap<String, Object> params = new HashMap<>();
    params.put("size", pageSize);
    
    
    return classDao.findAll(params);
  }

  @Override
  public Classes get(int no) {
    
    return classDao.findByNo(no);
  }
  
}
