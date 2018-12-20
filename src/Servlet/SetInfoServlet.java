package Servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Dao.EduexDao;
import Dao.EmoexDao;
import Dao.SelfInfoDao;
import Dao.WorkexDao;
import domain.Eduex;
import domain.Emoex;
import domain.SelfInfo;
import domain.Workex;

/**
 * Servlet implementation class SetInfoServlet
 */

@MultipartConfig
@WebServlet("/SetInfoServlet")
public class SetInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String account =(String) request.getSession().getAttribute("account");
	  	//System.out.println(account);
		String username = request.getParameter("username");
		String birth = request.getParameter("birth");
		String telephone = request.getParameter("telephone");
		String city = request.getParameter("city");
		String web = request.getParameter("web");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String[] sex = request.getParameterValues("sex");
		SelfInfoDao dao = new SelfInfoDao();
		SelfInfo info = new SelfInfo();
		info.setAccount(account);
		
		 // 1. 获取头像并上传
        Part part = request.getPart("headImage"); //<input type="file" name="headImage">
        if(part != null && part.getContentType().contains("image")) {
            // 1.1 获取该web在服务器上的物理位置
            String path = getServletContext().getRealPath("/");
            // 1.2 获取上传的头像的文件名称
            String fileTag = "filename=\"";
            String header = part.getHeader("content-disposition");
            String filename = header.substring(header.indexOf(fileTag) + fileTag.length(),
                    header.lastIndexOf("\""));
            // 1.3 生成自定义文件名：使用当前时间
            String filenamePath = "images" + File.separator + System.currentTimeMillis() +
                    filename.substring(filename.lastIndexOf("."));
            part.write(path + File.separator + filenamePath);    
		// 进行数据库修改操作
            if(filenamePath.equals("")&& filenamePath != null) {
            	
            }else {
            	
            	info.setImg(filenamePath);	
            }
        }
        	 if(sex.equals("保密")){
     			
     		}else {
     			for(int i = 0;i < sex.length; i++) {
     				info.setSex(sex[i]);
     			}
     		}
     		if(username.equals("真实姓名")) {
     	
     		}else {
     			info.setXm(username);
     		}
     		if(birth.equals("1997-04-12")) {
     			
     		}else {
     			info.setBirth(birth);
     		}
     		if(telephone.equals("11位手机号码")) {
     			
     		}else {
     			info.setPhone(telephone);
     		}
     		if(city.equals("现居城市")) {
     			
     		}else {
     			info.setCity(city);
     		}
     		if(web.equals("example.com")) {
     			
     		}else {
     			info.setWeb(web);
     		}
     		if(email.equals("用于收取通知，找回密码")) {
     			
     		}else {
     			info.setEmail(email);
     		}
     		if(address.equals("当前通讯地址")) {
     		
     		}else {
     			info.setAddress(address);
     		}
     		
     		boolean b = dao.update(info);
//     		EmoexDao emoexdao = new EmoexDao();
//			Emoex emoex = emoexdao.find(account);
//			WorkexDao workexdao = new WorkexDao();
//			Workex workex = workexdao.find(account);
//			EduexDao eduexdao = new EduexDao();
//			Eduex eduex = eduexdao.find(account);
//			request.setAttribute("eduex", eduex);
//			request.setAttribute("workex", workex);
//     		request.setAttribute("emoex", emoex);
//     		request.setAttribute("selfInfo", info);
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
