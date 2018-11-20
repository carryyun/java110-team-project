package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.ClassQna;

public interface ClassQnaDao {
  List<ClassQna> classqnalist(Map<String, Object> params); // 마이페이지에서 자기 질분 또는 답변 보는 기능
  List<ClassQna> findByCno(Map<String, Object> params); // 클래스 상세보기에서 qna 리스트 출력
  
  int qnainsert(ClassQna classqna); // 질문 추가
  int qnadelete(int no);
  int qnaupdate(ClassQna classqna); // 질문 수정
  int ansupdate(ClassQna classqna); // 답변 추가 , 답변수정
}
