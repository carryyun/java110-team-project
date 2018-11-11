package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.BigTag;

public interface BigTagDao {
  List<BigTag> findAll();

  BigTag findByName(String name);

  BigTag findByNo(int no);

}
