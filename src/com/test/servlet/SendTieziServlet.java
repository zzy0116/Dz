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
import com.test.model.SendTiezi;
import com.test.model.User;

/**
 * Servlet implementation class SendTieziServlet
 */
@WebServlet("/SendTieziServlet")
public class SendTieziServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendTieziServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String smallid = request.getParameter("smallId");
		String fid = request.getParameter("fId");
		String content = request.getParameter("content");	
		Integer fId = Integer.parseInt(fid);
		Integer smallId =Integer.parseInt(smallid);
		HttpSession session = request.getSession();
		User user =  (User)session.getAttribute("user");
		Integer userId =user.getUserId();
		
		TieziDao tieziDao = new TieziDaoImpl();
		SendTiezi tiezi =new SendTiezi(title, userId, content, smallId, fId);
		tieziDao.insertsendtiezi(tiezi);
//		response.sendRedirect("IndexServlet");
		response.sendRedirect("TieServlet?smallId="+smallId);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
