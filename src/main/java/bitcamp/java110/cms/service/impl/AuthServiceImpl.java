package bitcamp.java110.cms.service.impl;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.fasterxml.jackson.databind.ObjectMapper;
import bitcamp.java110.cms.dao.ManagerDao;
import bitcamp.java110.cms.dao.MenteeDao;
import bitcamp.java110.cms.dao.MentorDao;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.Mentor;
import bitcamp.java110.cms.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired MentorDao mentorDao;
    @Autowired ManagerDao managerDao;
    @Autowired MenteeDao menteeDao;

    @Override 
    public Mentee getMentee(
            String email, String pwd ) {
        HashMap<String,Object> params = new HashMap<>();
        params.put("email", email.toLowerCase());
        params.put("pwd", pwd.toLowerCase());
        return menteeDao.findByEmailPassword(params);
    }
  

  @Override
  public Mentee getFacebookMember(
      String accessToken) {
    RestTemplate restTemplate = new RestTemplate();
    @SuppressWarnings("rawtypes")
    Map response = restTemplate.getForObject(
        "https://graph.facebook.com/v3.2/me?access_token={v1}&fields={v2}", 
        Map.class,
        accessToken,
        "id,name,email");
    
    Mentee mentee = null;
    int x = menteeDao.checkemail(mentee);
    
    if (x != 0)
    return mentee;
    
    mentee = new Mentee();
    mentee.setName(response.get("name").toString());
    mentee.setEmail(response.get("email").toString());
    return mentee;
  }

  @Override
  public Mentee getNaverMember(String accessToken) {
    String header = "Bearer " + accessToken; // Bearer 다음에 공백 추가
    String fileurl="";
    String name="";
    String nickname="";
    String email="";

    try {
      String apiURL = "https://openapi.naver.com/v1/nid/me";
      URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection) url.openConnection();
      con.setRequestMethod("GET");
      con.setRequestProperty("Authorization", header);
      int responseCode = con.getResponseCode();
      BufferedReader br;
      if (responseCode == 200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
      } else { // 에러 발생
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
      }
      String inputLine;
      String str="";
      while ((inputLine = br.readLine()) != null) {
        str+=inputLine;
      }
      br.close();

      ObjectMapper mapper = new ObjectMapper();

      Map<String,Object> map = mapper.readValue(str, Map.class);
      map = (Map<String,Object>) map.get("response");

      name = (String) map.get("name");
      nickname = (String) map.get("nickname");
      email = (String) map.get("email");
      fileurl=map.get("profile_image").toString();

      Mentee m = new Mentee();
      m.setName(name);
      m.setNick(nickname);
      m.setEmail(email);
      m.setPhot(fileurl);

      if(menteeDao.checkemail(m) == 0) 
      menteeDao.fbsignup(m);

      return m;

    } catch (Exception e) {
      System.out.println(e);
    }

    return null;
  }

  @Override
  public Mentee getKakaoMember(Map<String, String> map) {
    
    String fileurl="";
    String name="";
    String nickname="";
    String email="";

    try {
      name = (String) map.get("nickname"); // kakaotalk 정보제공에 이름이 없어서 임시로 닉네임 대체 
      nickname = (String) map.get("nickname");
      email = (String) map.get("email");
      fileurl=map.get("profile_image").toString();

      System.out.println("name="+name);
      System.out.println("nickname="+nickname);
      System.out.println("email="+email);
      System.out.println("fileurl="+fileurl);

      Mentee m = new Mentee();
      m.setName(name);
      m.setNick(nickname);
      m.setEmail(email);
      m.setPhot(fileurl);

      menteeDao.signup(m);

      return m;

    } catch (Exception e) {
      System.out.println(e);
    }

    return null;
    
    
  }


}










