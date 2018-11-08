package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.MentorFileDao;
import bitcamp.java110.cms.domain.MentorFile;
import bitcamp.java110.cms.service.MentorFileService;

@Service
public class MentorFileServiceImpl implements MentorFileService{
  
  @Autowired MentorFileDao mfileDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public void add(MentorFile mfile) {
    mfileDao.insert(mfile);
    
  }

  @Override
  public List<MentorFile> list(int pageNo, int pageSize) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo-1) * pageSize);
    params.put("size", pageSize);
    
    return mfileDao.findAll(params);
  }

  @Override
  public MentorFile get(int no) {
    return mfileDao.findByNo(no);
  }

  @Override
  public void delete(int no) {
    if(mfileDao.delete(no) == 0) {
      throw new RuntimeException("해당 번호의 데이터가 없습니다 ");
    }
   mfileDao.delete(no);
    
  }

}
