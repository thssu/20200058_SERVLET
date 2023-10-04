<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "현재 페이지는 전자기기 상품 목록입니다.";
      String tagline = "하단페이지:확인";%>
	
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
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="..." height="250" width="200">
                        <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
			</div>
			<%
				}
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
      하단페이지:확인
  </div>
