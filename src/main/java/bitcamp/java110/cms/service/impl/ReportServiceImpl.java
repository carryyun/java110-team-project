package bitcamp.java110.cms.service.impl;


import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ReportDao;
import bitcamp.java110.cms.domain.Report;
import bitcamp.java110.cms.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {

  @Autowired ReportDao reportDao;
  
  @Transactional(
          rollbackFor=Exception.class)
  @Override
  public void add(Report report) {
 
    reportDao.insert(report);
    
  }

  
  @Override
  public List<Report> list(int pageNo, int pageSize) {
      HashMap<String,Object> params = new HashMap<>();
      params.put("rowNo", (pageNo - 1) * pageSize);
      params.put("size", pageSize);
      
      return reportDao.findAll(params);
  }
  
  @Override
  public Report get(int no) {
      return reportDao.findByCtno(no);
  }
  
  
  
  @Transactional
  @Override
  public void delete(int no) {
      if (reportDao.delete(no) == 0) {
          throw new RuntimeException("해당 번호의 데이터가 없습니다.");
      }
      reportDao.delete(no);
      reportDao.delete(no);
  }
}
