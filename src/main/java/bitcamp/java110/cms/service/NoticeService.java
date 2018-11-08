package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Notice;

public interface NoticeService {
  
  List<Notice> list(int pageNo, int pageSize);
  

}
