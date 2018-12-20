package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.EduexDao;
import Dao.EmailIdDao;
import Dao.EmoexDao;
import Dao.SelfInfoDao;
import Dao.WorkexDao;
import domain.Eduex;
import domain.EmailId;
import domain.Emoex;
import domain.SelfInfo;
import domain.Workex;

/**
 * Servlet implementation class RegisterEmailServlet
 */
@WebServlet("/RegisterEmailServlet")
public class RegisterEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterEmailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		// 进行数据库操作
		EmailIdDao dao = new EmailIdDao();
		EmailId id = new EmailId();
		SelfInfoDao dao1 = new SelfInfoDao();
		SelfInfo info = new SelfInfo();
		ArrayList<EmailId> list = dao.findAll();
		for(int i = 0;i < list.size();i++) {
			if(email.equals(list.get(i).getEmail())) {
				request.setAttribute("msg2", "用户名已存在");
				RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
				rd.forward(request, response);
				return;
			}
		}
		// 向emailid表中添加用户
		id.setEmail(email);
		id.setName(name);
		id.setPassword(password);
		boolean b = dao.insert(id);
		info.setAccount(email);
		boolean b1 = dao1.insert(info);
		// 向eduex表中插入数据
		Eduex eduex = new Eduex();
		EduexDao eduexdao = new EduexDao();
		eduex.setAccount(email);
		boolean b2 = eduexdao.insert(eduex);
		// 向emoex表中插入数据
		Emoex emoex = new Emoex();
		EmoexDao emoexdao = new EmoexDao();
		emoex.setAccount(email);
		boolean b3 = emoexdao.insert(emoex);
		// 向workex表中添加数据
		Workex workex = new Workex();
		WorkexDao workexdao = new WorkexDao();
		workex.setAccount(email);
		boolean b4 = workexdao.insert(workex);
		response.sendRedirect("/Training/regok.html");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
