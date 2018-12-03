package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassFile;

public interface ClassFileDao {
  List<ClassFile> findAll(Map<String,Object> params);
  int insert(ClassFile classfile);
  ClassFile findByNo(int no);
  int delete(int no);
  int update(ClassFile cfile);
  List<ClassFile> findByCno(int cno);
}
