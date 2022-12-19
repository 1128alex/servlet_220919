package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class Quiz03Insert extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int price = Integer.parseInt(request.getParameter("price"));
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String pictureUrl = "";
		if (request.getParameter("pictureUrl") == "") {
			pictureUrl = null;
		} else {
			pictureUrl = request.getParameter("pictureUrl");
		}

		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		String insertQuery = "";
		if (pictureUrl == null) {
			insertQuery = "insert into `used_goods`\r\n"
					+ "(`sellerId`,`price`,`title`,`description`,`pictureUrl`,`createdAt`,`updatedAt`)\r\n"
					+ "values\r\n" + "(" + id + "," + price + ",'" + title + "','" + description
					+ "',null,now(),now());";
		} else {
			insertQuery = "insert into `used_goods`\r\n"
					+ "(`sellerId`,`price`,`title`,`description`,`pictureUrl`,`createdAt`,`updatedAt`)\r\n"
					+ "values\r\n" + "(" + id + "," + price + ",'" + title + "','" + description + "','" + pictureUrl
					+ "',now(),now());";
		}

		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		ms.disconnect();
		response.sendRedirect("/lesson04/quiz03/quiz03.jsp");
	}
}
