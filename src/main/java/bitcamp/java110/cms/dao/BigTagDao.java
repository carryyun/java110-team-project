package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.BigTag;

public interface BigTagDao {
  List<BigTag> findAll(Map<String,Object> params);

  BigTag findByName(String name);

  BigTag findByNo(int no);

}
