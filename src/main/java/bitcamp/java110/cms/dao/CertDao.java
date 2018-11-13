package bitcamp.java110.cms.dao;

import java.util.List;
import bitcamp.java110.cms.domain.Cert;

public interface CertDao {
  List<Cert> findAll();
  Cert findByNo(int no);

}
