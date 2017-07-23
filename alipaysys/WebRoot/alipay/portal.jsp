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
								<li class="search-btn">
									<input type="text" style="border: 1px solid #E4E7E8;border-radius: 20px;" placeholder='输入关键字，如"密码"' />
								</li>
							</ul>
						</div>
					</div>

					<div class="banner-massege">
						<div class="banner-massege-li">
							<div class="banner-user">
								<a>
									<img style="width: 80px;height: 80px;" align="absmiddle" src="./image/T1BaBmXgxiXXXXXXXX.jpg" />
								</a>
							</div>
							<div class="banner-main">
								<div class="banner-main-hello">
									<div class="banner-main-top">

									</div>

									<div class="banner-main-bottom">

									</div>
								</div>

								<div class="banner-main-detail">

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="content">
				<div class="content-body">
					<table class="content-table" cellpadding="0">
						<tbody>
							<tr>
								<td style="width: 50%;">
									<div style="vertical-align: top;height: 103px;position: relative;">
										<div id="assets-show" style="display: block;">
											<div class="assets-body">
												<div class="assets-header">
													账户余额
												</div>
												<div class="assets-content">
													<span style="color: #a1a1a1;font-size: 10px;">余额支付：<a >已开启</a></span>
													<span class="assets-connect">
																<a>充值</a>
																<span style="color: #D5DDC5;">|</span>
													<a>提现</a>
													<span style="color: #D5DDC5;">|</span>
													<a>转账</a>
													</span>
												</div>
												<div class="assets-footer" style="background-image: url(./image/3UfjZtusGj.png);">

												</div>
											</div>
										</div>

										<div id="assets-hidden" style="display: none;">
											<div class="assets-body"></div>
										</div>
									</div>
								</td>
								<td rowspan="2" class="balance-td">
									<div class="balance-content">
										<div class="balance-header">
											<h3 style="font-size: 14px;font-weight: 200;">花呗</h3>
										</div>
										<div class="balance-body">
											<div class="amount-des">
												<p style="margin-bottom: 0;font-size: 14px;color: #a1a1a1 !important;">可用额度</p>
												<span>
													<strong style="font-size: 25px;">
														xxxx<span class="fen" style="font-size: 18px;">.xx</span>
													</strong>
													元
												</span>
												<p style="font-size: 14px;color: #a1a1a1 !important;">总额度
													xxxx<span class="fen">.xx</span>元
												</p>
											</div>
										</div>
										<input type="button" style="width: 48px;height: 22px;border-radius: 4px;" value="查看" />
										<div class="balance-footer">
											<p style="margin-bottom: 0;font-size: 14px;color: #a1a1a1 !important;">这月买，下月还</p>
										</div>
									</div>
								</td>
								<td rowspan="2" class="balance-td">
									<div class="balance-content">
										<div class="balance-header">
											<h3 style="font-size: 14px;font-weight: 200;">招财宝</h3>
										</div>
										<div class="balance-body">
											<div class="amount-des">
												<p style="margin-bottom: 0;font-size: 14px;color: #a1a1a1 !important;">今日主供产品年化收益率:</p>
												<div class="rate" style="color: #FB7823;">
													<p class="rate-start" style="font-size: 24px;float: left;margin-top: 0;margin-bottom: 0;">2.5%</p>
													<p style="font-size: 24px;float: left;margin-top: 0;">-</p>
													<p class="rate-end"   style="font-size: 24px;float: left;margin-top: 0;margin-bottom: 0;">4.0%</p>
												</div>
											</div>
										</div>
										<p style="margin-top: 0;font-size: 14px;color: #a1a1a1 !important;float: left;">灵活的定期理财</p>
										<input type="button" style="width: 48px;height: 22px;border-radius: 4px;float: left;" value="查看" />
										<span style="float: left;margin-left: 10px;color: #0088CC;text-decoration: underline;font-size: 12px;"><a >管理</a></span>
									</div>
								</td>
								<td rowspan="2" class="balance-td">
									<div class="balance-content">
										<div class="balance-header">
											<h3 style="font-size: 14px;font-weight: 200;">其他账户</h3>
										</div>
										<div class="balance-body">
											<div style="height: 20px;">
												
											</div>
										</div>
									</div>
								</td>
							</tr>
							
							<tr>
								<td style="width: 50%;">
									<div style="vertical-align: top;height: 103px;position: relative;">
										<div id="assets-show" style="display: block;">
											<div class="assets-body">
												<div class="assets-header">
													余额宝
												</div>

												<div class="assets-content" style="font-size: 12px;">
													<span>昨日收益:<a style="color: #FB7883;margin-left: 5px;">查看</a></span>
													<span style="margin-left: 20px;color: #B5A9C1;font-size: 12px;">七日年化收益率:4.0969%</span>
													<span class="assets-connect">
														<a>转入</a>
														<span style="color: #D5DDC5;">|</span>
														<a>转出</a>
														<span style="color: #D5DDC5;">|</span>
														<a>管理</a>
													</span>
												</div>
												<div class="assets-rocket" style="background: url(./image/T1cXVdXglmXXXXXXXX.png) no-repeat center;width: 20px;height: 20px;float: left;display: block;margin-left: 9px;margin-top: 15px;">

												</div>

												<span style="color: #0088CC;margin-top: 15px;float: left;text-decoration: underline;cursor: pointer;margin-left: 9px;font-size: 14px;">更多理财</span>

												<div class="assets-footer" style="background-image: url(./image/3UfjZtusGj.png);">
													
												</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="content-body">
					
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
	</script>

</html>