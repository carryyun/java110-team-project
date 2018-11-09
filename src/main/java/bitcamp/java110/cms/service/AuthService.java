package bitcamp.java110.cms.service;

import java.util.Map;
import bitcamp.java110.cms.domain.Member;
import bitcamp.java110.cms.domain.Mentee;

public interface AuthService {
    Member getMember(String email, String password, String memberType);
    Mentee getFacebookMember(String accessToken);
    Mentee getNaverMember(String accessToken);
    Mentee getKakaoMember(Map<String, String> map);
}