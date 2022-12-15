package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		MysqlService ms = MysqlService.getInstance();
		ms.connect();

		String insert = "insert into `real_estate`" + "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
				+ "value" + "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
		try {
			ms.update(insert);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		String select = "select * from `real_estate`;";
		try {
			ResultSet resultSet = ms.select(select);
			out.println("매물주소: " + resultSet.getString("address") + ", 면적: " + resultSet.getInt("area") + ", 타입: "
					+ resultSet.getString("type"));
			while (resultSet.next()) {
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ms.disconnect();
	}
}
