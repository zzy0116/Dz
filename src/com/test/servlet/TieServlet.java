package com.test.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.model.Tz;
import com.test.servic.TieziService;

import com.test.servic.servicImpl.TieziServiceImpl;

/**
 * Servlet implementation class TieServlet
 */
@WebServlet("/TieServlet")
public class TieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		String smallId=request.getParameter("smallId");
 		String page =request.getParameter("page");
 		if (page==null){
 			page="1";
 			}

 		int id =Integer.parseInt(smallId);
 		int p=Integer.parseInt(page);
 		int pp = (p-1)*4;
 		
		TieziService tzser =new TieziServiceImpl();
		List<Tz> tzs = tzser.findTzBysmallId(pp, id);
		List<Tz> tzsum = tzser.findTzSumBysmallId(id);
		int yeshu = tzsum.size();
		request.setAttribute("tzs",tzs);
		request.setAttribute("smallId", id);
		request.setAttribute("yeshu",yeshu );
		request.setAttribute("p", p);
		request.setAttribute("id", id);
		request.getRequestDispatcher("discuz2.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
