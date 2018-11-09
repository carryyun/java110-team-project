package bitcamp.java110.cms.dao;

import bitcamp.java110.cms.domain.Mentee;

public interface MenteeDao {
    int insert(Mentee mentee);
    int delete(int no);
}


//SELECT
//me.meno,
//me.name,
//mo.carr
//FROM
//p_mete me
//JOIN p_meto mo
//WHERE
//me.meno=1 AND
//me.meno = mo.mono;
