package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.SmallTag;

public interface SmallTagService {
 
  List<SmallTag> list(int pageNo, int pageSize); 
  
  SmallTag get(int no);
  
  SmallTag get(String name);
  
  List<SmallTag> listMtno(int pageNo, int pageSize, int mtno); 
  
  
}
