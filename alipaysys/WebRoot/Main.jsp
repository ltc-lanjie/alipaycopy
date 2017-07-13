<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>支付宝，知托付</title>
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
			margin:0px;
		}
		.main{
			height:100%;
			width:100%;
			position:absolute;
			background:url('./image/main1.jpg');
			display:inline-block;
			background-size:100% 100%;	
			transition:all .1s;
		}
		.main2{
			height:100%;
			width:100%;
			position:absolute;
			background:url('./image/main2.jpg');
			display:inline-block;
			background-size:100% 100%;	
		}
		.main3{
			height:100%;
			width:100%;
			position:absolute;
			background:url('./image/main3.jpg');
			display:inline-block;
			background-size:100% 100%;	
		}
		.head{
			width:100%;
			position:fixed;
			top:20px;
			z-index:50;
		}
		.top{
			height:30px;
			width:80%;
			line-height:30px;
			margin:0px auto;
		}
		.top_logo{
			background:url('./image/main_logo.png');
			width:70px;	
			height:25px;
			background-size:70px;
			float:left;
		}
		.top_login{
			float:right;
			color:#fff;
			font-size:13.5px;
		}
		.top_login a{
			margin:0 5px;
		}
		a{
			text-decoration:none;
			color:#fff;
		}
		.state{
			color:#bfbfbf;
		}
		.center{
			width:100%;
			position:absolute;
			top:20%;
			text-align:center;
		}
		.center_image{
			background:url('./image/main_center.png');
			width:600px;
			height:200px;
			background-size:600px;
			background-repeat:no-repeat;
			margin:0px auto;
		}
		.center_line{
			width:100%;
			text-align:center;
		}
		
		.friend{
			height:50px;
			width:170px;
			letter-spacing:1px;
			background:#13a5e9;
		}
		.business{
			height:50px;
			width:170px;
			letter-spacing:1px;
		}
		.personal{
			height:50px;
			width:170px;
			letter-spacing:1px;
			
		}
		.title{
			height:100%;
			width:100%;
			
			padding: 16px;
   			border-radius: 5px;
		}
		.center-logo1,.center-logo2,.center-logo3{
			background:url('./image/main_center_logo1.png');
			background-size:24px;
			height:24px;
			width:24px;
			position:absolute;
			left: 20px;
    		top: 14px;
		}
		.center-logo2{
			background:url('./image/main_center_logo2.png');
			background-size:24px;
		}
		.center-logo3{
			background:url('./image/main_center_logo3.png');
			background-size:24px;
		}
		.center_box{
			height:50px;
			width:550px;
			position:relative;
			margin:15px auto;
		}
		.center_box a{
			height:50px;
			width:170px;
			color:#fff;
		}
		.box1,.box2,.box3{
			height:50px;
			width:170px;
			position:relative;
			float:left;
			background:#13a5e9;
			border-radius:9px;
		}
		.box2,.box3{
			margin-left:20px;
		}
		.box2{
			transition:all .3s;
		}
		.center_font{
			 line-height: 50px;
   			 padding-left: 18px;
   			 color:#fff;
   			 font-size: 14px;
    		letter-spacing: 1px;
		}
		.button{
			height:65px;
			width:100%;
			position:absolute;
			bottom:0px;
			left:0px;
			background:#fff;
			padding-top:5px;
		}
		.button_line1{
			width:99%;
			height:20px;
			margin:0px auto;
			text-align:center;
			overflow:hidden;
		}
		.button_line2{
			text-align: center;
		    height: 20px;
		    line-height: 25px;
		}
		.button_line3{
			width: 250px;
		    height: 30px;
		    margin: 0 auto;
		    text-align: center;
		}
		.button_line li{
			display: inline-block;
		}
		.button_line ul{
			display: block;
		}
		li a{
			color:#666;
			
		}
		ul,li{
			list-style:none;
			color:#ccc;
			display:inline;
			font-size:12.5px;
			line-height:20px;
		}
		.button_line2 span{
			 font-size: 13px;
   			 color: #666;
		}
		.button_image1,.button_image2,.button_image3,.button_image4,.button_image5{
			background:url('./image/main_button_image.png');
			height:28px;
			float:left;
			margin-right: 5px;
		}
		.button_image1{
			
			background-position:0px -5px;
			width:18px;
		}
		.button_image2{
			
			background-position:-33px -5px;
			width:28px;
		}
		.button_image3{
			
			background-position:-74px -5px;
			width:33px;
		}
		.button_image4{
			
			background-position:-115px -5px;
			width:18px;
		}
		.button_image5{
			
			background-position:-200px -5px;
			width:20px;
		}
		.top_login a:hover{
			color:#0be;
		}
		.button_image1:hover{
			background-position:1px -28px;
		}
		.button_image2:hover{
			background-position:-32px -28px;
		}
		.button_image3:hover{
			background-position:-73px -28px;
		}
		.button_image4:hover{
			background-position:-115px -28px;
		}
		.button_image5:hover{
			background-position:-200px -28px;
		}
		.center_font1{
			 line-height: 50px;
   			display:none;
   			 color:#fff;
   			 font-size: 14px;
    		letter-spacing: 1px;
    		display:none;
    		
		}
		.center_font2{
			 line-height: 50px;
   			 display:none;
   			 color:#fff;
   			 font-size: 14px;
    		letter-spacing: 1px;
    	
		}
		.box1:hover{
			background:#0ae;
		}
		.box3:hover{
			background:#0ae;
		}
		.box2:hover{
			background:#0ae;
			height:100px;
			margin-top:-25px;
			
		}
		.box2:hover i{
			display:none;
		}
		.box2:hover .center_font{
			display:none;
		}
		.box2:hover .center_font1,
		.box2:hover .center_line1,
		.box2:hover .center_font2{
			display:block;
		}
		.center_line1{
			width:150px;
			border-bottom:1px solid #fff; 
			display:none;
			margin:auto;
			opacity:0.2;
			height:0px;
		}
	</style>
  </head>
  	
  <body>
    	<div class='main' id='main'>
    		<div class="head">
    			<div class='top'>
    				<div class="top_logo"></div>
    				<div class="top_login">
    					<% %>
    					<span class='state'>我已有支付宝账户</span>
    					<a href='./alipay/Login.jsp'>快速登录</a>
    					<!-- <span class='state'>你好，ddd</span> -->
    					<% %>
    				</div>
    			</div>
    		</div>
    		<div class='center'>
    			<div class="center_image"></div>
    			<div class='center_line'>
    				<div class='center_box'>
    					<a href="#">
    						<div class='box1'>
	    						<i class='center-logo1'></i>
	    						<span class='center_font'>我是合作伙伴</span>
    						</div>
    					</a>
    					<a href="#">
    						<div class='box2'>
	    						<i class='center-logo2'></i>
	    						<span class='center_font'>我是商家用户</span>
	    						<span class='center_font1'>我是支付宝商家</span>
	    						<span class='center_line1'></span>
	    						<span class='center_font2'>我是口碑用户</span>
	    					</div>
    					</a>
    					<a href="#">
    						<div class='box3'>
	    						<i class='center-logo3'></i>
	    						<span class='center_font'>我是个人用户</span>
    						</div>
    					</a>
    				</div>
    			</div>
    		</div>
    		<div class='button'>
    			<div class="button_line1">
    				<ul>
    					<li>
    						<a href="https://www.antfin.com/" target="_Blank">蚂蚁微贷</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="./main.jsp" target="_Blank">支付宝</a>
    					</li>
    					
    					<li>|</li>
    					<li>
    						<a href="https://yebprod.alipay.com/yeb/index.htm" target="_Blank">余额宝</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://yebprod.alipay.com/yeb/index.htm" target="_Blank">招财宝</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://b.alipay.com/?ynsrc=zhuzhanA" target="_Blank">蚂蚁商家中心</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://b.zmxy.com.cn/index.htm?scene=alipay" target="_Blank">芝麻信用</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://www.aliloan.com/" target="_Blank">蚂蚁微贷</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://www.mybank.cn/index.htm" target="_Blank">网商银行</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://open.alipay.com/platform/home.htm?from=zhuzhanfooter20160818" target="_Blank">开放平台</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://job.alibaba.com/index.php" target="_Blank">诚征英才</a>
    					</li>
    					<li>|</li>
    					<li>
    						<a href="https://ab.alipay.com/i/lianxi.htm" target="_Blank">联系我们</a>
    					</li>
    					<li>|</li>
    				
    					<li>
    						<a href="https://global.alipay.com/" target="_Blank">International Business</a>
    					</li>
    				</ul>
    			</div>
    			<div class="button_line2">
    				<span>ICP证：沪B2-20150087</span>
    			</div>
    			<div class="button_line3">
    				<a href='https://fun.alipay.com/certificate/zfxkz.htm' class='button_image1'  target="_Blank"></a>
    				<a href='https://sealinfo.verisign.com/splash?form_file=fdf/splash.fdf&dn=WWW.ALIPAY.COM&zh_cn'  target="_Blank" class='button_image2'></a>
    				<a href='#' class='button_image3'></a>
    				<a href='http://zjnet.zjaic.gov.cn/sign/addSignOnline.action' class='button_image4' target="_Blank"></a>
    				<a href='https://fun.alipay.com/certificate/index.htm' class='button_image5' target="_Blank"></a>
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
	  window.setInterval(
			  function(){
				  var background= $('#main').className;
				  if(background=='main'){
					  $('#main').className='main2';
				  }else if(background=='main2'){
					  $('#main').className='main3';
				  }else if(background=='main3'){
					  $('#main').className='main';
				  }
			
		  },
		  3000);
	 
  </script>
</html>
