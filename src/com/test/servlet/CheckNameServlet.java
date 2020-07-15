package com.test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.test.servic.servicImpl.UserserviceImpl;

import com.test.model.User;



/**
 * Servlet implementation class CheckNameServlet
 */
@WebServlet("/CheckNameServlet")
public class CheckNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckNameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String userName = request.getParameter("userName");
		
		//uesr ��service��  service��dao�� �����ݿ�
		//out  jsp���ö���
		PrintWriter out = response.getWriter();
		UserserviceImpl userService = new UserserviceImpl();
		List<User> user = userService.checkuserNameInfo(userName);
		int state = user.size();
		
		
		out.print(state);
		
		/*
		 * if(state == 1) { //�ظ��û��� out.print(1);
		 * 
		 * }else {
		 * 
		 * //���û��� out.print(0); }
		 */
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
