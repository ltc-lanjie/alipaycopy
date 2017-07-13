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
		<link rel="stylesheet" type="text/css" href="./css/main1.css">
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
