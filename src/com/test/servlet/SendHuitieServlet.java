package com.test.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.dao.TieziDao;
import com.test.dao.daoImpl.TieziDaoImpl;
import com.test.model.SendHuitie;
import com.test.model.User;

/**
 * Servlet implementation class SendHuitieServlet
 */
@WebServlet("/SendHuitieServlet")
public class SendHuitieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendHuitieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		String tieId = request.getParameter("tieid");
		String content = request.getParameter("content");
		
		Integer tieid = Integer.parseInt(tieId);
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		Integer userId = user.getUserId();
		
		TieziDao tieziDao = new TieziDaoImpl();
		SendHuitie sendHuitie = new SendHuitie(tieid, content, userId);
		tieziDao.inserthuitie(sendHuitie);
//		response.sendRedirect("IndexServlet");
		response.sendRedirect("TieziTwo"+"?TieId="+tieid);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
