package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.EduexDao;
import domain.Eduex;

/**
 * Servlet implementation class EduServlet
 */
@WebServlet("/EduServlet")
public class EduServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EduServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String account =(String) request.getSession().getAttribute("account");
		String name = request.getParameter("name");
		String time = request.getParameter("time");
		String fltime = request.getParameter("fltime");
		String study = request.getParameter("study");
		// 进行数据库的操作
		System.out.println(account);
		EduexDao dao = new EduexDao();
		Eduex ex = new Eduex();
		System.out.println(ex);
		ex.setAccount(account);
		if(name.equals("院校名称")) {
		
		}else {
			ex.setName(name);
		}
		if(time.equals("")) {
		
		}else {
			ex.setTime(time);
		}
		if(fltime.equals("")) {
			
		}else {
			ex.setFitime(fltime);
		}
		if(study.equals("如:Java工程师")) {
			
		}else {
			ex.setStudy(study);
		}
		boolean b = dao.update(ex);
		System.out.println(b);
		request.setAttribute("account", account);
 		RequestDispatcher rd = request.getRequestDispatcher("/selfinfo.jsp");
 		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
