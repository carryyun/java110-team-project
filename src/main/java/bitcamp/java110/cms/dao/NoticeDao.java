package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Notice;

public interface NoticeDao {
  List<Notice> findAll(Map<String,Object> params);
  List<Notice> findByMeno(Map<String,Object> params);
  Notice findByNo(int no);
  int insert(Notice noti);
  int update(Notice noti);
  
  int delete(int no);
  
  int countNewNotice(int no);

}
