package bitcamp.java110.cms.web;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.BigTag;
import bitcamp.java110.cms.domain.Mentee;
import bitcamp.java110.cms.domain.MentoTag;
import bitcamp.java110.cms.domain.MiddleTag;
import bitcamp.java110.cms.domain.Product;
import bitcamp.java110.cms.domain.ProductBakt;
import bitcamp.java110.cms.domain.ProductBlock;
import bitcamp.java110.cms.domain.ProductCert;
import bitcamp.java110.cms.domain.ProductOrder;
import bitcamp.java110.cms.domain.ProductQnA;
import bitcamp.java110.cms.domain.ProductRep;
import bitcamp.java110.cms.domain.SmallTag;
import bitcamp.java110.cms.service.AuthService;
import bitcamp.java110.cms.service.BigTagService;
import bitcamp.java110.cms.service.MenteeService;
import bitcamp.java110.cms.service.MentoTagService;
import bitcamp.java110.cms.service.MiddleTagService;
import bitcamp.java110.cms.service.ProductBaktService;
import bitcamp.java110.cms.service.ProductBlockService;
import bitcamp.java110.cms.service.ProductCertService;
import bitcamp.java110.cms.service.ProductOrderService;
import bitcamp.java110.cms.service.ProductQnAService;
import bitcamp.java110.cms.service.ProductRepService;
import bitcamp.java110.cms.service.ProductService;
import bitcamp.java110.cms.service.SmallTagService;

@Controller
@RequestMapping("/test")
public class TestController {

  AuthService authService;
  BigTagService bigtagService;
  MiddleTagService middletagService;
  SmallTagService smalltagService;
  ProductService productService;
  ProductOrderService productOrderService;
  ProductRepService productRepService;
  ProductQnAService productQnAService;
  ProductBaktService productBaktService;
  MenteeService menteeService;
  ProductCertService productCertService;
  ProductBlockService productBlockService;
  MentoTagService mentoTagService;

  public TestController(
      AuthService authService,
      BigTagService bigtagService,
      MiddleTagService middletagService, 
      SmallTagService smalltagService,
      ProductService productService,
      ProductOrderService productOrderService,
      ProductRepService productRepService,
      ProductQnAService productQnAService,
      ProductBaktService productBaktService,
      MenteeService menteeService,
      ProductCertService productCertService,
      ProductBlockService productBlockService,
      MentoTagService mentoTagService) {
    
    this.authService = authService;
    this.bigtagService = bigtagService;
    this.middletagService = middletagService;
    this.smalltagService = smalltagService;
    this.productService = productService;
    this.productOrderService = productOrderService;
    this.productRepService = productRepService;
    this.productQnAService = productQnAService;
    this.productBaktService = productBaktService;
    this.menteeService = menteeService;
    this.productCertService = productCertService;
    this.productBlockService = productBlockService;
    this.mentoTagService = mentoTagService;
  }



  @RequestMapping("Tag")
  public void Tag() {
    
    // 대분류 출력
    System.out.println("---------대분류---------");
    BigTag b = bigtagService.get(1);
    System.out.println("번호: " + b.getNo());
    System.out.println("이름: " + b.getName());

    // 중분류 출력
    System.out.println("---------중분류---------");
    MiddleTag m = middletagService.get(1);
    System.out.println("번호: " + m.getNo());
    System.out.println("이름: " + m.getName());
    System.out.println("중분류에서 대분류 번호찾기: " + m.getBtno());

    // 중분류 번호가 2번인 중분류의 이름, 대분류 번호
    System.out.println("--------2번중분류--------");
    List<MiddleTag> m2 = middletagService.listBtno(3, 5, 2);
    for (MiddleTag middle : m2) {

      System.out.println(middle.getNo() + "번 중분류 이름: " + middle.getName());
      System.out.println(middle.getNo() + "번 대분류 번호: " + middle.getBtno());
    }
    
    // 소분류 출력
    System.out.println("---------소분류---------");
    SmallTag s = smalltagService.get(1);
    System.out.println("번호: " + s.getNo());
    System.out.println("이름: " + s.getName());
    System.out.println("소분류에서 중분류 번호찾기: " + s.getMtno());

    // 소분류 번호가 2번인 소분류의 이름, 중분류 번호
    System.out.println("--------2번소분류--------");
    List<SmallTag> s2 = smalltagService.listMtno(3, 5, 2);
    for (SmallTag small : s2) {

      System.out.println(small.getNo() + "번 소분류 이름: " + small.getName());
      System.out.println(small.getNo() + "번 중분류 번호: " + small.getMtno());
    }
    
    // 상품(공예품) 정보 출력
    System.out.println("---------상품정보---------");
    Product prod = productService.get(1);
    System.out.println("번호: " + prod.getNo());
    System.out.println("제목: " + prod.getTitl());
    System.out.println("내용: " + prod.getConts());
    System.out.println("가격: " + prod.getPric());
    System.out.println("등록일: " + prod.getRgdt());
    System.out.println("재고: " + prod.getStock());
    System.out.println("사진: " + prod.getPhot());
    System.out.println("판매자번호: " + prod.getMeno());
    System.out.println("인증서번호: " + prod.getCtno());
    System.out.println("소분류번호: " + prod.getStno());
    
    
    Product p=new Product();
    
    // 상품(공예품) insert Test용
  /*p.setTitl("건무룩");
    p.setConts("건희님이 시무룩하다");
    p.setPric(10000);
    p.setStock(3);
    p.setPhot("http://naver.com");
    p.setMeno(5);
    p.setCtno(1);
    p.setStno(1);
    
    productService.add(p);*/
    
    // 상품(공예품) update Test용
    /*p.setNo(3);
    p.setTitl("건희찡222222");
    p.setConts("건희님이 덜 시무룩하다222222");
    p.setPric(100);
    //p.setMeno(6); << 이거 어차피 수정해도 판매자 번호여서 수정 불가함
    
    productService.update(p);*/
    
    
    // 상품 주문 내역 출력
    System.out.println("--------상품주문내역--------");
    ProductOrder prodOrder = productOrderService.get(1);
    System.out.println("주문번호: "+ prodOrder.getNo());
    System.out.println("주문자번호: "+ prodOrder.getMeno());
    System.out.println("공예품번호: "+ prodOrder.getPtno());
    System.out.println("수량: "+ prodOrder.getCnt());
    System.out.println("총금액: "+ prodOrder.getTot_pric());
    System.out.println("결제방법: "+ prodOrder.getPayopt());
    System.out.println("결제날짜: "+ prodOrder.getPaydt());
    System.out.println("택배사: "+ prodOrder.getParc_name());
    System.out.println("송장번호: "+ prodOrder.getParc_no());
    
    ProductOrder prodAdd=new ProductOrder();
    // 상품 주문 내역 insert Test용
      
      /*prodAdd.setMeno(20);
      prodAdd.setPtno(5);
      prodAdd.setCnt(1);
      prodAdd.setTot_pric(0);
      prodAdd.setPayopt("현금결제");
      
      productOrderService.add(prodAdd);*/
    
    
    // 공예품 댓글 출력
    System.out.println("--------공예품댓글--------");
    ProductRep prodRep = productRepService.get(1);
    System.out.println("댓글번호: "+ prodRep.getNo());
    System.out.println("작성자번호: "+ prodRep.getMeno());
    System.out.println("공예품번호: "+ prodRep.getPtno());
    System.out.println("제목: "+ prodRep.getTitl());
    System.out.println("내용: "+ prodRep.getConts());
    System.out.println("별점: "+ prodRep.getStar());
    System.out.println("등록일: "+ prodRep.getRgdt());
    System.out.println("사진: "+ prodRep.getPhot());
    
    // 공예품 댓글 insert Test용
    ProductRep pdr=new ProductRep();
      /*pdr.setMeno(5);
      pdr.setPtno(2);
      pdr.setTitl("이 상품 어때요?");
      pdr.setConts("괜찮아요? 많이 놀랐쬬?");
      pdr.setStar(5);
      
      productRepService.add(pdr);*/
      
      // 공예품댓글 update Test용
      /*pdr.setNo(8);
      pdr.setTitl("왜자꾸에러나고난리야");
      pdr.setConts("짜증나");
      pdr.setStar(5);
      pdr.setPhot("뒤지겠네");
      
      productRepService.update(pdr);*/
    
    
   
    
    // 공예품 질문 답변 출력
    System.out.println("--------공예품QnA--------");
    ProductQnA prodQnA = productQnAService.get(1);
    System.out.println("질문번호: "+ prodQnA.getNo());
    System.out.println("질문자번호: "+ prodQnA.getMeno());
    System.out.println("공예품번호: "+ prodQnA.getPtno());
    System.out.println("제목: "+ prodQnA.getTitl());
    System.out.println("내용: "+ prodQnA.getConts());
    System.out.println("질문등록일: "+ prodQnA.getRgdt());
    System.out.println("답변: "+ prodQnA.getAnser());
    System.out.println("답변등록일: "+ prodQnA.getRgdt2());
    
    // 공예품 질문답변 insert Test용
    ProductQnA pdQnA=new ProductQnA();
    /*pdQnA.setNo(5);
    pdQnA.setMeno(7);
    pdQnA.setPtno(2);
    pdQnA.setTitl("샘 오취리?");
    pdQnA.setConts("안녕하쉐요");
    
    productQnAService.add(pdQnA);*/
    
    
    // 공예품댓글 update Test용
   /* pdQnA.setNo(3);
    pdQnA.setTitl("영록이 개패고싶다");
    pdQnA.setConts("ㅇㅈ?");
    
    productQnAService.update(pdQnA);*/
    
    // 공예품댓글 update2 Test용
    /*pdQnA.setNo(7);
    pdQnA.setAnser("영록이 개패고싶다");
    
    productQnAService.updateAnser(pdQnA);*/
    
 
   
    
    // 공예품 장바구니 출력
    System.out.println("--------공예품장바구니--------");
    ProductBakt prodBakt = productBaktService.get(1);
    System.out.println("장바구니번호: "+ prodBakt.getNo());
    System.out.println("공예품번호: "+ prodBakt.getPtno());
    System.out.println("멘티번호: "+ prodBakt.getMeno());
    
    // 멘티 출력
    System.out.println("--------멘티--------");
    Mentee mentee = menteeService.get(1);
    System.out.println("멘티번호: "+ mentee.getNo());
    System.out.println("이름: "+ mentee.getName());
    System.out.println("이메일: "+ mentee.getEmail());
    System.out.println("비밀번호: "+ mentee.getPwd());
    System.out.println("닉네임: "+ mentee.getNick());
    System.out.println("핸드폰: "+ mentee.getPhone());
    System.out.println("우편번호: "+ mentee.getPstno());
    System.out.println("기본주소: "+ mentee.getBas_addr());
    System.out.println("상세주소: "+ mentee.getDet_addr());
    System.out.println("사진: "+ mentee.getPhot());
    System.out.println("판매권한: "+ mentee.getSell());
    System.out.println("은행명: "+ mentee.getBkname());
    System.out.println("계좌번호: "+ mentee.getBkno());
    System.out.println("가입일: "+ mentee.getRgdt());
    System.out.println("정지여부: "+ mentee.getStat());
    System.out.println("비고: "+ mentee.getNote());
    
    
    // 인증서 출력
    System.out.println("--------인증서--------");
    ProductCert prodCert = productCertService.get(1);
    System.out.println("인증서번호: "+ prodCert.getNo());
    System.out.println("클래스번호: "+ prodCert.getCno());
    System.out.println("멘티번호: "+ prodCert.getMeno());
    System.out.println("증서유형: "+ prodCert.getType());
    System.out.println("발급횟수: "+ prodCert.getCnt());
    System.out.println("사용가능기한: "+ prodCert.getEdt());
    System.out.println("발급일: "+ prodCert.getCtdt());
   
    // 차단 출력
    System.out.println("--------인증서--------");
    List<ProductBlock> prodBlock = productBlockService.list(3, 5);
    for (ProductBlock block : prodBlock) {
      System.out.println("멘토번호: "+ block.getMeno());
      System.out.println("멘티번호: "+ block.getMono());
      System.out.println("사유: "+ block.getResn());
      System.out.println("등록일: "+ block.getRgdt());
      System.out.println("========================");
    }
    
    // 공예품 댓글 insert Test용
    ProductBlock pdBlock=new ProductBlock();
      /*pdBlock.setMeno(5);
      pdBlock.setMono(5);
      pdBlock.setResn("영록이ㅅrlㄲl가 저한테 욕했어요 ㅠㅠ");

      productBlockService.add(pdBlock);*/
      
      // 공예품댓글 update Test용
      /*pdBlock.setMeno(5);
      pdBlock.setMono(5);
      pdBlock.setResn("영록이ㅅrlㄲl가 저한테 욕했어요 차단부탁드립니다.");
      
      productBlockService.update(pdBlock);*/
    
    // 멘토분야 출력
    System.out.println("--------멘토분야--------");
    List<MentoTag> mentoTag = mentoTagService.list(3, 5);
    for (MentoTag tag : mentoTag) {
      System.out.println("멘토번호: "+ tag.getMono());
      System.out.println("대분류번호: "+ tag.getBtno());
      System.out.println("========================");
    }
    
  
    // 멘토분야 insert Test용
    /*MentoTag mentTag=new MentoTag();
    mentTag.setMono(2);
    mentTag.setBtno(4);


    mentoTagService.delete(2);
    
    mentoTagService.add(mentTag);*/
   
  }

}


