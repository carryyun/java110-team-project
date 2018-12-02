package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Timetable;

public interface TimetableDao {
  int insert(Map<String,Object> params);
  List<Timetable> findAll(Map<String,Object> params);
  Timetable findByCtno(int no);
  Timetable findByCno(int no);
  int update(Timetable timetable);
}
