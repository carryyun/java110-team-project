package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Cs;

public interface CsDao {
  int insert(Cs cs);
  List<Cs> findAll(Map<String,Object> params); // 마이페이지 1:1문의
  Cs findByNo(int no);
  int delete(int no);
  int update(Cs cs);
  List<Cs> findByMaster();//마스터 페이지 문의
  int insertQuestion(Cs cs);
  
}