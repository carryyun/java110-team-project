package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.MentorFile;

public interface MentorFileDao {
  List<MentorFile> findAll(Map<String,Object> params);
  int insert(MentorFile mfile);
  List<MentorFile> findByNo(int no);
  int delete(int no);
  int update(MentorFile mfile);

}
