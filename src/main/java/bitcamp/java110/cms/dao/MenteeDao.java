package bitcamp.java110.cms.dao;

import bitcamp.java110.cms.domain.Mentee;

public interface MenteeDao {
    int insert(Mentee mentee);
    int delete(int no);
}
