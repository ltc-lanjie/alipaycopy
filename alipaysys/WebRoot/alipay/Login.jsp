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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{
			overflow:hidden;
			margin:0px;
		}
		.main{
			position:absolute;
			<%
				if((int)(Math.random()*3)==1){
					out.print("background:url('./image/login_background.jpg');");	
				}else{
					out.print("background:url('./image/login_background1.jpg');");	
				}
			%>
			height:100%;
			width:100%;
			display:inline-block;
			background-size:100% 100%;
		}
		.head{
			position: relative;
		    width: 100%;
		    height: 28px;
		    line-height: 28px;
		    background: #1E1B29;
		    color: #fff;
		}
		.head_center{
			width: 990px;
		    height: 27px;
		    margin: 0 auto;
		}
		.head_left{
			height:100%;
			float:left;
			line-height:28px;
		}
		.head_left a{
			color:#0ae;
			font-size: 13px;
		}
		a{
			text-decoration:none;
		}
		.head_right{
			float:right;
		}
		li a{
			color:#AAABAF;
			font-size:13px;
		}
		ul,li{
			list-style:none;
			display:inline;
			color:#AAABAF;
			font-size:13px;
			padding: 0 2px;
		}
		.center{
			height:auto;
			width:990px;
			position:relative;
			margin:0px auto;
			padding:50px 0;
			min-height:450px;
		}
		.center_left_logo{
			height:40px;
			width:114px;
			background:url('./image/main_logo.png');
			background-size:114px 40px;
			
		}
		.center_box{
			float: right;
		    margin: 27px 95px;
		    width: 286px;
		    height: auto;
		    position: relative;
		    display: block;
		}
		#pwd_login{
			float: left;
		    width: 50%;
		    text-align: center;
		    font-size: 16px;
		    padding: 15px 0 4px;
		    cursor: pointer;	
		}
		.login_box{
			width:286px;
			background:rgba(0,0,0,.5);
			height:auto;
			min-height:275px;
		}
		.center_login{
			width:100%;
			height:auto;
			min-height:42px;
			position:relative;
		}
		.code_login{
			color: #fff;
			border-bottom: 2px #fff solid;
			
		}
		#code_login{
			float: left;
		    width: 50%;
		    text-align: center;
		    font-size: 16px;
		    padding: 15px 0 4px;
		    cursor: pointer;
		}
		.pwd_login{
			color: #0ae;
			border-bottom: 2px solid #0ae;
			
		}
		.login_bottom{
			width:100%;
			height:auto;	
			min-height:100px;	
		}
		.login_box1,.login_box2{
			height:auto;
			
		}
		.login_box1{
			display:none;
			width:100%;
		}
		.login_box2{
			display:block;
			
			margin:auto;
			width:220px;
		}
		.code_box{
			position:relative;
			height:170px;
			width:190px;
			margin:0 auto;
			text-align:center;
			padding:17px 0 0;
		}
		.code{
			background:url('./image/login_code.png');
			background-size:120px 120px;
			height:120px;
			width:120px;
			position:relative;
			margin:auto;
		}
		.code_box_box{
			height:120px;
			width:120px;
			background:#fff;
			position:relative;
			margin:auto;
			padding:8px;
		}
		.code_right{
			background:url('./image/login_code_right.png');
			background-repeat:no-repeat;
			background-position: 0 -320px;
			height:170px;
			width:180px;
			position:absolute;
			top:-21px;
			left:40px;
			opacity:0;
			transition:all .2s;
		}
		.code_bottom{
			text-align:center;
			margin-top:7px;
		}
		.code_line1{
			font-size:14px;
			color:#fff;
			text-align:center;
			margin-bottom:12px;
		}
		.code_line2{
			color:#fff;
			font-size:13px;
			font-style:normal;
		}
		.code_line2 em{
			font-style:normal;
		}
		.code_line2 a{
			color:#fff;
			font-size:14px;
		}
		.user_box{
			width:100%;
			margin-top:17px;
			height:39px;
			margin-bottom:10px;
		}
		.user,.pwd{
			height:40.5px;
			width:179px;
			position:absolute;
			left: 72px;
			padding:13px;
			color:#595959;
			border:0px;
			background-color:#fff !important;
		}
		
		.pwd_box{
			width:100%;
			
			height:39px;
		}
		input:-webkit-autofill { 
			box-shadow: 0 0 0px 1000px white inset;
		}
		.format_pwd_box {
			height:22px;
			line-height:22px;
			text-align:right;
			margin-top:8px;
			width:100%;
			margin-bottom:15px;
		}
		.format_pwd_box a{
			color:#fff;
			font-size:13px;
			
		}
		.login_button{
			height:40px;
			width:219px;
			background:#0ae;
			border-radius:5px;
			border:0px;
			font-size:18px;
			color:#fff;
			cursor:pointer;
			letter-spacing:8px;
			margin-bottom:5px;
		}
		.login_button:hover{
			background:#00a3d2;
		}
		.login_bottom{
			height:28px;
			line-height:28px;
			width:100%;
		}
		.taobao_login{
			float:left;
			color:#fff;
			font-size:12px;
		}
		.register{
			float:right;
			color:#0ae;
			font-size:12px;
		}
		.button{
			width: 100%;
    		height: 80px;
   			color: #fff;
		}
		.button_line2{
			width:990px;
			height:24px;
			text-align:center;
			line-height:24px;
			margin:auto;
		}
		.button_line1{
			width:990px;
			height:36px;
			line-height:36px;
			text-align:center;
			margin:auto;
		}
		.button_line1 ul li {
			list-style:none;
			color:#fff;
			font-size:13px;
		}
		.button_line1 ul li a{
			color:#fff;
		}
		.button_line2 a{
			color:#fff;
			font-size:13px;
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
   							<li>
   							<li>|<li>
   							<li>
   								<a href='https://cshall.alipay.com/hall/index.htm' target='_Blank'>服务大厅</a>
   							<li>
   							<li>|<li>
   							<li>
   								<a href='https://egg.alipay.com/egg/index.htm' target='_Blank'>提建议</a>
   							<li>
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
   								<form method='post' action=''  autocomplete="off">
   									<div class='user_box'>
   										<img alt="用户" src="./image/login_user_logo.png">
   										<input type='text' name='user' class='user' placeholder='邮箱/手机号/淘宝用户名' required>
   									</div>
   									<div class='pwd_box'>
   										<img alt="密码" src="./image/login_pwd_logo.png">
   										<input type='password' name='pwd' class='pwd'  required>
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
  function $(obj){
		var newObj=document.querySelectorAll(obj);
		if(newObj.length==1){
			return newObj[0];
		}
		return newObj;
	}
 	$('#code_login').onclick=function(event){
 		$('#pwd_login').className='code_login';
 		event.target.className='pwd_login';
 		$('.login_box1').style.display='block';
 		$('.login_box2').style.display='none';
 	}
 	$('#pwd_login').onclick=function(event){
 		$('#code_login').className='code_login';
 		event.target.className='pwd_login';
 		$('.login_box1').style.display='none';
 		$('.login_box2').style.display='block';
 	}
  	//----------------
  	$('#code').onmouseover=function(event){
  		$('.code').style.opacity=0;
  		$('.code_right').style.opacity=1;
  		$('.code_right').style.transform='translate(-32px,0px)';
  	}
  	$('#code').onmouseout=function(event){
  		$('.code').style.opacity=1;
  		$('.code_right').style.opacity=0;
  		$('.code_right').style.transform='translate(0px,0px)';
  	}
  </script>
</html>
