package com.zhongxing.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;

public class Code {
	public void changeCode(String file1){
		Font font = new Font("宋体", Font.PLAIN, 25);  
        //图片大小  
        int width = 166;  
        int height = 44;  
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
          
        //输出文件  
        File file = new File(file1);  
        try {  
            ImageIO.write(image, "PNG", file);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
          
        //释放资源  
        graphics.dispose(); 
	}
	
	public static Color getRandomColor(){  
        Random random = new Random();  
        int r = random.nextInt(255);   
        int g = random.nextInt(255);  
        int b = random.nextInt(255);  
        return new Color(r, g, b);  
    }  
	public static void main(String[] args) {
		new Code().changeCode("D:\\zhengyuelai\\java\\MyEclipse\\alipaycopy\\alipaysys\\WebRoot\\image\\code.png");
	}
}
