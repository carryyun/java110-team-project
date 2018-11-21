package bitcamp.java110.cms.service.impl;


import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ReportDao;
import bitcamp.java110.cms.domain.Report;
import bitcamp.java110.cms.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {

  @Autowired ReportDao reportDao;
  
  @Transactional(
          propagation=Propagation.REQUIRED,
          rollbackFor=Exception.class)
    
    @Override
    public void add(Report report) {
      reportDao.insert(report);
      
//      if (report.getNo() != null) {
//        
//        HashMap<String,Object> params = new HashMap<>();
//        params.put("no", report.getNo());
//       
//      }
    }

  @Override
  public void update(Report report) {
    reportDao.update(report);
    
  }
      
     
  
  @Override
  public List<Report> list(int pageNo, int pageSize) {
      HashMap<String,Object> params = new HashMap<>();
      params.put("rowNo", (pageNo - 1) * pageSize);
      params.put("size", pageSize);
      
      return reportDao.findAll(params);
  }
  
  @Override
  public List<Report> listByMeno2(int pageNo, int pageSize,int meno2) {
      HashMap<String,Object> params = new HashMap<>();
      params.put("rowNo", (pageNo - 1) * pageSize);
      params.put("size", pageSize);
      params.put("meno2", meno2);
      
      return reportDao.findByMeno2(params);
  }
  
  
  
  @Override
  public List<Report> finishlist(int pageNo, int pageSize) {
      HashMap<String,Object> params = new HashMap<>();
      params.put("rowNo", (pageNo - 1) * pageSize);
      params.put("size", pageSize);
      
      return reportDao.findFinishAll(params);
  }
  
  @Override
  public Report get(int no) {
      return reportDao.findByNo(no);
  }

  @Override
  public int getMeno2Cnt(int no) {
    return reportDao.findByMeno2Cnt(no);
  }
  
}
  

