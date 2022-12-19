<%@page import="com.test.common.MysqlService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MysqlService ms = MysqlService.getInstance();
ms.connect();

String selectQuery = "select A.*, B.*" + "from `used_goods` as A" + " join `seller` as B" + " on A.sellerId=B.id"
		+ " order by A.id desc;";

ResultSet rs = ms.select(selectQuery);
int count = 0;
%>
<%
while (rs.next()) {
	if (count % 3 == 0) {
%>
<div class="d-flex justify-content-between">
	<%
	}
	%>
	<div class="content mt-3 mb-2">
		<div class="mt-2 mr-2 ml-2 mb-2">
			<%
			if (rs.getString("A.pictureUrl") == null || rs.getString("A.pictureUrl") == "") {
			%>
			<div
				class="emptyPic d-flex justify-content-center align-items-center">
				<h4 class="text-secondary">이미지 없음</h4>
			</div>
			<%
			} else {
			%>
			<img alt="item-img" src="<%=rs.getString("A.pictureUrl")%>"
				height="200px">
			<%
			}
			%>
			<h5 class="font-weight-bold"><%=rs.getString("A.title")%></h5>
			<span class="text-secondary"><%=rs.getInt("A.price")%>원</span> <br>
			<span class="nicknameText"><%=rs.getString("B.nickname")%></span>
		</div>
	</div>
	<%
	if (count % 3 == 2) {
	%>
</div>
<%
}
count++;
}
%>
<%
ms.disconnect();
%>