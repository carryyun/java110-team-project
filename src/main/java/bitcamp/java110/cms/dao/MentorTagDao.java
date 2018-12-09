package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.MentorTag;

public interface MentorTagDao {
  
  // 전체조회
  List<MentorTag> findAll(Map<String,Object> params);

  // 멘토번호 조회
  List<MentorTag> findAllByMono(Map<String,Object> params);
  
  // 대분류번호 조회
  List<MentorTag> findAllByBtno(Map<String,Object> params); 
  
  // 삽입
  int insert(MentorTag mentoTag);
  
  // 삭제
  int delete(int no);
  
  // 수정
  int update(MentorTag mentoTag);
  
  
  
}
