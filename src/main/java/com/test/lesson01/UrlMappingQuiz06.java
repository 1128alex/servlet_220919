package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/06")
public class UrlMappingQuiz06 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");

		PrintWriter out = response.getWriter();
		Integer n1 = Integer.parseInt(request.getParameter("number1"));
		Integer n2 = Integer.parseInt(request.getParameter("number2"));

//		{
//		    "addtion": 1570,
//		    "subtraction": 1430,
//		    "multiplication": 105000,
//		    "division": 21
//		}
		out.print("{\n\t\"addition\": " + (n1 + n2) + ",\n\t\"subtraction\": " + (n1 - n2) + ",\n\t\"multiplication\": "
				+ (n1 * n2) + ",\n\t\"division\": " + (n1 / n2) + "\n}");

	}
}
