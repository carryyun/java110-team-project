package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.BigTag;

public interface BigTagService {
 
  List<BigTag> list(int pageNo, int pageSize); 
  
  BigTag get(int no);
  
  BigTag get(String name);
}
