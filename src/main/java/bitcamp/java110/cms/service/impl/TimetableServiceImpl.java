package bitcamp.java110.cms.service.impl;


import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.TimetableDao;
import bitcamp.java110.cms.domain.Timetable;
import bitcamp.java110.cms.service.TimetableService;

@Service
public class TimetableServiceImpl implements TimetableService {

  @Autowired TimetableDao timetableDao;
  
  @Transactional(
          rollbackFor=Exception.class)
  @Override
  public void add(Timetable timetable) {
 
    timetableDao.insert(timetable);
    
      
      /*if (productTimetable.getCtno() != null) {
          
          HashMap<String,Object> params = new HashMap<>();
          params.put("no", productTimetable.getCtno());
          params.put("photo", productTimetable.getCtno());
          
          [??????????????].insert(params);
      }*/
  }
  
  @Override
  public List<Timetable> list(int pageNo, int pageSize) {
      HashMap<String,Object> params = new HashMap<>();
      params.put("rowNo", (pageNo - 1) * pageSize);
      params.put("size", pageSize);
      
      return timetableDao.findAll(params);
  }
  
  @Override
  public Timetable get(int no) {
      return timetableDao.findByCtno(no);
  }
  
  @Transactional
  @Override
  public void delete(int no) {
      if (timetableDao.delete(no) == 0) {
          throw new RuntimeException("해당 번호의 데이터가 없습니다.");
      }
      timetableDao.delete(no);
      timetableDao.delete(no);
  }
}
