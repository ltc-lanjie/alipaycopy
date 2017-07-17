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
  			<div class='center_select'>
  				<div class='select1'></div>
  				<div class='select2'></div>
  			</div>
  			<div class='register_big_box'>
  				<div class='bg_select'></div>
  				<div class='register_center_box'>
  					<div class='register_line1'>国籍/地区
  						<div class='country_box'>中国</div>
  						<div class='country_select'></div>
  					</div>
  					<div class='register_line2'>手机号
  						<select class='select_tel_box'>
  							<option>86</option>
  							<input type='text'placeholder='请输入你的手机号码' name='tel' class='tel_text' required>
  						</select>
  					</div>
  					<div class='register_line3'>
  						验证码
  						<input type='text' class='i_code' name='i-code' placeholder='请输入右侧验证码' required>
  						<div class='code_pic'>
  							<img src="./CodeServlet" id="code"/>
  						</div>
  					</div>
  					<div class='register_line4'>
  						<input type='checkbox' class='check_box'>同意《
  						<a href='#'>支付宝服务协议</a> 》
  					</div>
  					<div class='register_line5'>
  						<input type='submit' value='下一步' class='submit_register1'>
  					</div>
  					<div class='register_line6'>
  						<a href='#'>使用邮箱注册</a>
  					</div>
  				</div>
  			</div>
  		 </div>
  		<div class='bottom'>
  			<div class='bottom_center'></div>
  		 </div>
  	</div>
  </body>
  <script type="text/javascript">
  	var xml=new XMLHttpRequest();
  	/* document.getElementsByClassName("code_pic")[0].onclick=function(event){
  		ajax({
  			method:"get",
  			url:"http://192.168.0.128:80/alipaysys/alipay/CodeChange.jsp?t="+Math.random()*10
  			},function(msg){
  				document.getElementsByClassName("code_pic")[0].innerHTML=msg.data;
  			},
  			function(error){
  				alert(error,status)
  			});
  		
  	} */
  	function ajax(obj,success,error){
			xml.onreadystatechange=function(){
				if(xml.status==200&&xml.readyState==4){
					//返回值
					var txt=xml.responseText;
					if(txt=='error'){
						error({
							status:500
						});
					}else{
						success({
							data:txt
						});
					}
				}
			}
		xml.open(
			obj.method,
			obj.url,
			"true"
		);	
		xml.send();
		}
  	document.getElementById('code').onclick=function(event){
  		event.target.src='./CodeServlet?id='+Math.random();
  	}
  </script>
</html>
