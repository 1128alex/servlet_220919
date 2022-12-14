<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
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
header {
	height: 60px;
}

a, a:hover {
	color: white;
}

nav {
	height: 50px;
}

footer {
	height: 70px;
}
</style>
</head>
<body>
	<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<String, String>() {
		{
			put("ch", "5");
			put("name", "SBS");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "7");
			put("name", "KBS2");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "9");
			put("name", "KBS1");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "11");
			put("name", "MBC");
			put("category", "지상파");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "54");
			put("name", "OCN");
			put("category", "영화");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "56");
			put("name", "Screen");
			put("category", "영화");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "57");
			put("name", "Mplex");
			put("category", "영화");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "30");
			put("name", "KBS 드라마");
			put("category", "드라마");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "32");
			put("name", "MBC 드라마");
			put("category", "드라마");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "34");
			put("name", "Olive");
			put("category", "드라마");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "3");
			put("name", "tvN");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "28");
			put("name", "MBC Every1");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "48");
			put("name", "JTBC2");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "49");
			put("name", "E채널");
			put("category", "예능");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "120");
			put("name", "SPOTV");
			put("category", "스포츠");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "121");
			put("name", "KBSN 스포츠");
			put("category", "스포츠");
		}
	};
	list.add(map);
	%>
	<div class="container">
		<header class="text-center text-danger pt-2">
			<h3 class="font-weight-bold">Sk Broadband IPTV</h3>
		</header>
		<nav class="bg-danger pt-1">
			<form method="get" action="/lesson03/quiz01/template.jsp">
				<ul class="d-flex justify-content-around text-white">
					<li class="nav-item"><a href="" class="nav-link">전체</a></li>
					<li class="nav-item"><a href="" class="nav-link">지상파</a></li>
					<li class="nav-item"><a href="" class="nav-link">드라마</a></li>
					<li class="nav-item"><a href="" class="nav-link">예능</a></li>
					<li class="nav-item"><a href="" class="nav-link">영화</a></li>
					<li class="nav-item"><a href="" class="nav-link">스포츠</a></li>
				</ul>
			</form>
		</nav>
		<section>
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<%
				String category = request.getParameter("category");
				if (category != null) {
				%>
				<tbody>
					<%
					if (category.equals("전체")) {
					%>
					<jsp:include page="all.jsp" />
					<%
					} else if (category.equals("지상파")) {
					%>
					<jsp:include page="terrestrial.jsp" />
					<%
					} else if (category.equals("드라마")) {
					%>
					<jsp:include page="drama.jsp" />
					<%
					} else if (category.equals("예능")) {
					%>
					<jsp:include page="entertainment.jsp" />
					<%
					} else if (category.equals("영화")) {
					%>
					<jsp:include page="movie.jsp" />
					<%
					} else if (category.equals("스포츠")) {
					%>
					<jsp:include page="sports.jsp" />
					<%
					} else {
					%>
					<jsp:include page="all.jsp" />
					<%
					}
					%>
				</tbody>
				<%
				} else if (category == null) {
				%>
				<jsp:include page="all.jsp" />
				<%
				category = "전체";
				}
				%>
			</table>
		</section>
		<footer class="text-center">
			<address>Copyright 2021. marondal All Rights Reserved.</address>
		</footer>
	</div>
</body>
</html>