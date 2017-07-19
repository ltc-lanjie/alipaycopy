package com.zhongxing.server;

import com.zhongxing.entity.Card;
import com.zhongxing.entity.Loginstatus;
import com.zhongxing.entity.User;

/**
 * 用于注册账号一些的业务逻辑处理
 * @author ZhongXing
 *
 */
public interface RegisterAccount {
	/**
	 * 注册账号，要接收用户个人信息，银行卡，和用户登录信息
	 * 先查询判断这个手机或者邮箱是否注册了支付宝账户，
	 * 用户登录信息 用户名用身份证名，手机注册就不需要邮箱，邮箱注册要有手机号
	 * 插入数据后拿到id，再把数据插入到个人信息表和，银行卡表
	 * 最后初始化账户余额表
	 * @param loginstatus 登录信息
	 * @param user 用户信息
	 * @param card 银行卡
	 * @return
	 */
	boolean register(Loginstatus loginstatus,User user,Card card);
}
