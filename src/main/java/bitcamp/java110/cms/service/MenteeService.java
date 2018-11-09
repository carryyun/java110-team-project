package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Mentee;

public interface MenteeService {
  
  // 전체 조회
  List<Mentee> list(int pageNo, int pageSize); 
  
  // 멘티 번호로 조회
  Mentee get(int no); 
  
  // 이메일로 조회
  List<Mentee> listByEmail(int pageNo, int pageSize, String email); 
  
  // 닉네임으로 조회
  List<Mentee> listByNick(int pageNo, int pageSize, String nick);
  
  // 핸드폰으로 조회
  List<Mentee> listByPhone(int pageNo, int pageSize, String phone);
  
  void add(Mentee mentee); // insert
  
  void delete(int no);
  
}