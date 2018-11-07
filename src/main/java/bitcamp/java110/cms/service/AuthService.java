package bitcamp.java110.cms.service;

import bitcamp.java110.cms.domain.Member;
import bitcamp.java110.cms.domain.Mentee;

public interface AuthService {
    Member getMember(String email, String password, String memberType);
    Member getFacebookMember(String accessToken, String memberType);
    Mentee getNaverMember(String accessToken);
}
