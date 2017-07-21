package com.zhongxing.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;

public class Code {
	public String changeCode(ServletOutputStream outputStream){
		int width = 166;  
        int height = 44;  
        Font font = new Font("宋体", Font.PLAIN, 25);  
        String code="123456789qwertyuiopasdfghjklzxcvbnm";
        //创建一个图片缓冲区  
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);  
        //获取图片处理对象  
        Graphics graphics = image.getGraphics();  
        //填充背景色  
        graphics.setColor(getRandomColor(200));  
        graphics.fillRect(1, 1, width - 1, height - 1);  
        //设定边框颜色  
        graphics.setColor(getRandomColor(100));  
        graphics.drawRect(0, 0, width - 1, height - 1);    
        //写入文字  
        graphics.setColor(getRandomColor(50));  
        graphics.setFont(font); 
        StringBuffer sb=new StringBuffer();
        for(int i=1;i<6;i++){
        	int index=(int)(Math.random()*32);
        	String content=String.valueOf(code.charAt(index));
        	sb.append(content);
        	graphics.drawString(content,(int)(Math.random()*width/6)+(int)(width/6)*i, 24);
        }
        graphics.dispose();
      
        try {
			ImageIO.write(image, "PNG", outputStream);
		} catch (IOException e) {
			System.out.println("更换验证码失败");
			e.printStackTrace();
		} 
        image.flush();
      
        return sb.toString();
	}
	
	public static Color getRandomColor(int color){  
        Random random = new Random();  
        int r = random.nextInt(50)+color;   
        int g = random.nextInt(50)+color;  
        int b = random.nextInt(50)+color;  
        return new Color(r, g, b);  
    }  
	public static void main(String[] args) {
		
	}
}
