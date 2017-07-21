<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<base href="<%=basePath%>">

		<title>交易记录</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="./css/main.css" />
		<script type="text/javascript" src="./js/jquery-3.2.1.js"></script>

		<style type="text/css">
			.head_left li,
			.head_left a {
				color: white;
			}
		</style>
	</head>

	<body>
		<div class="main">
			<div class="head">
				<div class="head_center">
					<div class="head_left">
						<ul>
							<li>
								<a><img src="./image/back.png" style="width: 20px;height: 20px;cursor: pointer;" align="absmiddle" /></a>
								<a>返回淘宝网</a>
							</li>

							<li>
								<a><img src="./image/Power_Switch_User_24px_1063336_easyicon.net.png" style="width: 20px;height: 20px;cursor: pointer;" align="absmiddle" /></a>
								<a>切换成商业版</a>
							</li>
						</ul>
					</div>

					<div class="head_right">
						<ul>
							<li>
								<span>你好，</span>
							</li>
							<li>
								<span style="background: url(./image/register_select_logo.png) no-repeat right -1748px;padding-right:15px;" id="uname">123</span>
							</li>
							<li>
								<a href="Login.jsp">退出</a>
							</li>
							<li>|</li>
							<li>我的支付宝</li>
							<li>|</li>
							<li>安全中心</li>
							<li>|</li>
							<li><span style="background: url(./image/register_select_logo.png) no-repeat right -1748px;padding-right:15px;" id="support">服务大厅</span></li>
							<li>
								<a><img src="./image/banner.png" style="width: 20px;height: 20px;cursor: pointer;" align="absmiddle" /></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="banner">
				<div class="banner_nav">
					<div class="head_left">
						<ul>
							<li>
								<a>
									<img src="./image/2.png" style="cursor: pointer;position: relative;top: 17px;" align="absmiddle" />
								</a>
							</li>
						</ul>
					</div>

					<div class="head_right" id="head_right">
						<ul class="banner_nav">
							<li>
								<a><img src="./image/diamond.png" align="absmiddle" style="cursor: pointer;position: relative;width: 28px;" /></a>
							</li>

							<li style="margin-left: 0px;" class="banner_nav_current banner_nav_common">
								我的支付宝
							</li>

							<li class="banner_nav_common">
								交易记录
							</li>

							<li class="banner_nav_common">
								会员保障
							</li>

							<li class="banner_nav_common">
								应用中心
							</li>
						</ul>
					</div>
				</div>

				<div class="nav" style="height: 141px;background: url(./image/19jDyAPbtn.jpg) no-repeat center;">
					<div class="nav-banner" style="height: 34px;background: hsla(0,0%,100%,.7);">
						<div class="nav-banner-li">
							<ul>
								<li class="nav-li">
									<a style="background: rgba(61,71,74,.6);border-radius: 4px;">首页</a>
								</li>
								<li class="nav-li">
									<a>账户资产</a>
								</li>
								<li class="nav-li">
									<a>账户设置</a>
								</li>
								<li class="nav-li">
									<a>账户通</a>
								</li>
								<li class="nav-li">
									<a>商户服务</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
	</script>

</html>