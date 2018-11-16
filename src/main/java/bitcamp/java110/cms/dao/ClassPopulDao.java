package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.ClassPopul;

public interface ClassPopulDao {
  
  // 전체조회
  List<ClassPopul> findAll(); 

}
