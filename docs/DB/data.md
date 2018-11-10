-- 멘티
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름1","test1@test.com","1111","테스트1","1111-2221","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름2","test2@test.com","1111","테스트2","1111-2222","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름3","test3@test.com","1111","테스트3","1111-2223","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름4","test4@test.com","1111","테스트4","1111-2224","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름5","test5@test.com","1111","테스트5","1111-2225","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름6","test6@test.com","1111","테스트6","1111-2226","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름7","test7@test.com","1111","테스트7","1111-2227","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");
insert into p_mete(name,email,pwd,nick,phone,pstno,bas_addr,det_addr,phot,sell,rgdt,stat,note)
values("이름8","test8@test.com","1111","테스트8","1111-2228","100-100","기본주소1","상세주소1","사진주소1",'Y',now(),'N',"비고1");


-- 멘토
insert into p_meto values(1,1,"사진주소1","은행명1",11111,'Y');
insert into p_meto values(2,1,"사진주소2","은행명2",11112,'Y');
insert into p_meto values(3,1,"사진주소3","은행명3",11113,'Y');
insert into p_meto values(4,1,"사진주소4","은행명4",11114,'Y');


-- 멘토 활동 자료
insert into p_meto_file(mfname,mono) values("멘토자료1",1);
insert into p_meto_file(mfname,mono) values("멘토자료1-1",1);
insert into p_meto_file(mfname,mono) values("멘토자료2",2);
insert into p_meto_file(mfname,mono) values("멘토자료3",3);
insert into p_meto_file(mfname,mono) values("멘토자료4",4);

-- 멘토자격증
insert into p_meto_licn(lname,phot,mono) values("자격증1","사진1",1);
insert into p_meto_licn(lname,phot,mono) values("자격증2","사진2",1);
insert into p_meto_licn(lname,phot,mono) values("자격증3","사진3",2);
insert into p_meto_licn(lname,phot,mono) values("자격증4","사진4",3);
insert into p_meto_licn(lname,phot,mono) values("자격증5","사진5",4);

-- 고객센터Q&A
insert into p_cs(meno,titl,conts,rgdt) values(5,"질문제목1","질문내용1",now());
insert into p_cs(meno,titl,conts,rgdt) values(6,"질문제목2","질문내용2",now());
insert into p_cs(meno,titl,conts,rgdt,anser,rgdt2) values(7,"질문제목3","질문내용3",now(),"답변내용1",now());
insert into p_cs(meno,titl,conts,rgdt,anser,rgdt2) values(8,"질문제목4","질문내용4",now(),"답변내용2",now());
insert into p_cs(meno,titl,conts,rgdt,anser,rgdt2) values(8,"질문제목5","질문내용5",now(),"답변내용3",now());


-- 알림 테이블(p_noti)

insert into p_noti(type,url,meno) values("상품","웹주소1",1);
insert into p_noti(type,url,meno) values("상품","웹주소1",2);
insert into p_noti(type,url,meno) values("클래스","웹주소1",3);
insert into p_noti(type,url,meno) values("클래스","웹주소1",4);
insert into p_noti(type,url,meno) values("상품","웹주소1",5);
insert into p_noti(type,url,meno) values("상품","웹주소2",6);
insert into p_noti(type,url,meno) values("상품","웹주소3",7);
insert into p_noti(type,url,meno) values("상품","웹주소4",8);


-- 분야(대분류) (p_btag)

insert into p_btag(btname) values("프로그래밍");
insert into p_btag(btname) values("음악");
insert into p_btag(btname) values("뷰티");
insert into p_btag(btname) values("댄스");
insert into p_btag(btname) values("프로그래밍1");


-- 분야(중분류) (p_mtag)

insert into p_mtag(mtname,btno) values("Java",1);
insert into p_mtag(mtname,btno) values("피아노",2);
insert into p_mtag(mtname,btno) values("메이크업",3);
insert into p_mtag(mtname,btno) values("힙합",4);


-- 분야(소분류) (p_stag)

insert into p_stag(stname,mtno) values("소분류1",1);
insert into p_stag(stname,mtno) values("소분류2",2);
insert into p_stag(stname,mtno) values("소분류3",3);
insert into p_stag(stname,mtno) values("소분류4",4);


-- 멘토분야 (p_meto_tag)

insert into p_meto_tag(mono, btno) values(1,1);
insert into p_meto_tag(mono, btno) values(2,2);
insert into p_meto_tag(mono, btno) values(3,3);
insert into p_meto_tag(mono, btno) values(4,4);


-- 클래스
insert into p_cls(titl, conts, pric, rgdt, time, capa, cfile, tinfo, cinfo, pstno, bas_addr, det_addr, edt, mono, mtno )
values('제목1', '내용1', 1, now(), 'time1',1, '사진영상1', '강사소개1','강의소개1', '111-11', '주소1', '주소1', now(), 1,1);
insert into p_cls(titl, conts, pric, rgdt, time, capa, cfile, tinfo, cinfo, pstno, bas_addr, det_addr, edt, mono, mtno ) 
values('제목2', '내용2', 2, now(), 'time2',1, '사진영상2', '강사소개2','강의소개2', '111-12', '주소2', '주소2', now(), 1,1);
insert into p_cls(titl, conts, pric, rgdt, time, capa, cfile, tinfo, cinfo, pstno, bas_addr, det_addr, edt, mono, mtno ) 
values('제목3', '내용3', 3, now(), 'time3',3, '사진영상3', '강사소개3','강의소개3', '111-13', '주소3', '주소3', now(), 2,2);
insert into p_cls(titl, conts, pric, rgdt, time, capa, cfile, tinfo, cinfo, pstno, bas_addr, det_addr, edt, mono, mtno ) 
values('제목4', '내용4', 4, now(), 'time4',4, '사진영상4', '강사소개4','강의소개4', '111-14', '주소4', '주소4', now(), 3,3);
insert into p_cls(titl, conts, pric, rgdt, time, capa, cfile, tinfo, cinfo, pstno, bas_addr, det_addr, edt, mono, mtno ) 
values('제목5', '내용5', 5, now(), 'time5',5, '사진영상5', '강사소개5','강의소개5', '111-15', '주소5', '주소5', now(), 4,4);


-- 클래스 소개사진
insert into p_cls_file(fname, cno)values('file1', 1);
insert into p_cls_file(fname, cno)values('file2', 2);
insert into p_cls_file(fname, cno)values('file3', 3);
insert into p_cls_file(fname, cno)values('file4', 4);
insert into p_cls_file(fname, cno)values('file5', 5);

-- 수업시간표
insert into p_cls_ttab(cno, date, stime, capa) values(1,now(),now(), 1);
insert into p_cls_ttab(cno, date, stime, capa) values(2,now(),now(), 2);
insert into p_cls_ttab(cno, date, stime, capa) values(3,now(),now(), 3);
insert into p_cls_ttab(cno, date, stime, capa) values(4,now(),now(), 4);
insert into p_cls_ttab(cno, date, stime, capa) values(5,now(),now(), 5);


-- 찜클래스
insert into p_cls_like(meno, cno) values(5,3);
insert into p_cls_like(meno, cno) values(5,2);
insert into p_cls_like(meno, cno) values(6,3);
insert into p_cls_like(meno, cno) values(7,4);
insert into p_cls_like(meno, cno) values(8,5);

-- 수업댓글
insert into p_cls_rip(meno, cno, titl, conts, star, phot, rgdt) values(4,1,'title1', 'conts1',1,'phot1',now());
insert into p_cls_rip(meno, cno, titl, conts, star, phot, rgdt) values(5,2,'title2', 'conts2',2,'phot2',now());
insert into p_cls_rip(meno, cno, titl, conts, star, phot, rgdt) values(6,3,'title3', 'conts3',3,'phot3',now());
insert into p_cls_rip(meno, cno, titl, conts, star, phot, rgdt) values(7,4,'title4', 'conts4',4,'phot4',now());
insert into p_cls_rip(meno, cno, titl, conts, star, phot, rgdt) values(8,5,'title5', 'conts5',5,'phot5',now());

-- 클래스신청내역 p_cls_order
INSERT INTO p_cls_order (meno,time,tot_pric,payopt,paydt,ctno) VALUES (5,1, '100000', '국민(신용카드)', now(),1);
INSERT INTO p_cls_order (meno,time,tot_pric,payopt,paydt,ctno) VALUES (6,2, '200000', '신한(신용카드)', now(),2);
INSERT INTO p_cls_order (meno,time,tot_pric,payopt,paydt,ctno) VALUES (7,1, '300000', '국민(신용카드)', now(),3);
INSERT INTO p_cls_order (meno,time,tot_pric,payopt,paydt,ctno) VALUES (7,2, '300000', '국민(신용카드)', now(),4);
INSERT INTO p_cls_order (meno,time,tot_pric,payopt,paydt,ctno) VALUES (8,2, '400000', '무통장입금', now(),4);
INSERT INTO p_cls_order (meno,time,tot_pric,payopt,paydt,ctno) VALUES (8,2, '500000', '국민(신용카드)', now(),'5');

-- 수업질문답변 P_cls_qna
INSERT INTO p_cls_qna (meno,cno,titl, conts, rgdt, anser, rgdt2) VALUES (5,1,'제목1','내용1',now(),'답변1',now());
INSERT INTO p_cls_qna (meno,cno,titl, conts, rgdt, anser, rgdt2) VALUES (6,2,'제목2','내용2',now(),'답변2',now());
INSERT INTO p_cls_qna (meno,cno,titl, conts, rgdt, anser, rgdt2) VALUES (7,3,'제목3','내용3',now(),'답변3',now());
INSERT INTO p_cls_qna (meno,cno,titl, conts, rgdt, anser, rgdt2) VALUES (8,4,'제목4','내용4',now(),'답변4',now());
INSERT INTO p_cls_qna (meno,cno,titl, conts, rgdt, anser, rgdt2) VALUES (8,5,'제목5','내용5',now(),'답변5',now());


-- 인증서(p_cert)

insert into p_cert(cno, meno, type, cnt, edt, ctdt) values(1,5,"유형1",1,now(),now());
insert into p_cert(cno, meno, type, cnt, edt, ctdt) values(2,6,"유형2",1,now(),now());
insert into p_cert(cno, meno, type, cnt, edt, ctdt) values(3,7,"유형3",1,now(),now());
insert into p_cert(cno, meno, type, cnt, edt, ctdt) values(4,8,"유형4",1,now(),now());


-- p_prdt 공예품

insert into p_prdt(titl,conts,pric,rgdt,stock,phot,meno,ctno,stno) 
values('상품1','내용1',1,now(),1,'사진1',5,1,1);

insert into p_prdt(titl,conts,pric,rgdt,stock,phot,meno,ctno,stno) 
values('상품2','내용2',2,now(),2,'사진2',6,2,2);

insert into p_prdt(titl,conts,pric,rgdt,stock,phot,meno,ctno,stno) 
values('상품3','내용3',3,now(),3,'사진3',7,3,3);

insert into p_prdt(titl,conts,pric,rgdt,stock,phot,meno,ctno,stno) 
values('상품4','내용4',4,now(),4,'사진4',8,4,4);



-- p_prdt_order 상품주문내역

insert into p_prdt_order(meno,ptno,cnt,tot_pric,payopt,paydt,parc_name,parc_no)
values(5,1,1,1,'결제방법1',now(),'택배1',1);

insert into p_prdt_order(meno,ptno,cnt,tot_pric,payopt,paydt,parc_name,parc_no)
values(6,2,2,2,'결제방법2',now(),'택배2',2);

insert into p_prdt_order(meno,ptno,cnt,tot_pric,payopt,paydt,parc_name,parc_no)
values(7,3,3,3,'결제방법3',now(),'택배3',3);

insert into p_prdt_order(meno,ptno,cnt,tot_pric,payopt,paydt,parc_name,parc_no)
values(8,4,4,4,'결제방법4',now(),'택배4',4);


-- p_rept 신고목록

insert into p_rept(titl,conts,url,type,rtdt,meno2,meno)
values('제목1','내용1','웹주소1','신고유형1',now(),1,2);

insert into p_rept(titl,conts,url,type,rtdt,meno2,meno)
values('제목2','내용2','웹주소2','신고유형2',now(),2,3);

insert into p_rept(titl,conts,url,type,rtdt,meno2,meno)
values('제목3','내용3','웹주소3','신고유형3',now(),3,4);

insert into p_rept(titl,conts,url,type,rtdt,meno2,meno)
values('제목4','내용4','웹주소4','신고유형4',now(),4,5);



-- p_prdt_rip 공예품 댓글

insert into p_prdt_rip(meno,ptno,titl,conts,star,rgdt,phot) values(5,1,'test1','test1',1,now(),'test1');

insert into p_prdt_rip(meno,ptno,titl,conts,star,rgdt,phot) values(6,2,'test2','test2',1,now(),'test2');

insert into p_prdt_rip(meno,ptno,titl,conts,star,rgdt,phot) values(7,3,'test3','test3',3,now(),'test3');

insert into p_prdt_rip(meno,ptno,titl,conts,star,rgdt,phot) values(8,4,'test4','test4',4,now(),'test4');


-- p_prdt_qna 공예품 질문답변

insert into p_prdt_qna(meno,ptno,titl,conts,rgdt,anser,rgdt2) values(5,1,'test1','test1',now(),'test1',now());

insert into p_prdt_qna(meno,ptno,titl,conts,rgdt,anser,rgdt2) values(6,2,'test2','test2',now(),'test2',now());

insert into p_prdt_qna(meno,ptno,titl,conts,rgdt,anser,rgdt2) values(7,3,'test3','test3',now(),'test3',now());

insert into p_prdt_qna(meno,ptno,titl,conts,rgdt,anser,rgdt2) values(8,4,'test4','test4',now(),'test4',now());



-- p_prdt_bakt 공예품 장바구니

insert into p_prdt_bakt(ptno,meno) values(1,5);

insert into p_prdt_bakt(ptno,meno) values(2,6);

insert into p_prdt_bakt(ptno,meno) values(3,7);

insert into p_prdt_bakt(ptno,meno) values(4,8);


-- 차단
insert into p_block(mono,meno,resn,rgdt) values(1,2,"차단사유1",now());
insert into p_block(mono,meno,resn,rgdt) values(1,3,"차단사유2",now());
insert into p_block(mono,meno,resn,rgdt) values(2,4,"차단사유3",now());
insert into p_block(mono,meno,resn,rgdt) values(3,5,"차단사유4",now());
insert into p_block(mono,meno,resn,rgdt) values(4,6,"차단사유5",now());
