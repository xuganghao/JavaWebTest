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
import Dao.EmoexDao;
import Dao.PhoneIdDao;
import Dao.SelfInfoDao;
import Dao.WorkexDao;
import domain.Eduex;
import domain.Emoex;
import domain.PhoneId;
import domain.SelfInfo;
import domain.Workex;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String phone = request.getParameter("telephone");
		String password = request.getParameter("password");
		// 进行数据库操作
		PhoneIdDao dao = new PhoneIdDao();
		SelfInfoDao dao1 = new SelfInfoDao();
		PhoneId phoneid = new PhoneId();
		SelfInfo info = new SelfInfo();
		ArrayList<PhoneId> list = dao.findAll(); 
		for(int i = 0;i < list.size();i++) {
			if(phone.equals(list.get(i).getPhone())) {
//				System.out.println("用户已存在");
				request.setAttribute("msg1", "用户名已存在");
				RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
				rd.forward(request, response);
				return;
			}
		}
		// 向phoneid表中添加一个用户
		phoneid.setName(name);
		phoneid.setPhone(phone);
		phoneid.setPassword(password);
		boolean b = dao.insert(phoneid);
		info.setAccount(phone);
		boolean b1 = dao1.insert(info);
		// 向eduex表中插入数据
		Eduex eduex = new Eduex();
		EduexDao eduexdao = new EduexDao();
		eduex.setAccount(phone);
		boolean b2 = eduexdao.insert(eduex);
		// 向emoex表中插入数据
		Emoex emoex = new Emoex();
		EmoexDao emoexdao = new EmoexDao();
		emoex.setAccount(phone);
		boolean b3 = emoexdao.insert(emoex);
		// 向workex表中添加数据
		Workex workex = new Workex();
		WorkexDao workexdao = new WorkexDao();
		workex.setAccount(phone);
		boolean b4 = workexdao.insert(workex);
		System.out.println(b4);
		
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
