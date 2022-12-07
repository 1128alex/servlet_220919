package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");

		PrintWriter out = response.getWriter();
		out.println("안녕하세요");

		Date now = new Date();
		out.println(now);

		// formatter
		// 2022-11-24 오후 16:49:30

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));

		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy년 MM월 dd일");
		out.println("오늘의 날짜는 " + sdf1.format(now));

		SimpleDateFormat sdf2 = new SimpleDateFormat("HH시 mm분 ss초");
		out.println("현재 시간은 " + sdf2.format(now) + " 입니다.");
	}
}
