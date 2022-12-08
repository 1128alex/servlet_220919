<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- 1. -->
	<%!public int result(int n) {
		int sum_1 = 0;
		for (int i = 1; i <= n; i++) {
			sum_1 += i;
		}
		return sum_1;
	}%>

	<!-- 2. -->
	<%
	int[] scores = { 80, 90, 100, 95, 80 };
	double sum_2 = 0.0;
	for (int i = 0; i < scores.length; i++) {
		sum_2 += scores[i];
	}
	double avg = (double) sum_2 / (double) scores.length;
	%>

	<!-- 3. -->
	<%
	List<String> scoreList = Arrays.asList(new String[] { "X", "O", "O", "O", "X", "O", "O", "O", "X", "O" });
	int count = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			count++;
		}
	}
	%>

	<!-- 4. -->
	<%
	String birthDay = "20010820";
	String year = birthDay.substring(0, 4);
	int age = 2022 - Integer.parseInt(year);
	%>

	<!-- 1. -->
	<h1>
		1부터 50까지의 합은
		<%=result(50)%>입니다.
	</h1>

	<!-- 2. -->
	<h1>
		평균 점수는
		<%=avg%>점 입니다.
	</h1>

	<!-- 3. -->
	<h1>
		채점 결과는
		<%=count * 10%>점 입니다.
	</h1>

	<!-- 4. -->
	<h1><%=birthDay%>의 나이는
		<%=age%>세 입니다.
	</h1>

	<h1></h1>
</body>
</html>