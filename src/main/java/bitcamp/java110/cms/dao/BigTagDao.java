package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.BigTag;

public interface BigTagDao {
  List<BigTag> findAll();
  List<BigTag> findByMono(int no);
  BigTag findByName(String name);

  BigTag findByNo(int no);
  
  
  BigTag insert(BigTag bigTag);

}
