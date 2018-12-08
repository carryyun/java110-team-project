package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;

public interface MentorDao {
  int insert(Mentor mentor); 

  int delete(int no);

  int update(Mentor mentor);
  
  Mentor findByNo(int no); // 멘티 번호
  // 로그인을 체크하기위해 필요한 메소드 
  Mentee findByEmailPassword(Map<String,Object> params);
  
  List<Mentor> findAll(); // 전체조회

  List<Mentor> findAllByEmail(Map<String, Object> params); // 이메일

  List<Mentor> findAllByNick(Map<String, Object> params); // 닉네임

  List<Mentor> findAllByPhone(Map<String, Object> params); // 핸드폰
  
  //멘토신청목록
  List<Mentor> findMentorRequest();
}
