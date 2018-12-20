package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.EduexDao;
import Dao.EmailIdDao;
import Dao.EmoexDao;
import Dao.PhoneIdDao;
import Dao.SelfInfoDao;
import Dao.WorkexDao;
import domain.Eduex;
import domain.EmailId;
import domain.Emoex;
import domain.PhoneId;
import domain.SelfInfo;
import domain.Workex;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		
		boolean isLogin = false;
		if(username.contains("@")) {
			EmailIdDao dao = new EmailIdDao();
			EmailId emailid = dao.find(username);
			if(dao.find1(username)==false) {
				//System.out.println("账号不存在");
				request.setAttribute("msg","账号不存在" );
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
				return;
			}
			if(emailid != null  && password.equals(emailid.getPassword())) {
				isLogin = true;
			}
		}else {
			PhoneIdDao dao = new PhoneIdDao();
			PhoneId phoneid = dao.find(username);
			if(dao.find1(username)==false) {
				//System.out.println("账号不存在");
				request.setAttribute("msg","账号不存在" );
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
				return;
			}
			if(phoneid != null &&  password.equals(phoneid.getPassword())) {
				isLogin = true;
			}
		}
		
		if(isLogin) {
			request.setAttribute("phone", username);
			SelfInfoDao selfDao = new SelfInfoDao();
			SelfInfo info =selfDao.find(username);
//			if(info != null) {
//				info.setImg(info.getImg().equals("null")?"images/photo.png":info.getImg());
//				info.setXm(info.getXm().equals("null") ? "暂无" : info.getXm());
//				info.setBirth(info.getBirth().equals("null")? "暂无" :info.getBirth());
//				info.setPhone(info.getPhone().equals("null") ? "暂无" : info.getPhone());
//				info.setCity(info.getCity().equals("null")? "暂无" :info.getCity());
//				info.setSex(info.getSex().equals("null") ? "暂无" : info.getSex());
//				info.setWeb(info.getWeb().equals("null")? "暂无" :info.getWeb());
//				info.setEmail(info.getEmail().equals("null") ? "暂无" : info.getEmail());
//				info.setAddress(info.getAddress().equals("null")? "暂无" :info.getAddress());
//			}
			EduexDao eduexdao = new EduexDao();
			Eduex eduex = eduexdao.find(username);
//			if(eduex != null) {
//				eduex.setName(eduex.getName().equals("null") ? "学校名称" : eduex.getName());
//				eduex.setStudy(eduex.getStudy().equals("null")? "所学专业":eduex.getStudy());
//				eduex.setTime(eduex.getTime().equals("null")?"入学时间":eduex.getTime());
//				eduex.setFitime(eduex.getFitime().equals("null")?"毕业时间":eduex.getFitime());
//			}
			WorkexDao workexdao = new WorkexDao();
			Workex workex = workexdao.find(username);
//			if(workex != null) {
//				workex.setCompany(workex.getCompany().equals("null")?"公司名称":workex.getCompany());
//				workex.setPosition(workex.getPosition().equals("null")?"职位":workex.getPosition());
//				workex.setTime(workex.getTime().equals("null")?"开始时间":workex.getTime());
//				workex.setFitime(workex.getFitime().equals("null")?"结束时间":workex.getFitime());
//			}
			EmoexDao emoexdao = new EmoexDao();
			Emoex emoex = emoexdao.find(username);
			if(emoex != null) {
				emoex.setMarry(emoex.getMarry().equals("null")?"婚姻状况":emoex.getMarry());
				emoex.setJl(emoex.getJl().equals("null")?"情感经历":emoex.getJl());
			}
			request.setAttribute("eduex", eduex);
			request.setAttribute("workex", workex);
			request.setAttribute("emoex", emoex);
			HttpSession session = request.getSession();
			session.setAttribute("account", username);
			request.setAttribute("selfInfo", info);

			request.getRequestDispatcher("/ReallyHomePage.jsp").forward(request, response);
		}else {
			request.setAttribute("msg1","密码错误" );
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
