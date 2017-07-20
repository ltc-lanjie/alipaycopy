<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<base href="<%=basePath%>">
		<title>登录 - 支付宝</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="./css/main.css">
		<script type="text/javascript" src="./js/jquery-3.2.1.js"></script>
	</head>

	<body>
		<div class='main'>
			<div class='head'>
				<div class='head_center'>
					<div class='head_left'>
						<a href='https://mobile.alipay.com/index.htm'>支付宝APP</a>
					</div>
					<div class='head_right'>
						<ul>
							<li>
								<a href='./' target='_Blank'>支付宝首页</a>
							</li>
							<li>|
							</li>
							<li>
								<a href='https://cshall.alipay.com/hall/index.htm' target='_Blank'>服务大厅</a>
							</li>
							<li>|
							</li>
							<li>
								<a href='https://egg.alipay.com/egg/index.htm' target='_Blank'>提建议</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class='center'>
				<h1>
   					<a href='./'>
   						<div class='center_left_logo'></div>
   					</a>
   				</h1>
				<div class='center_box'>
					<div class='login_box'>
						<div class='center_login'>
							<div class='code_login' id='code_login'>扫码登录</div>
							<div class='pwd_login' id='pwd_login'>账密登录</div>
						</div>
						<div class='login_bottom'>
							<div class='login_box1'>
								<div class='code_box'>
									<div class='code_box_box'>
										<div class='code'></div>
										<div class='code_right'></div>
									</div>
									<div class='code_bottom'>
										<div class='code_line1'>请支付手机支付宝扫码</div>
										<div class='code_line2'>
											<a href='#' id='code'>使用帮助</a>
											<em>|</em>
											<a href=''>下载手机支付宝</a>
										</div>
									</div>
								</div>

							</div>
							<div class='login_box2'>
								<form method='post' action='' autocomplete="off">
									<div class='user_box'>
										<img alt="用户" src="./image/login_user_logo.png">
										<input type='text' name='user' class='user' placeholder='邮箱/手机号/淘宝用户名' required>
									</div>
									<div class='pwd_box'>
										<img alt="密码" src="./image/login_pwd_logo.png">
										<input type='password' name='pwd' class='pwd' required>
									</div>
									<div class='format_pwd_box'>
										<a href=''>忘记登录密码?</a>
									</div>
									<input type='submit' value='登录' class='login_button'>
									<div class='login_bottom'>
										<a href='' class='taobao_login'>淘宝会员登录</a>
										<a href='./alipay/Register.jsp' class='register'>免费注册</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class='button'>
				<div class='button_line1'>
					<ul>
						<li>
							<a href='https://ab.alipay.com/' target='_Blank'>关于支付宝</a>
						</li>
						<li>|</li>
						<li>
							<a href='https://job.alibaba.com/zhaopin/index.htm' target='_Blank'>诚征英才</a>
						</li>
						<li>|</li>
						<li>
							<a href='https://ab.alipay.com/i/lianxi.htm' target='_Blank'>联系我们</a>
						</li>
						<li>|</li>
						<li>
							<a href='https://auth.alipay.com/login/index.htm?goto=https%3A%2F%2Fwww.alipay.com%2F' target='_Blank'>International Business</a>
						</li>
						<li>|</li>

						<li>
							<a href='https://ab.alipay.com/i/jieshao.htm#en' target='_Blank'>About Alipay</a>
						</li>
					</ul>

				</div>
				<div class='button_line2'>
					<a href='https://fun.alipay.com/certificate/jyxkz.htm' target='_Blank'>ICP证：沪B2-20150087</a>
				</div>
			</div>
		</div>

	</body>
	<script type="text/javascript">
		$(document).ready(function() {
			if(Math.random() * 3 == 1) {
				$(".main").css("background-image", "url(./image/login_background.jpg)");
			} else {
				$(".main").css("background-image", "url(./image/login_background1.jpg)");
			}
		});
		$("#code_login").on("click", function() {
			$('#pwd_login').addClass("code_login");
			$('#pwd_login').removeClass("pwd_login");
			$('#code_login').addClass("pwd_login");
			$('#code_login').removeClass("code_login");
			$('.login_box1').css("display", "block");
			$('.login_box2').css("display", "none");
		});

		$("#pwd_login").on("click", function() {
			$('#code_login').addClass("code_login");
			$('#code_login').removeClass("pwd_login");
			$('#pwd_login').addClass("pwd_login");
			$('#pwd_login').removeClass("code_login");
			$('.login_box2').css("display", "block");
			$('.login_box1').css("display", "none");
		});
		//----------------
		$("#code").on("mouseover", function() {
			$(".code").css("opacity", 0);
			$(".code_right").css("opacity", 1);
			$(".code_right").css("transform", "translate(-32px,0px)");
		});
		$("#code").on("mouseout", function() {
			$(".code").css("opacity", 1);
			$(".code_right").css("opacity", 0);
			$(".code_right").css("transform", "translate(0px,0px)");
		});
	</script>

</html>
