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
		<link rel="stylesheet" type="text/css" href="./css/main.css"/>
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
			body {
				overflow: hidden;
				margin: 0px;
			}
			
			.main {
				position: absolute;
				<% if((int)(Math.random()*3)==1) {
					out.print("background:url('./image/login_background.jpg');");
				}
				else {
					out.print("background:url('./image/login_background1.jpg');");
				}
				%>height:100%;
				width:100%;
				display:inline-block;
				background-size:100% 100%;
			}
			
		</style>
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
							<li>|</li>
							<li>
								<a href='https://cshall.alipay.com/hall/index.htm' target='_Blank'>服务大厅</a>
							</li>
							<li>|</li>
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
										<a href='' class='register'>免费注册</a>
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
							<a href='https://auth.alipay.com/login/index.htm' target='_Blank'>International Business</a>
						</li>
						<li>|</li>

						<li>
							<a href='https://ab.alipay.com/i/jieshao.htm' target='_Blank'>About Alipay</a>
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
		function $(obj) {
			var newObj = document.querySelectorAll(obj);
			if(newObj.length == 1) {
				return newObj[0];
			}
			return newObj;
		}
		$('#code_login').onclick = function(event) {
			$('#pwd_login').className = 'code_login';
			event.target.className = 'pwd_login';
			$('.login_box1').style.display = 'block';
			$('.login_box2').style.display = 'none';
		}
		$('#pwd_login').onclick = function(event) {
			$('#code_login').className = 'code_login';
			event.target.className = 'pwd_login';
			$('.login_box1').style.display = 'none';
			$('.login_box2').style.display = 'block';
		}
	</script>

</html>