package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Mentee;

public interface MenteeService {
  
  // 전체 조회
  List<Mentee> list(); 
  
  // 멘티 번호로 조회
  Mentee get(int no); 
  
  void naverMailSend(Mentee mentee);
  
  void tempwd(Mentee mentee);
  
  // 회원 가입시 이메일중복 체크
  int checkByEmail(Mentee mentee); 
  
  // 회원 가입시 닉네임중복 체크
  int checkByNick(Mentee mentee);
  
  //
  String getByNamePhone(Mentee mentee);
  
  String getByNameEmail(Mentee mentee);
  
  // 닉네임으로 조회
  Mentee getByNick(String nick);
  
  // 핸드폰으로 조회
  List<Mentee> listByPhone(int pageNo, int pageSize, String phone);
  
  void add(Mentee mentee); // insert
  
  void fbadd(Mentee mentee);
  
  int delete(String withdrawalpwd);
  
  
  
  // 멘토신청 처리
  int updateMtstat(Mentee mentee);
  
  // 마이페이지 menu1
  int updateProfile(Mentee mentee);
  int updatePwd(Mentee mentee);
  int updatePhone(Mentee mentee);
  int updateAddr(Mentee mentee);

}