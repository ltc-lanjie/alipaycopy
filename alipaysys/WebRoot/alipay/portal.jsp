<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<base href="<%=basePath%>">

		<title>我的支付宝</title>
		
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="./css/main.css" />
	</head>

	<body>
		<div class="main">
			<div class="head">
				<div class="head_center">
					<div class="head_left">
						<ul >
							<li >
								<i class="iconfont"></i>
							</li>
							<li ></li>
						</ul>
					</div>
					
					<div class="head_right">
						
					</div>
				</div>
			</div>
		</div>
	</body>

</html>