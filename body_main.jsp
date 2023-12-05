<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

<%! String greeting = "현재 페이지는 전자기기 상품 목록입니다.";

      String tagline = "하단페이지:확인";%>
	<div class="list-group">
      <a href="https://namu.wiki/w/%EA%B8%B0%EA%B3%84?from=%EC%A0%84%EC%9E%90%EC%A0%9C%ED%92%88#s-2.4" class="list-group-item list-group-item-action">전자제품이란 무엇일까? 설명(클릭)</a>
    </div>
    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
  <div class="container">
		<div class="row" align="center">
		<%
		     String sql = "select * from product"; // 조회
		     pstmt = conn.prepareStatement(sql); // 연결 생성
		     rs = pstmt.executeQuery(); // 쿼리 실행
		     while (rs.next()) { // 결과 ResultSet 객체 반복
	    %>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>
				<h3><%=rs.getString("p_name")%></h3>
		        <p><%=rs.getString("p_description")%>
		        <p><%=rs.getString("p_UnitPrice")%>원
		        <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
	<%
		} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>
	</div>
		<hr>
	</div>

  <div class="card bg-dark text-white">
    <img src="image/top.png" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">한가위 할인 이벤트</h5>
    <p class="card-text">출처 : 쿠팡</p>
  </div>
      
  <div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        명절 선물 시리즈
      </a>
      <a href="#" class="list-group-item list-group-item-action">명절 과일 시리즈</a>
        <!-- '전자제품 설명' 버튼 추가 -->
    <a href="https://namu.wiki/w/%EA%B8%B0%EA%B3%84?from=%EC%A0%84%EC%9E%90%EC%A0%9C%ED%92%88#s-2.4" class="list-group-item list-group-item-action">전자제품 설명</a>
      하단페이지:확인
  </div>
  