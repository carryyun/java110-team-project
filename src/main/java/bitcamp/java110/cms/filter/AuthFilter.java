package bitcamp.java110.cms.filter;

import java.io.IOException;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.MiddleTagService;

//@WebFilter("/*")
public class AuthFilter implements Filter {

//  BigTagService bigTagService;
//  MiddleTagService middleTagService;

//  public AuthFilter(BigTagService bigTagService, MiddleTagService middleTagService) {
//    this.bigTagService = bigTagService;
//    this.middleTagService = middleTagService;
//  }
  public AuthFilter() {
    System.out.println("123");
  }



  @Override
  public void doFilter(
      ServletRequest request, 
      ServletResponse response,
      FilterChain chain)
          throws IOException, ServletException {

    HttpServletRequest httpRequest = (HttpServletRequest)request;
    HttpServletResponse httpResponse = (HttpServletResponse)response;
//
//    String servletPath = httpRequest.getServletPath();
//    System.out.println(servletPath); // => /app

    String pathInfo = httpRequest.getPathInfo();
//    System.out.println(pathInfo); // => /manager/add
    /*if (pathInfo.endsWith("add") ||
                pathInfo.endsWith("delete")) {

            // 로그인 여부 검사
            HttpSession session = httpRequest.getSession();
            Mentee loginUser = (Mentee)session.getAttribute("loginUser");
            if (loginUser == null) {
                httpResponse.sendRedirect("/auth/form");
                return;
            }
        }*/
//    System.out.println("1");
    if(pathInfo !=null) {
            if (pathInfo.endsWith("prdt")) {
              System.out.println("2");
//            List<BigTag> blist = bigTagService.list();
//            List<MiddleTag> mlist = middleTagService.list();
            
//            request.setAttribute("BTlist", blist);
//            request.setAttribute("BTlist", mlist);
//              httpResponse.sendRedirect("/auth/form");
            }
    }
//    
//    

    
    
//    model.addAttribute("BTlist",BTlist);
//    model.addAttribute("MTlist",MTlist);
    
    
//    System.out.println("3");
    chain.doFilter(request, response);
  }
}











