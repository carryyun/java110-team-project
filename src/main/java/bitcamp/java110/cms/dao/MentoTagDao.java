package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.MentoTag;

public interface MentoTagDao {
  
  // 전체조회
  List<MentoTag> findAll(Map<String,Object> params);

  // 멘토번호 조회
  List<MentoTag> findAllByMono(Map<String,Object> params);
  
  // 대분류번호 조회
  List<MentoTag> findAllByBtno(Map<String,Object> params); 
  
  
}
