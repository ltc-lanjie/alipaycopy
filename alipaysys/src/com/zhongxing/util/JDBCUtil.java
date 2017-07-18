package com.zhongxing.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
	public static Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","123456");
		} catch (ClassNotFoundException e) {
			System.out.println("加载驱动失败");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static void close(Connection conn,PreparedStatement pre,ResultSet re){
			try {
				if(re!=null){
				re.close();
				}
				if(pre!=null){
					pre.close();
				}
				if(conn!=null){
					conn.close();
				}
			} catch (SQLException e) {
				System.out.println("�ر���ʧ��");
			}
		
	}
}
