package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Mentor;

public interface MentorDao {
  int insert(Mentor mentor); 

  int delete(int no);

  Mentor findByNo(int no); // 멘티 번호

  Mentor getMentee();
  
  List<Mentor> findAll(Map<String, Object> params); // 전체조회

  List<Mentor> findAllByEmail(Map<String, Object> params); // 이메일

  List<Mentor> findAllByNick(Map<String, Object> params); // 닉네임

  List<Mentor> findAllByPhone(Map<String, Object> params); // 핸드폰
}
