package com.zhongxing.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CodeServlet extends HttpServlet {

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

		doPost(request, response);
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
		
		
		response.setHeader("Cache-Control","No-Cache");
		response.setDateHeader("Expires", 0);
		int width = 166;  
        int height = 44;  
        Font font = new Font("宋体", Font.PLAIN, 25);  
        String code="123456789qwertyuiopasdfghjklzxcvbnm";
        //创建一个图片缓冲区  
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);  
        //获取图片处理对象  
        Graphics graphics = image.getGraphics();  
        //填充背景色  
        graphics.setColor(getRandomColor());  
        graphics.fillRect(1, 1, width - 1, height - 1);  
        //设定边框颜色  
        graphics.setColor(getRandomColor());  
        graphics.drawRect(0, 0, width - 1, height - 1);    
        //写入文字  
        graphics.setColor(getRandomColor());  
        graphics.setFont(font); 
        StringBuffer sb=new StringBuffer();
        for(int i=1;i<7;i++){
        	int index=(int)(Math.random()*32);
        	String content=String.valueOf(code.charAt(index));
        	sb.append(content);
        	graphics.drawString(content,(int)(Math.random()*width/6)+(int)(width/6)*i, 24);
        }
        graphics.dispose();
        HttpSession session = request.getSession();
        session.setAttribute("code", sb.toString());
        ImageIO.write(image, "PNG", response.getOutputStream()); 
        image.flush();
	}
	
	public static Color getRandomColor(){  
        Random random = new Random();  
        int r = random.nextInt(255);   
        int g = random.nextInt(255);  
        int b = random.nextInt(255);  
        return new Color(
        		r>150?r:r+100, 
        		g>150?g:g+100, 
        		b>150?b:b+100);  
    }  

}
