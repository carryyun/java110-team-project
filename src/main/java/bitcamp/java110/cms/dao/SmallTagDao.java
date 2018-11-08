package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.SmallTag;

public interface SmallTagDao {
  List<SmallTag> findAll(Map<String,Object> params); // 전체조회

  SmallTag findByName(String name); // 중분류명
 
  SmallTag findByNo(int no); // 중분류번호

  List<SmallTag> findAllByMtno(Map<String,Object> params); // 중분류번호로 소분류 전체조회
  
}
