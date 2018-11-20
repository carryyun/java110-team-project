package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.MentorTag;

public interface MentoTagService {
 
  List<MentorTag> list(int pageNo, int pageSize); 
  
  // 멘토 번호로 조회
  List<MentorTag> listByMono(int pageNo, int pageSize, int mono); 
  
  // 대분류 번호로 조회
  List<MentorTag> listByBtno(int pageNo, int pageSize, int btno);
  
  // 입력(추가)
  int add(MentorTag mentoTag);
 
  // 삭제
  void delete(int no);
  
}
