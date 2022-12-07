package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<String> list = new ArrayList<>(Arrays.asList("강남역 최고 맛집 소개 합니다.", "오늘 기분 좋은 일이 있었네요.",
				"역시 맛집 데이트가 제일 좋네요.", "집에 가는 길에 동네 맛집 가서 안주 사갑니다.", "자축 저 오늘 생일 이에요."));

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String search = request.getParameter("search");

		Iterator<String> iter = list.iterator();

		out.print("<html><head><title></title></head><body>");
		while (iter.hasNext()) {
			String line = iter.next();

			// split 사용
			if (line.contains(search)) {
				String searchSplit[] = line.split(search);
				out.print(searchSplit[0] + "<b>" + search + "</b>" + searchSplit[1] + "<br>");
			}

			// replace 사용
			if (line.contains(search)) {
				line.replace(search, "<b>" + search + "</b>");
				out.print(line + "<br>");
			}
		}
		out.print("</body></html>");

		out.print("<html><head><title></title></head><body>");
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).contains(search)) {
				String searchSplit[] = list.get(i).split(search);
				out.print(searchSplit[0]);
				out.print("<b>" + search + "</b>");
				out.print(searchSplit[1] + "<br>");
			}
		}
		out.print("</body></html>");
	}
}