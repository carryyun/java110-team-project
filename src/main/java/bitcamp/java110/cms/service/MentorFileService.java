package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.MentorFile;

public interface MentorFileService {
  int add(MentorFile mfile);
  List<MentorFile> list(int pageNo, int pageSize);
  List<MentorFile> get(int no);
  void delete(int no);
  int update(MentorFile mfile);

}
