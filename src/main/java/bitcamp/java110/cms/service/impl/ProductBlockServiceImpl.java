package bitcamp.java110.cms.service.impl;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import bitcamp.java110.cms.dao.ProductBlockDao;
import bitcamp.java110.cms.domain.ProductBlock;
import bitcamp.java110.cms.service.ProductBlockService;

@Service
public class ProductBlockServiceImpl implements ProductBlockService {

  @Autowired ProductBlockDao productBlockDao;
  @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)

  @Override
  public List<ProductBlock> list(int pageNo, int pageSize) {

    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);

    return productBlockDao.findAll(params);

  }

  
  @Override
  public List<ProductBlock> listByMono(int pageNo, int pageSize, int mono) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("mentoNo", mono);

    return productBlockDao.findAllByMono(params);
  }
  
  @Override
  public List<ProductBlock> listByMeno(int pageNo, int pageSize, int meno) {
    HashMap<String, Object> params = new HashMap<>();
    params.put("rowNo", (pageNo - 1) * pageSize);
    params.put("size", pageSize);
    params.put("menteeNo", meno);

    return productBlockDao.findAllByMeno(params);
  }


}
