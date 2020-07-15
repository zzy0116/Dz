package com.test.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.model.BigSection;
import com.test.model.Tiezi;
import com.test.servic.BigSectionService;
import com.test.servic.TieziService;
import com.test.servic.servicImpl.BigSectionServiceImpl;
import com.test.servic.servicImpl.TieziServiceImpl;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BigSectionService bigSectionService= new BigSectionServiceImpl();
		List<BigSection> bigsections = bigSectionService.findBS();
		TieziService tieziservice =  new TieziServiceImpl();
		List<Tiezi>  tiezis = tieziservice.findTz();
		request.setAttribute("bigsections",bigsections);
		request.setAttribute("tiezis",tiezis);
		request.getRequestDispatcher("discuz.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
