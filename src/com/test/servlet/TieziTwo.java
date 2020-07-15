package com.test.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.dao.TieziDao;
import com.test.dao.daoImpl.TieziDaoImpl;
import com.test.model.HuiTie;
import com.test.model.TieZipage;

/**
 * Servlet implementation class TieziTwo
 */
@WebServlet("/TieziTwo")
public class TieziTwo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TieziTwo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String TieId = request.getParameter("TieId");
		int tieid =Integer.parseInt(TieId);
		TieziDao tzdao = new TieziDaoImpl();
		List<HuiTie> ht = tzdao.findhuitieByTieId(tieid);
		TieZipage tz = tzdao.findTzByTieId(tieid);
		request.setAttribute("ht", ht);
		request.setAttribute("tz", tz);
		request.getRequestDispatcher("thread1.jsp").forward(request, response);



	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
