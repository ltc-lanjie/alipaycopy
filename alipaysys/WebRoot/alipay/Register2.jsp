<%@ page language="java" import="java.util.*,com.zhongxing.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册 - 支付宝</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache,must-revalidate">
	<META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="./css/Register.css">
		
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%
		new Code().changeCode("D:/zhengyuelai/java/MyEclipse/alipaycopy/alipaysys/WebRoot/image/code.png");
	%>
	<style type="text/css">
		body{
			margin:0px;
		}
		.main{
			height:100%;
			width:100%;
			position:relative;
			display:inline-block;
		}
		.register_big_box{
			height:auto;
			min-height:500px;
		}
	</style>
	</head>
  
  <body>
  
   	<div class='main'>
  		<div class='top'>
  			<div class='top_center'>
  				<div class='top_left'>
  					<a href='#'>
  						<img alt="支付宝" src="./image/register_alipay_logo.png" width='114px' height='40px'>
  					</a>	
  						<strong class='register_font'>注册</strong>
  					
  				</div>
  				<div class='top_right'>
  					<a href='#'>登录</a>
  					<em>-</em>
  					<a href='#'>注册</a>
  					<em>|</em>
  					<div class='top_select_box1'>
  						<a href='#'>我的支付宝</a>
  					</div>
  					<em>|</em>
  					<a href='#'>服务大厅</a>
  					<em>|</em>
  					<a href='#'>提建议</a>
  					<em>|</em>
  					<div class='top_select_box2'>
  						<a href='#'>更多</a>
  						
  					</div>
  					
  				</div>
  			</div>
  		 </div>
  		<div class='center'>
  			<div class='center_head'>
  				<div class='box1'>
  					<div class='rotate_font'>1</div>
  					<div class='rotate_font2'>创建用户</div>
  				</div>
  				<div class='border'></div>
  				<div class='box1 bg_gold'>
  					<div class='rotate_font '>2</div>
  					<div class='rotate_font2 gold'>设置身份信息</div>
  				</div>
  				<div class='border  '></div>
  				<div class='box1 bg_gold'>
  					<div class='rotate_font'>3</div>
  					<div class='rotate_font2 gold'>设置支付方式</div>
  				</div>
  				<div class='border'></div>
  				<div class='box1 bg_gold' >
  					<div class='rotate_font '>4</div>
  					<div class='rotate_font2 gold'>成功</div>
  				</div>
  			</div>
  			
  			<div class='register_big_box'>
  				<div class='warning_box'>
  					<i class='p_logo'></i>
  					<p class='p_size'>为了给你提供更好的支付和金融服务，你需要填写的身份信息享受会员保障服务。</p>
  					<p class='p_size'>身份信息一经录入不可更改，隐私信息未经本人许可严格保密。</p>
  				</div>
  				<div class='register2_line1'>
  					<label class='user1'>支付宝账户名</label>
  					<strong class='user2'>914694648@qq.com</strong>
  				</div>
  				<div class='title_line1'>
  					<strong class='strong_f1'>设置登录密码</strong>
  					<label class='strong_f2'>登录时需验证，保护账户信息</label>
  				</div>
  				<div class='title_line2'>
  					<div class='title_line2_pwd'>
  						<input type='password' class='pwd1' required>
  					</div>
  					<label class='pwd_text'>登录密码</label>
  				</div>
  				<div class='title_line3'>
  					<div class='title_line2_pwd'>
  						<input type='password' class='pwd1' required>
  					</div>
  					<label class='pwd_text'>再输入一次</label>
  				</div>
  		 </div>
  		
  	</div>
  </body>
  <script type="text/javascript">
  
  </script>
</html>
