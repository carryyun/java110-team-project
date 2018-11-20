
package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Mentee;

public interface MenteeDao {
  int signup(Mentee mentee);
  
  int fbsignup(Mentee mentee);

  int delete(int no);
  
  void tempwd(Mentee mentee);

  List<Mentee> findAll(); // 전체조회

  Mentee findByNo(int no); // 멘티 번호
  
  int checkemail(Mentee mentee); // 회원 가입시 닉네임 중복 체크
  
  int checknick(Mentee mentee); // 회원 가입시 닉네임 중복 체크
  
  String findByNamePhone(Mentee mentee);
  
  String findByNameEmail(Mentee mentee);

  List<Mentee> findAllByNick(Map<String, Object> params); // 닉네임

  List<Mentee> findAllByPhone(Map<String, Object> params); // 핸드폰
  
  List<Mentee> findByPhone(Map<String, Object> params); // 핸드폰
  
  Mentee findByEmailPassword(Map<String,Object> params);
}
