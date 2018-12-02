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

  @Override
  public void update(Timetable timetable) {
    timetableDao.update(timetable);
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


}
