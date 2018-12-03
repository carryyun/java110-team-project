package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassBaktDao;
import bitcamp.java110.cms.domain.ClassBakt;
import bitcamp.java110.cms.service.ClassBaktService;

@Service
public class ClassBaktServiceImpl implements ClassBaktService {

  @Autowired ClassBaktDao classbaktDao;
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)

  @Override
  public List<ClassBakt> list(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1)* pageSize);
    params.put("size", pageSize);
    
    return classbaktDao.findAll(params);
  }

  @Override
  public int add(ClassBakt classbakt) {
    return classbaktDao.insert(classbakt);
    
  }

  @Override
  public int update(ClassBakt classbakt) {
    return classbaktDao.update(classbakt);
    
  }

  @Override
  public void delete(int cbno) {
    if (classbaktDao.delete(cbno) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다");
    }
    classbaktDao.delete(cbno);
  }

  @Override
  public List<ClassBakt> listByMeno(int meno) {
    return classbaktDao.findAllByMeno(meno);
  }

  @Override
  public List<ClassBakt> sumByMeno(int meno) {
    return classbaktDao.sumAllByMeno(meno);
  }
  

}
