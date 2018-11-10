package bitcamp.java110.cms.service;

import java.util.Map;
import bitcamp.java110.cms.domain.Mentee;

public interface AuthService {
    Mentee getMentee(String email, String pwd);
    Mentee getFacebookMember(String accessToken);
    Mentee getNaverMember(String accessToken);
    Mentee getKakaoMember(Map<String, String> map);
}