package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Timetable;

public interface TimetableService {
  
  
  
  void add(Timetable timetable);
  List<Timetable> list(int pageNo, int pageSize);
  Timetable get(int no);
  void update(Timetable timetable);

}
