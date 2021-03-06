<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Ball (공지사항 게시판)</title>

<!-- api : bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>

<!-- api: font-awesome -->
<script src="https://kit.fontawesome.com/09697e2134.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/noticeList.css">
</head>

<body>

	<%-- navbar을 호출 --%>
	<%@include file="/WEB-INF/views/common/navbar.jsp"%>

	<!-- main sections -->
	<div class="main-container" id="main-container">
		<div class="notice-main-container">

			<div class="notice_total_container">
				<div class="notice_title_box">
					<h1>공지사항</h1>
					<hr>
				</div>

				<!-- button_box는 관리자회원만 볼 수있다.-->
				<div class="notice_button_box">
					<div></div>
					<button type="button" class="btn btn-primary" onclick="insertNotice();">등록하기</button>
				</div>


				<!-- 테이블 형식으로 구성되어있다. -->
				<div class="notice_table_container">
					<table class="table table-hover">
						<thead class="thead-dark">
							<!-- table attributes -->
							<tr>
								<th scope="col">No</th>
								<th scope="col">작성날짜</th>
								<th scope="col" colspan=2>공지내용</th>
								<th scope="col">작성자</th>
							</tr>
						</thead>
						<tbody>

							<!-- jsp로 데이터 삽입-->
							<tr>
								<th scope="row">1</th>
								<!--번호-->
								<td>작성날짜</td>
								<!--작성날짜 -->
								<td colspan=2>Otto</td>
								<!-- 공지내용 -->
								<td>@mdo</td>
								<!-- 작성자 -->
							</tr>
							<!-- jsp로 데이터 삽입-->


							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td colspan=2>Thornton</td>
								<td>@fat</td>
							</tr>

							<tr>
								<th scope="row">3</th>
								<td>Larry</td>
								<td colspan=2>the Bird</td>
								<td>@twitter</td>
							</tr>


						</tbody>
					</table>

				</div>

				<!-- pagenation을 담는 컨테이너이다. -->
				<div class="notice_pagenation">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							
							<%-- 이전버튼 --%>
							<li class="page-item"><a id="previous" class="page-link"
								href="#"> <i class="fas fa-chevron-circle-left"></i>
							</a></li>

							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							
							
							<%-- 다음버튼 --%>
							<li class="page-item"><a id="next" class="page-link"
								href="#"> <i class="fas fa-chevron-circle-right"></i>
							</a></li>
						</ul>
					</nav>
				</div>

			</div>
		</div>
		<%-- footer을 호출 --%>
		<%@include file="/WEB-INF/views/common/footer.jsp" %>

	</div>

</body>
<script>

	//관리자만이 등록을 할 수있다.
	function insertNotice(){
		
	
	}
	
	
</script>
</html>