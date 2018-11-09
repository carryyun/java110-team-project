package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.MentoTag;

public interface MentoTagService {
 
  List<MentoTag> list(int pageNo, int pageSize); 
  
  // 멘토 번호로 조회
  List<MentoTag> listByMono(int pageNo, int pageSize, int mono); 
  
  // 대분류 번호로 조회
  List<MentoTag> listByBtno(int pageNo, int pageSize, int btno);
  
  
 
}
