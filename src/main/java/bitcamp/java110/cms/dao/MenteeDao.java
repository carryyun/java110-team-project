package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Mentee;

public interface MenteeDao {
  int insert(Mentee mentee);

  int delete(int no);

  Mentee findByNo(int no); // 멘티 번호

  Mentee getMentee();
  
  List<Mentee> findAll(Map<String, Object> params); // 전체조회

  List<Mentee> findAllByEmail(Map<String, Object> params); // 이메일

  List<Mentee> findAllByNick(Map<String, Object> params); // 닉네임

  List<Mentee> findAllByPhone(Map<String, Object> params); // 핸드폰
  
  
}
