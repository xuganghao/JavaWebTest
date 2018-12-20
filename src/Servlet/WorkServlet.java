package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.WorkexDao;
import domain.Workex;

/**
 * Servlet implementation class WorkServlet
 */
@WebServlet("/WorkServlet")
public class WorkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String account =(String) request.getSession().getAttribute("account");
		String company = request.getParameter("company");
		String position = request.getParameter("position");
		String time = request.getParameter("time");
		String fltime = request.getParameter("fltime");
		WorkexDao dao = new WorkexDao();
		Workex ex = new Workex();
		ex.setAccount(account);
		if(company.equals("公司/组织名称")) {
			
		}else {
			ex.setCompany(company);
		}
		if(position.equals("如:Java工程师")) {
			
		}else {
			ex.setPosition(position);
		}
		if(time.equals("")) {
			
		}else {
			ex.setTime(time);;
		}
		if(fltime.equals("")) {
			
		}else {
			ex.setFitime(fltime);
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
