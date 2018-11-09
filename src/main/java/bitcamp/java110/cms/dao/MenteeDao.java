package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Mentee;

public interface MenteeDao {
  int insert(Mentee mentee);
  
  int delete(int no);

  List<Mentee> findAll(Map<String, Object> params); // 전체조회

  Mentee findByNo(int no); // 멘티 번호

  List<Mentee> findAllByEmail(Map<String, Object> params); // 이메일

  List<Mentee> findAllByNick(Map<String, Object> params); // 닉네임

  List<Mentee> findAllByPhone(Map<String, Object> params); // 핸드폰
}


//SELECT
//me.meno,
//me.name,
//mo.carr
//FROM
//p_mete me
//JOIN p_meto mo
//WHERE
//me.meno=1 AND
//me.meno = mo.mono;
