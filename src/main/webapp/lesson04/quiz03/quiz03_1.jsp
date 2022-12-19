<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- jquery slim 제거-->
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<style>
body {
	height: 2000px;
}

header {
	height: 110px;
	background-color: #ff7f50;
}

nav {
	height: 80px;
	background-color: #ff7f50;
}

footer {
	height: 150px;
}

.content {
	height: 300px;
	width: 32%;
	border-top: 3px solid;
	border-left: 3px solid;
	border-bottom: 3px solid;
	border-right: 3px solid;
	border-color: #ff7f50;
}

.emptyPic {
	height: 200px;
	width: 100%;
}

.nicknameText {
	color: #ff7f50;
	font-size: 20px;
}
</style>
</head>
<body>
	<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();

	String selectQuery = "select * from `seller` order by `id` desc;";

	ResultSet rs = ms.select(selectQuery);
	%>
	<div class="container">
		<header
			class="d-flex align-items-center justify-content-center text-white">
			<jsp:include page="header.jsp" />
		</header>
		<nav class="d-flex align-items-center">
			<jsp:include page="menu.jsp" />
		</nav>
		<section>
			<div class="mr-5 ml-5">
				<form method="get" action="/lesson04/quiz03_insert">
					<div class="display-4 mt-5 mb-5">물건 올리기</div>
					<div class="d-flex justify-content-between">
						<select class="form-control col-3" name="id">
							<option selected>-아이디 선택-</option>
							<%
							while (rs.next()) {
							%>
							<option value="<%=rs.getString("id")%>"><%=rs.getString("nickname")%></option>
							<%
							}
							%>
						</select> <input type="text" class="form-control col-5" placeholder="제목"
							name="title">
						<div class="d-flex col-3">
							<input type="text" placeholder="가격" class="form-control"
								name="price">
							<button type="button" class="btn btn-grey">원</button>
						</div>
					</div>
					<textarea rows="7" cols="100" class="form-control mt-3"
						name="description"></textarea>
					<div class="d-flex mt-3">
						<button type="button" class="btn btn-grey">이미지 url</button>
						<input type="text" class="form-control" name="pictureUrl">
					</div>
					<input type="submit"
						class="btn btn-grey w-100 mt-3 font-weight-bold" value="저장">
				</form>
			</div>
		</section>
		<footer class="d-flex justify-content-center align-items-center">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
	<%
	ms.disconnect();
	%>
</body>
</html>