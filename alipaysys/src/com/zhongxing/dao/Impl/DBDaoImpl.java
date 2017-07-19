package com.zhongxing.dao.Impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.zhongxing.dao.DBDao;
import com.zhongxing.util.JDBCUtil;

public class DBDaoImpl implements DBDao {
	/**
	 * 根据sql语句查询返回对应class的集合
	 * @param sql
	 * @param clazz
	 * @return List<T>
	 */
	@Override
	public <T> List<T> select(String sql, Class<T> clazz) {
		List<T> li=new ArrayList<T>();
		Connection conn=JDBCUtil.getConnection("alipay", "root", "123");
		PreparedStatement pre=null;
		ResultSet re=null;
		try {
			pre=conn.prepareStatement(sql);
		} catch (SQLException e) {
			System.out.println("加载PreparedStatement失败 ");
			e.printStackTrace();
			return li;
		}
		try {
			re=pre.executeQuery();
			ResultSetMetaData meta=re.getMetaData();
			while(re.next()){
				T t=clazz.newInstance();
				for(int i=1;i<=meta.getColumnCount();i++){
					String data=re.getString(i);
					if(data==null){
						continue;
					}
					StringBuffer sb=new StringBuffer("et"+meta.getColumnName(i));
					sb.setCharAt(2, Character.toTitleCase(sb.charAt(2)));
					Method get=clazz.getMethod("g"+sb.toString(), new Class[]{}); 
					Method set=clazz.getMethod("s"+sb.toString(), new Class[]{get.getReturnType()});
					Class type=get.getReturnType();
					if(type.getName().equals("java.util.Date")){
						if(meta.getColumnClassName(i).equals("java.sql.Date")){
							SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
							set.invoke(t,sd.parse(re.getString(i)));
						}else if(meta.getColumnClassName(i).equals("java.sql.Timestamp")){
							SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
							set.invoke(t,sd.parse(re.getString(i)));
						}else if(meta.getColumnClassName(i).equals("java.sql.Time")){
							set.invoke(t, re.getString(i));
						}
					}else{
					Constructor con=type.getConstructor(new Class[]{String.class});
					set.invoke(t,con.newInstance(re.getString(i)));
					}
				}
				li.add(t);
			}
		} catch (SQLException e) {
			System.out.println("加载ResultSet失败");
			e.printStackTrace();
		} catch (InstantiationException e) {
			System.out.println("创建对象失败");
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			System.out.println("创建反射对象失败或使用调用方法出错");
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			System.out.println("获取方法失败");
			e.printStackTrace();
		} catch (SecurityException e) {
			System.out.println("没有权限获取方法失败");
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			System.out.println("创建反射对象失败");
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			System.out.println("创建反射对象失败");
			e.printStackTrace();
		} catch (ParseException e) {
			System.out.println("格式化时间失败");
			e.printStackTrace();
		}finally{
			JDBCUtil.close(conn, pre, re);
		} 
		return li;
	}

	@Override
	public boolean delete(String sql) {
		return this.db(sql);
	}

	@Override
	public boolean insert(String sql) {
		return this.db(sql);
	}

	@Override
	public boolean update(String sql) {
		return this.db(sql);
	}
	private boolean db(String sql){
		Connection conn=JDBCUtil.getConnection("alipay", "root", "123");
		PreparedStatement pre=null;
		boolean flag=false;
		try {
			pre=conn.prepareStatement(sql);
			pre.execute();
			flag=true;
		} catch (SQLException e) {
			System.out.println("加载preparedstatement失败");
			flag=false;
			e.printStackTrace();
		}
		return flag;
	}
	
}
