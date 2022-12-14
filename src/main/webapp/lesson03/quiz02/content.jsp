<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>

<%
String musicId = request.getParameter("musicId");
String search = request.getParameter("search");
if (musicId == null && (search == null || search == "")) {
%>
<div class="w-100 mb-5" id="banner">
	<div class="d-flex mr-4 ml-4 mt-4 mb-4 w-100">
		<img alt="album-profile" src="<%=artistInfo.get("photo")%>"
			class="mr-4" height="170">
		<div>
			<h2 class="font-weight-bold"><%=artistInfo.get("name")%><!-- 가수 이름 -->
			</h2>
			<span class="font-weight-bold"><%=artistInfo.get("agency")%><!-- 소속사 --></span>
			<br> <span class="font-weight-bold"><%=artistInfo.get("debute")%>
				데뷔<!-- debut --></span>
		</div>
	</div>
</div>
<h3 class="font-weight-bold">곡 목록</h3>
<table class="table text-center">
	<thead>
		<tr>
			<th>no</th>
			<th>제목</th>
			<th>앨범</th>
		</tr>
	</thead>
	<tbody>
		<%
		for (Map<String, Object> item : musicList) {
		%>
		<tr>
			<td><%=item.get("id")%></td>
			<td><a
				href="/lesson03/quiz02/template.jsp?musicId=<%=item.get("id")%>"><%=item.get("title")%></a></td>
			<td><%=item.get("album")%></td>
		</tr>
		<%
		}
		%>
	</tbody>
</table>
<%
} else {
%>
<h4 class="font-weight-bold">곡 정보</h4>
<div class="d-flex w-100 mb-5" id="banner">
	<%
	for (Map<String, Object> item : musicList) {
		if (item.get("id").toString().equals(musicId) || item.get("title").toString().equals(search)) {
	%>
	<div class="d-flex mr-4 ml-4 mt-4 mb-4 w-100">
		<img alt="album-profile" src="<%=item.get("thumbnail")%>" class="mr-4">
		<div>
			<h1 class="mb-0">
				<%=item.get("title")%>
				<!-- 노래 제목 -->
			</h1>
			<div class="mt-1 mb-2">
				<a href="/lesson03/quiz02/template.jsp"
					class="font-weight-bold text-success"><%=item.get("singer")%><!-- 가수이름 -->
				</a>
			</div>
			<pre>
앨범       <%=item.get("album")%>
재생시간   <%=Integer.parseInt(item.get("time").toString()) / 60%>:<%=Integer.parseInt(item.get("time").toString()) % 60%>
작곡가     <%=item.get("composer")%>
작사가     <%=item.get("lyricist")%>
		</pre>
		</div>
	</div>
	<%
	}
	}
	%>
</div>
<h3 class="font-weight-bold">가사</h3>
<hr>
<b>가사 정보 없음</b>
<%
}
%>