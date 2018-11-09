package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.SmallTagDao;
import bitcamp.java110.cms.domain.SmallTag;
import bitcamp.java110.cms.service.SmallTagService;

@Service
public class SmallTagServiceImpl implements SmallTagService {

  @Autowired SmallTagDao smalltagDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<SmallTag> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return smalltagDao.findAll(params);

  }

  @Override
  public SmallTag get(int no) {

    return smalltagDao.findByNo(no);
  }

  @Override
  public SmallTag get(String name) {

    return smalltagDao.findByName(name);
  }

  @Override
  public List<SmallTag> listMtno(int pageNo, int pageSize, int mtno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("middleno", mtno);

    return smalltagDao.findAllByMtno(params);
  }



}
