package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.MentorFile;
import bitcamp.java110.cms.domain.MentorLicense;

public interface MentorLicenseService {
  int add(MentorLicense mlicn);
  List<MentorLicense> list(int pageNo, int pageSize);
  List<MentorLicense> get(int no);
  void delete(int no);
  int update(MentorLicense mlicn);

}
