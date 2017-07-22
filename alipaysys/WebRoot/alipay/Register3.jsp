<%@ page language="java" import="java.util.*,com.zhongxing.util.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

<style type="text/css">
body {
	margin: 0px;
}

.main {
	height: 100%;
	width: 100%;
	position: relative;
	display: inline-block;
}

.register_big_box {
	height: auto;
	min-height: 500px;
	background-image: url(./image/register3_logo.png);
	background-repeat: no-repeat;
	background-position-x: right;
	background-color: #fff;
}
</style>
</head>
<body>
	<div class='main'>
		<div class='top'>
			<div class='top_title'></div>
			<div class='top_center'>
				<div class='top_left'>
					<a href='#'> <img alt="支付宝"
						src="./image/register_alipay_logo.png" width='114px' height='40px'>
					</a> <strong class='register_font'>注册</strong>
				</div>
				<div class='top_right'>
					<a href='#'>登录</a> <em>-</em> <a href='#'>注册</a> <em>|</em>
					<div class='top_select_box1'>
						<a href='#'>我的支付宝</a>
					</div>
					<em>|</em> <a href='#'>服务大厅</a> <em>|</em> <a href='#'>提建议</a> <em>|</em>
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
				<div class='border' style='background:#f16f20;'></div>
				<div class='box1 bg_gold' style='background:#f16f20;'>
					<div class='rotate_font '>2</div>
					<div class='rotate_font2 gold' style='color:#f16f20;'>设置身份信息</div>
				</div>
				<div class='border' style='background:#f16f20;'></div>
				<div class='box1 bg_gold' style='background:#f16f20;'>
					<div class='rotate_font'>3</div>
					<div class='rotate_font2 gold' style='color:#f16f20;'>设置支付方式</div>
				</div>
				<div class='border'></div>
				<div class='box1 bg_gold'>
					<div class='rotate_font '>4</div>
					<div class='rotate_font2 gold'>成功</div>
				</div>
			</div>
			<div class='register_big_box'>
				<div class='register3_hint'>
					<label class='hint2'>你正在进行身份验证，请输入一张本人银行卡验证并绑定。</label> <label
						class='hint1'>设置支付方式</label>
				</div>
				<div class='title_line2'>
					<label class='pwd_text'>银行卡号</label>
					<div class='title_line2_pwd'>
						<input type='text' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
					<label class='pwd_text'>持卡人姓名</label>
					<div class='title_line2_pwd'>
						<input type='text' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
					<label class='pwd_text'>证件</label>
					<div class='title_line2_pwd'>

						<div class='identific'>身份证</div>
						<input type='text' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
					<label class='pwd_text'>手机号码</label>
					<div class='title_line2_pwd'>
						<input type='text' class='pwd1' placeholder='在此填入手机号码' required>
						<div class='tel_code'>获取验证码</div>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
					<div class='title_line2_pwd'>
						<input type='submit'
							style='background:#f37422;margin-top:20px;width: 178px;'
							class='register2_submit' value='同意协议并确定' />
					</div>
				</div>
				<div class='title_line2'>
					<div class='title_line2_pwd'>
						<a href='#' style='color:#09c;font-size: 13px;margin-left:200px'>《快捷支付服务相关协议》</a>
					</div>
				</div>
			</div>
		</div>
</body>
<script src="./js/myjs.js"></script>
<script type="text/javascript">
	var pwd1_check_flag0=false;
  	$('.pwd1')[0].onblur=function(){
  		pwd1_check_flag0=check_inputByReg($('.pwd1_check')[0],this.value,/^[0-9]{16,19}$/g);
  	}
  	var pwd1_check_flag1=false;
  	$('.pwd1')[1].onblur=function(){
  		pwd1_check_flag1=check_input($('.pwd1_check')[1],this.value,'');
  	}
  	var pwd1_check_flag2=false;
  	$('.pwd1')[2].onblur=function(){
  		pwd1_check_flag2=check_inputByReg($('.pwd1_check')[2],this.value,/^[0-9a-zA-Z]{17}[0-9xy]$/ig);
  	}
  	var pwd1_check_flag3=false;
  	$('.pwd1')[3].onblur=function(){
  		pwd1_check_flag3=check_inputByReg($('.pwd1_check')[3],this.value,/^1[0-9]{10}$/ig);
  	}
  	$('.register2_submit').onclick=function(){
  		console.log(pwd1_check_flag0+" "+pwd1_check_flag1+" "+pwd1_check_flag2+" "+pwd1_check_flag3);
  		if(pwd1_check_flag0&&pwd1_check_flag1&&pwd1_check_flag2&&pwd1_check_flag3){
  			location.href="./CreateUser2?card="+$('.pwd1')[0].value+"&cname="+$('.pwd1')[1].value+"&cidentity="+$('.pwd1')[2].value+"&tel="+$('.pwd1')[3].value;
  		}else alert("输入信息有误，请确认后重试！");
  	}
  	console.log('<%=session.getAttribute("user") %>');
</script>
</html>
