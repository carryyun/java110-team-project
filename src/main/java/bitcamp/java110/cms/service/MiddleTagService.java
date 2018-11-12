package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.MiddleTag;

public interface MiddleTagService {
 
  List<MiddleTag> list(); 
  
  MiddleTag get(int no);
  
  MiddleTag get(String name);
  
  List<MiddleTag> listBtno(int pageNo, int pageSize, int btno); 
  
  
}
