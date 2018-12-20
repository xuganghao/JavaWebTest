package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.EmoexDao;
import domain.Emoex;

/**
 * Servlet implementation class EmoServlet
 */
@WebServlet("/EmoServlet")
public class EmoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String account = (String)request.getSession().getAttribute("account");
		String[] marry =request.getParameterValues("marry");
		String descr = request.getParameter("descr");
		EmoexDao dao = new EmoexDao();
		Emoex ex = new Emoex();
		ex.setAccount(account);
		for(int i =0;i<marry.length;i++) {
			ex.setMarry(marry[i]);
		}
		if(descr.equals("")) {
			
		}else {
			ex.setJl(descr);
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
