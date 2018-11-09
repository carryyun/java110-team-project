package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.MentorLicense;

public interface MentorLicenseDao {
  List<MentorLicense> findAll(Map<String,Object> params);
  int insert(MentorLicense mlicn);
  MentorLicense findByNo(int no);
  int delete(int no);
  int update(MentorLicense mlicn);

}
