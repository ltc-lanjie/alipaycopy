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
}
</style>
</head>

<body>

	<div class='main'>
		<div class='top'>
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
				<div class='border  '></div>
				<div class='box1 bg_gold'>
					<div class='rotate_font'>3</div>
					<div class='rotate_font2 gold'>设置支付方式</div>
				</div>
				<div class='border'></div>
				<div class='box1 bg_gold'>
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
					<label class='user1'>支付宝账户名</label> <strong class='user2'><%=request.getParameter("telphone")%></strong>
				</div>
				<div class='title_line1'>
					<strong class='strong_f1'>设置登录密码</strong> <label class='strong_f2'>登录时需验证，保护账户信息</label>
				</div>
				<div class='title_line2'>
				<label class='pwd_text'>登录密码</label>
					<div class='title_line2_pwd'>
						<input type='password' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line3'>
				<label class='pwd_text'>再输入一次</label>
					<div class='title_line2_pwd'>
						<input type='password' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>

				<div class='title_line1'>
					<strong class='strong_f1'>设置支付密码</strong> <label class='strong_f2'>交易付款或账户信息更改时需输入（不能与淘宝或支付宝登录密码相同）</label>
				</div>
				<div class='title_line2'>
				<label class='pwd_text'>支付密码</label>
					<div class='title_line2_pwd'>
						<input type='password' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line3'>
				<label class='pwd_text'>再输入一次</label>
					<div class='title_line2_pwd'>
						<input type='password' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>

				<div class='title_line1'>
					<strong class='strong_f1'>设置身份信息</strong> <label class='strong_f2'>请务必准确填写本人的身份信息，注册后不能更改，隐私信息未经本人许可严格保密</label>
				</div>
				<div class='title_line2'>
				<label class='pwd_text'>真实姓名</label>
					<div class='title_line2_pwd'>
						<input type='text' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
				<label class='pwd_text'>性别</label>
					<div class='title_line2_pwd'>
						<input type='radio' name='sex' value='男'>男 <input
							type='radio' name='sex' value='女'>女
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
				<label class='pwd_text'>身份证号码</label>
					<div class='title_line2_pwd'>
						<input type='text' class='pwd1' required>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
				<label class='pwd_text'>有效期</label>
					<div class='title_line2_pwd'>
						<input type='date' class='pwd1' value='2017-01-01' required>
						<input type='checkbox'>长期
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
					<div class='title_line2_pwd'>
					<label class='pwd_text'>职业</label>
						<select class='pwd1'>
							<option>- - - - - -请选择- - - - - -</option>
							<option>党的机关、国家机关、群众团体和社会组</option>
							<option>织、企事业单位负责人</option>
							<option>专业技术人员</option>
							<option>办事人员和有关人员</option>
							<option>社会生产服务和生活服务人员</option>
							<option>农、林、牧、渔业生产及辅助人员</option>
							<option>生产制造及有关人员</option>
							<option>军人</option>
							<option>不便分类的其他从业人员</option>
						</select>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
					<div class='title_line2_pwd'>
					<label class='pwd_text'>常用地址</label>
						<select>
							<option>请选择</option>
						</select> <select>
							<option>请选择</option>
						</select> <select>
							<option>请选择</option>
						</select>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2' style='height:93px;'>
					<div class='title_line2_pwd' style='height:93px;'>
						<div class='box_input'></div>
					</div>
					<p class="pwd1_check"></p>
				</div>
				<div class='title_line2'>
					<div class='title_line2_pwd'>
						<input type='submit' class='register2_submit' value='确定'>
					</div>
				</div>
				<div class='register2_picture'></div>
			</div>
		</div>
</body>
<script src="./js/myjs.js"></script>
<script type="text/javascript">
	var pwd1_check_flag = false;
	$('.pwd1')[0].onchange = function() {
		if (/^[0-9a-zA-Z]{6,15}$/ig.test(this.value)) {
			$('.pwd1_check')[0].innerHTML = "OK";
			$('.pwd1_check')[0].style = "color:green";
			pwd1_check_flag = true;
		} else {
			$('.pwd1_check')[0].innerHTML = "NG";
			$('.pwd1_check')[0].style = "color:red";
			pwd1_check_flag = false;
		}
	};
	var pwd1_check_flag1 = false;

	$(".pwd1")[1].onchange = function() {
		if (pwd1_check_flag) {
			if (this.value == $('.pwd1')[0].value) {
				$('.pwd1_check')[1].innerHTML = "OK";
				$('.pwd1_check')[1].style = "color:green";
				pwd1_check_flag1 = true;
			} else {
				$('.pwd1_check')[1].innerHTML = "NG";
				$('.pwd1_check')[1].style = "color:red";
				pwd1_check_flag1 = false;
			}
		}
	};
	var pwd1_check_flag2 = false;
	$('.pwd1')[2].onchange = function() {
		if (/^[0-9a-zA-Z]{6,15}$/ig.test(this.value)) {
			$('.pwd1_check')[2].innerHTML = "OK";
			$('.pwd1_check')[2].style = "color:green";
			pwd1_check_flag2 = true;
		} else {
			$('.pwd1_check')[2].innerHTML = "NG";
			$('.pwd1_check')[2].style = "color:red";
			pwd1_check_flag2 = false;
		}
	};
	var pwd1_check_flag3 = false;

	$(".pwd1")[3].onblur = function() {
		if (pwd1_check_flag2) {
			if (this.value == $('.pwd1')[2].value) {
				$('.pwd1_check')[3].innerHTML = "OK";
				$('.pwd1_check')[3].style = "color:green";
				pwd1_check_flag3 = true;
			} else {
				$('.pwd1_check')[3].innerHTML = "NG";
				$('.pwd1_check')[3].style = "color:red";
				pwd1_check_flag3 = false;
			}
		}
	};
	
	$('.pwd1')[4].onblur=function(){
		
	};
</script>
</html>
