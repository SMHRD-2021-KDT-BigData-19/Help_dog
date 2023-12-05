package com.smhrd.database;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
// ctrl + shift + o : 전체 import


public class SqlSessionManager {
   // config.xml을 읽어들여 DB 커넥션 후 세션(sqlSession) 반환
   // DB연결 고리(sqlSession)를 만들어 놓고 그때그때 가져다 쓰는 방식
   // --> Connection Pool(CP)
   
   // SqlSessionFactory : SqlSession 생성(Connection객체와 비슷한 역할)
   // SqlSession : SQL실행, 트랜잭션(롤백,커밋...)을 관리
   
   static SqlSessionFactory sqlSessionFactory;
   
   // sqlSessionManager 객체가 호출되면 무조건 실행할 수 있도록
   static {
      try {
         String resource = "com/smhrd/database/config.xml";
         InputStream inputStream = Resources.getResourceAsStream(resource);
           sqlSessionFactory = 
           new SqlSessionFactoryBuilder().build(inputStream);
           // SqlSessionFactoryBuilder : config.xml 파일을 바탕으로
           //                      SqlSessionFactory 생성
      }catch (Exception e) {
         e.printStackTrace();
      }
      
      
   }// static 끝 
   
   // sqlSessionFactory를 DAO에서 사용할 수 있게 하는 메소드 
   public static SqlSessionFactory getSqlsession() {
	   return sqlSessionFactory; 
   }
}