package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AppoDao;
import domain.Appo;

/**
 * Servlet implementation class AppoServlet
 */
@WebServlet("/AppoServlet")
public class AppoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Appo appo = new Appo();
		AppoDao dao = new AppoDao();
		String[] theme = request.getParameterValues("theme");
		String[] free = request.getParameterValues("free");
		String time = request.getParameter("time");
		String descr = request.getParameter("descr");
		String site = request.getParameter("site");
		String account = request.getParameter("account");
		for(int i= 0;i<theme.length;i++) {
//			System.out.println(theme[i]);
			appo.setTheme(theme[i]);
		}
		appo.setAccount(account);
		for(int i = 0;i < free.length;i++) {
			appo.setFree(free[i]);
		}
		appo.setTime(time);
		appo.setDescr(descr);
		appo.setSite(site);
		boolean b = dao.insert(appo);
		request.setAttribute("account", account);
		request.getRequestDispatcher("/selfinfo.jsp").forward(request, response);
		System.out.println(b);
		
		
	
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
