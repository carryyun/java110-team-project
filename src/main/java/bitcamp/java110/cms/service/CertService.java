package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Cert;

public interface CertService {
 
  List<Cert> listByMeno(int pageNo, int pageSize, int meno);
  
  int insertCert(Cert cert);
  
}
