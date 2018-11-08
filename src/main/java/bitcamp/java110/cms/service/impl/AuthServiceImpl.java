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
import bitcamp.java110.cms.dao.MemberDao;
import bitcamp.java110.cms.dao.MenteeDao;
import bitcamp.java110.cms.domain.Manager;
import bitcamp.java110.cms.domain.Member;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired MemberDao memberDao;
    @Autowired ManagerDao managerDao;
    
    @Autowired MenteeDao menteeDao;
    

    @Override
    public Member getMember(
            String email, String password, String memberType) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("email", email);
        params.put("password", password);
        
        if (memberType.equals("manager")) {
            return managerDao.findByEmailPassword(params);
        } else {
            return null;
        }
    }
    
    @Override
    public Member getFacebookMember(
            String accessToken, String type) {
        
        // Facebook의 Graph API 실행하기
        // => HTTP 요청을 할 때 스프링에서 제공하는 RestTemplate을 사용하라! 
        // 
        RestTemplate restTemplate = new RestTemplate();
        
        /*
        HashMap<String,String> vars = new HashMap<>();
        vars.put("v1", accessToken);
        vars.put("v2", "id,name,email");
        */
        
        // 원격 서버에서 보낸 JSON 문자열을 Map 객체로 자동 변환하려면
        // JSON 문자열을 처리하는 라이브러리를 추가해 둬야 한다.
        // 따로 코드를 추가할 필요는 없다.
        // => Gson 또는 Jackson 라이브러리
        //
        @SuppressWarnings("rawtypes")
        Map response = restTemplate.getForObject(
            "https://graph.facebook.com/v3.2/me?access_token={v1}&fields={v2}", 
            Map.class,
            accessToken,
            "id,name,email");
            //vars); // 값을 개별적으로 넘기지 않고 맵에 담아 넘길 수도 있다.
      
        // Facebook 사용자의 이메일로 현재 서버의 사용자 정보를 찾는다.
        Member member = null;
        if (type.equals("manager")) {
            member = managerDao.findByEmail(response.get("email").toString());
        }
        
        // 해당 회원을 현재 서버에서 찾았으면 그 정보를 리턴한다.
        if (member != null)
          return member;
        
        // 현재 서버에 가입한 사용자가 아니라면, 
        // 페이스북 기본 정보를 가지고 자동으로 회원 등록한다.
        //
        
        Member newbie = createMember(type, 
            response.get("name").toString(),
            response.get("email").toString(),
            "1111");
        
        memberDao.insert(newbie);
        
        if (type.equals("manager")) {
          ((Manager)newbie).setPosition("미정");
          
          managerDao.insert((Manager)newbie);
          
        } 
        
        return newbie;
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
        System.out.println("str=" + str);
        
        ObjectMapper mapper = new ObjectMapper();
        
        Map<String,Object> map = mapper.readValue(str, Map.class);
        System.out.println("response : " + map.get("response").toString());
        map = (Map<String,Object>) map.get("response");
        
        name = (String) map.get("name");
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
        
        // 임시
        m.setPwd("1111");
        m.setPhone("1111-22223");
        
        menteeDao.insert(m);
        
        return m;
        
      } catch (Exception e) {
        System.out.println(e);
      }
      
      return null;
    }
    
    private Member createMember(
        String memberType, String name, String email, String password) {
      Member member = null;
      
      if (memberType.equals("manager")) {
        member = new Manager();
      }
      
      member.setEmail(email);
      member.setName(name);
      member.setPassword(password);
      
      return member;
    }

    
    
}










