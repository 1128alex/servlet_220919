package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");

		PrintWriter out = response.getWriter();
		out.println("Hello World");

		Date now = new Date();
//		out.println(now);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));

		SimpleDateFormat sdf1 = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 dd일");
		out.println(sdf1.format(now));

		SimpleDateFormat sdf2 = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		out.println(sdf2.format(now));
	}

}
