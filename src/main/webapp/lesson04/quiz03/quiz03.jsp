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
	<div class="container">
		<header
			class="d-flex align-items-center justify-content-center text-white">
			<jsp:include page="header.jsp" />
		</header>
		<nav class="d-flex align-items-center">
			<jsp:include page="menu.jsp" />
		</nav>
		<section>
			<jsp:include page="contentList.jsp" />
		</section>
		<footer class="d-flex justify-content-center align-items-center">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>