package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Timetable;

public interface TimetableDao {
<<<<<<< HEAD

=======
  int insert(Map<String,Object> params);
>>>>>>> song
  List<Timetable> findAll(Map<String,Object> params);
  List<Timetable> findByCno(int cno);

  Timetable findByCtno(int no);
  
  int insert(Timetable timetable);
  int delete(int ctno);
  int update(Timetable timetable);
}
