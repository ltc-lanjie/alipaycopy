package com.zhongxing.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
		String name=request.getParameter("user");
		String pwd=request.getParameter("pwd");
		PwdCheck check=new PwdCheckImpl();
		String url=check.loginCheck(name, pwd);
		if(url.equals("alipay/Login.jsp")){
			request.setCharacterEncoding("utf-8");
			request.setAttribute("login", "该账户不存在或登录密码出错已达上限，请更换账户。");
		}else{
			HttpSession session=request.getSession();
			session.setAttribute("user", name);
			session.setMaxInactiveInterval(5*60);
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("./"+url);
		rd.forward(request, response);
		PrintWriter out = response.getWriter();
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	
}
