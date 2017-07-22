package com.zhongxing.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhongxing.entity.Address;
import com.zhongxing.entity.Loginstatus;
import com.zhongxing.entity.User;

public class CreateUser1 extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8;");
		PrintWriter out = response.getWriter();
		User user=new User();
		Loginstatus loginstatus=new Loginstatus();
		String tel = request.getParameter("tel");
		String loginPwd = request.getParameter("loginPwd");
		String payPwd = request.getParameter("payPwd");
		String uname=new String(request.getParameter("uname").getBytes("iso-8859-1"),"utf-8");
		String sex=new String(request.getParameter("sex").getBytes("iso-8859-1"),"utf-8");
		String uidentity = request.getParameter("uidentity");
		if(tel!=""&&loginPwd!=""&&payPwd!=""&&uname!=""&&sex!=""&&uidentity!=""){
			user.setUtruename(uname);
			user.setUsex(sex);
			user.setUidentity(uidentity);
			loginstatus.setUtelphone(tel);
			loginstatus.setUloginpwd(loginPwd);
			loginstatus.setUpaypwd(payPwd);
			HttpSession session=request.getSession();
			session.setAttribute("user", user);
			session.setAttribute("loginstatus", loginstatus);
			response.sendRedirect("./alipay/Register3.jsp");
		}
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
