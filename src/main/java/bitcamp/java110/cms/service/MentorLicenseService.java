package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.MentorLicense;

public interface MentorLicenseService {
  void add(MentorLicense mlicn);
  List<MentorLicense> list(int pageNo, int pageSize);
  MentorLicense get(int no);
  void delete(int no);

}
