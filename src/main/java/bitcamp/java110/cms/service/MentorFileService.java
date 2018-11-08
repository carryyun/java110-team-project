package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.MentorFile;

public interface MentorFileService {
  void add(MentorFile mfile);
  List<MentorFile> list(int pageNo, int pageSize);
  MentorFile get(int no);
  void delete(int no);

}
