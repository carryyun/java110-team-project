package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Timetable;

public interface TimetableService {
  
  List<Timetable> list(int pageNo, int pageSize);
  List<Timetable> findByCno(int cno);
  
  Timetable get(int no);
  int add(Timetable timetable);
  int delete(int ctno);
  int update(Timetable timetable);
  
}
