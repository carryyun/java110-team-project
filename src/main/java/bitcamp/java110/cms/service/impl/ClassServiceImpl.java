package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ClassDao;
import bitcamp.java110.cms.domain.Classes;
import bitcamp.java110.cms.service.ClassService;

@Service
public class ClassServiceImpl implements ClassService{

  @Autowired ClassDao classDao;
  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
  
  @Override
  public int classadd(Classes classes) {
    
    return classDao.classinsert(classes);
    
  }

  @Override
  public int classupdate(Classes classes) {
    
    return classDao.classupdate(classes);
  }
  
  @Override
  public List<Classes> list(){
    return classDao.findAllList();
  }
  @Override
  public List<Classes> listByBtno(int pageNo, int pageSize, int btno){
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("btno", btno);

    return classDao.findAllByBtno(params);
  }
  @Override
  public List<Classes> listByMtno(int pageNo, int pageSize, int mtno){
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("mtno", mtno);

    return classDao.findAllByMtno(params);
  }

  
  @Override
  public Classes findBycno(int no) {
    
    return classDao.findByCno(no);
  }


  @Override
  public List<Classes> classList(int no) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public Classes findbyptno(int ptno) {
    
    return classDao.findByptno(ptno);
  }

  @Override
  public List<Classes> listByStat(String stat) {
    return classDao.findByStat(stat);
  }

  // 클래스 전체 목록 조회
  @Override
  public List<Classes> findAllByList() {
    return classDao.findAllByList();
  }
  
  // 마이페이지 - 클래스 관리 - 멘토의 클래스들
  @Override
  public List<Classes> manageByMono(int mono) {
    return classDao.manageByMono(mono);
  }
  
  // 마에피이지 - 클래스관리 - 클래스의 멘티들
  @Override
  public List<Classes> manageByCno(int cno) {
    return classDao.manageByCno(cno);
  }

  @Override
  public int statupdate(Classes classes) {
    return classDao.statupdate(classes);
  }

  @Override
  public List<Classes> findByMono(int mono) {
    // TODO Auto-generated method stub
    return null;
  }
}
