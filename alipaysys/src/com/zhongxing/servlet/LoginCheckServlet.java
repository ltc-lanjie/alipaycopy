package com.zhongxing.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhongxing.server.PwdCheck;
import com.zhongxing.server.impl.PwdCheckImpl;

public class LoginCheckServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginCheckServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	

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
			this.doPost(request,response);
		
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

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("user");
		String pwd=request.getParameter("pwd");
		PwdCheck check=new PwdCheckImpl();
		String url=check.loginCheck(name, pwd);
		String date1=request.getParameter("date");
		HttpSession session=request.getSession();
		String date2=(String) session.getAttribute("date");
		if(date1==null||date2==null){
			return;
		}
		if(date1.equals(date2)){
			if(url.equals("alipay/Login.jsp")){
				request.setAttribute("login", "该账户不存在或登录密码出错已达上限，请更换账户。"); 
			}else{
				session.setMaxInactiveInterval(5*60);
				session.setAttribute("user", name);
			}
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("/"+url);
		rd.forward(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	
}
