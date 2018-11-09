package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Report;

public interface ReportDao {

  
  List<Report> findAll(Map<String,Object> params);
  Report findByNo(int no);
//  Report findByTitl(String titl);
//  Report findByConts(String conts);
//  Report findByUrl(String url);
//  Report findByType(String type);
//  Report findByRtdt(Date rtdt);
  Report findByMeno(int no);
  Report findByMeno2(int no);
  int insert(Report report);
  int update(Report report);
}
