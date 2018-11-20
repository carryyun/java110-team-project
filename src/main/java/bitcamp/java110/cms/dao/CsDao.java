package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Cs;

public interface CsDao {
  int insert(Cs cs);
  List<Cs> findAll(Map<String,Object> params); // 마이페이지 1:1문이ㅡ
  Cs findByNo(int no);
  int delete(int no);
  int update(Cs cs);

}