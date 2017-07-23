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
		<link rel="stylesheet" href="./css/history.css" />
		<script type="text/javascript" src="./js/jquery-3.2.1.js"></script>

		<style type="text/css">
			.head_left li,
			.head_left a {
				color: white;
			}
			.nav-banner{
			    background: #e3e3e3 !important;
			    box-shadow: inset 0 1px 2px #ddd, 0 1px 0 #eee;
			    position: relative;
			    
			}
			.nav-li a:hover{
				color:#e54747;
			} 
			body{
				background-color:#fff;
				overflow:auto;
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

				<div class="nav" style="height: 32px;width:100%;     margin-bottom: 15px;    box-shadow: inset 0 1px 2px #ddd, 0 1px 0 #eee;">
					<div class="nav-banner" style="height: 34px;background: hsla(0,0%,100%,.7);">
						<div class="nav-banner-li">
							<ul>
								<li class="nav-li">
									<a style="background:#f2f2f2;;border-radius: 4px;">交易记录</a>
								</li>
								<li class="nav-li">
									<a>充值记录</a>
								</li>
								<li class="nav-li">
									<a>提现记录</a>
								</li>
								<li class="nav-li">
									<a>电子对账单</a>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
				
			</div>
			<div class='title_history'>
					<strong style='float:left;font:700 18px/20px "STHei","Microsoft YaHei","WenQuanYi Micro Hei;"'>交易记录</strong>
					<a class='title_font_a'>切换到标准版</a>
					<a href="#" class='dustbin_logo dustbin_logo_l'>
						<span>回收站</span>
					</a>
					<span style="float:right;margin-left:5px;margin-right:5px;color:#4d4d4d;">|</span>
					<a href='#' class='dustbin_logo' style='width:72px;'>
						<span>余额收支明细</span>
					</a>
					<div class='title_font_right'>可用金额
						<strong>100</strong>
					元</div>
			</div>
			<form class='form_body' method='post' action=''>
				<div class='form_line1'>
					<div class='form_line_left'>
						<div class='form_line_font'>交易时间：</div>
						<div class='form_line_input'>
							<select class='input_size' style='width:110px;' >
								<option>今天</option>
								<option>最近一周</option>
								<option>最近一个月</option>
								<option>最近三个月</option>
							</select>
						</div>
					</div>
					<div class='form_line_right'>
						<div class='form_line_font'>交易状态：</div>
						<div class='form_line_input'>
							<select class='input_size' style='width:144px;' >
								<option>所有状态</option>
								<option>进行中</option>
								<option>等待付款</option>
								<option>等待发货</option>
							</select>
						</div>
					</div>
				</div>
				<div class='form_line2'>
					<div class='form_line_left'>
						<div class='form_line_font'>关键词：</div>
						<div class='form_line_input'>
							<select class='input_size' style='width:110px;' >
								<option>流水号</option>
								<option>交易信息</option>
								<option>对方名称</option>
							</select>
							<input class='input_size' style='width:190px;background:#fff;'>
						</div>
					</div>
					<div class='form_line_right'>
						<div class='form_line_font'>时间类型：</div>
						<div class='form_line_input'>
							<select class='input_size' style='width:144px;' >
								<option>创建时间</option>
								<option>交易时间</option>
								<option>收款时间</option>
							</select>
						</div>
					</div>
				</div>
				<div class='form_line3'>
					<div class='form_line_left'>
						<div class='form_line_font'>金额范围：</div>
						<div class='form_line_input'>
							<input type='text' class='input_size' style='width:87px;background:#fff;'>
							-
							<input type='text' class='input_size' style='width:87px;background:#fff;'>
						</div>
					</div>
					<div class='form_line_right'>
						<div class='form_line_font'>资金流向：</div>
						<div class='form_line_input'>
							<select class='input_size' style='width:144px;' >
								<option>全部</option>
								<option>收入</option>
								<option>支出</option>
							</select>
						</div>
					</div>
				</div>
				<div class='form_line4'>
					<div class='form_line_left'>
						<div class='form_line_font'>交易方式：</div>
						<div class='form_line_input' style='height:20px;padding-top:4px;font-size: 13px; color: #000'>
							<input type='checkbox'>担保交易
							<input type='checkbox'>即时到账
							<input type='checkbox'>货到付款
						</div>
					</div>
					<div class='form_line_right'>
						<div class='form_line_font'>交易分类：</div>
						<div class='form_line_input'>
							<select class='input_size' style='width:144px;' >
								<option>全部</option>
								<option>购物</option>
								<option>线下</option>
								<option>理财</option>
								<option>转账</option>
								<option>还款</option>
								<option>缴费</option>
								<option>充值</option>
								<option>提现</option>
								<option>还贷款</option>
								<option>手机充值</option>
							</select>
						</div>
					</div>
				</div>
				<div class='form_line5'>
					<input class='form_submit' type='submit' value='搜索'>
				</div>
			</form>	
			<div class='select_big_box' style='height:28px;padding-top:10px;margin-top:5px;height: 20px;line-height: 12px;background:#fff;border:0px;'>
				<a href='#' class='dustbin_logo dustbin_logo_l' style='float:left;width:63px;background-position:0 -183px;'>
					<span>统计金额</span>
				</a>	
				<span class='dustbin_logo' style='float: left;color: #9A9A9A;font-size: 11px;margin-left: 5px;'>下载账单</span>
				<a href='#' class='dustbin_logo' style='float:left;width:63px;'>
					<span> Excel格式</span>
				</a>
				<a href='#' class='dustbin_logo' style='float:left;width:63px;'>
					<span>Txt格式</span>
				</a>		
			</div>
		 <div class='select_big_box'>
				<div class='select_small_box' style='width:98px;'>所有样式</div>
				<div class='select_small_box' style='width:83px;'>进行中</div>
				<div class='select_small_box' style='width:98px;'>等待付款</div>
				<div class='select_small_box' style='width:98px;'>等待发货</div>
				<div class='select_small_box' style='width:125px;'>等待确认发货</div>
				<div class='select_small_box' style='width:69px;'>退款</div>
				<div class='select_small_box' style='width:69px;'>成功</div>
				<div class='select_small_box' style='width:69px;'>失败</div>
				<div class='select_small_box' style='width:69px;'>维权</div>
			</div>
			<div class='select_big_box'>
				<div class='select_small_box1' style='width:66px;padding-left:18px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'>创建时间</div>
				<div class='select_small_box1' style='width:20px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'></div>
				<div class='select_small_box1' style='width:166px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'>名称</div>
				<div class='select_small_box1' style='width:188px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'>	商户订单号|交易号</div>
				<div class='select_small_box1' style='width:140px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'>对方</div>
				<div class='select_small_box1' style='width:118px;border-right:0px;text-align:right;color:#4d4d4d;font-size: 13px;'>金额|</div>
				<div class='select_small_box1' style='width:39px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'>明细</div>
				<div class='select_small_box1' style='width:108px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'>状态</div>
				<div class='select_small_box1' style='width:118px;border-right:0px;text-align:left;color:#4d4d4d;font-size: 13px;'>操作</div>
			</div>
			<table class='show_table'>
			<%
				for(int i=0;i<10;i++){
			%>
				<tr class='show_tr'>
					<td class='show_td' style='width:66px;padding-left:18px;'>2017.07.2011:42</td>
					<td class='show_td' style='width:20px;'></td>
					<td class='show_td'	style='width:166px;'>篮球网兜加长加粗室内外篮网耐晒防晒防雨标准比赛款篮球框架网袋 </td>
					<td class='show_td'	style='width:188px;'>订单号:T200P38286169983064480 | 交易号:2017072021001001520270429698</td>
					<td class='show_td'	style='width:140px;'>超敏运动专营店</td>
					<td class='show_td'	style='width:118px;text-align:right;'>- 237.60</td>
					<td class='show_td'	style='width:39px;'></td>
					<td class='show_td'	style='width:108px;'>等待确认收货</td>
					<td class='show_td'	style='width:118px;'>
						<span style='background:#F47C02;color:#fff;padding:2px 6px;border-radius:4px;cursor:pointer;'>详情</span>
					</td>
				</tr>
				<%} %>
			</table>
			<!-- <div class='no_history'>
				<div class='no_history_center'>
					<img src='/alipaysys/image/nothing_history.jpg'/>
					<div class='nothing_history'>没有找到记录，请调整搜索条件。</div>
				</div>
			</div> -->
			<div class='history_bottom'>
				<div class='history_bottom_center'>图释: 
					<div class='history_bg' style='background-position:0 -74px;width:62px;'>
						<span>支付明细 </span>
					</div>
					<div class='history_bg' style='background-position:2px -310px;width:38px;'>
						<span>备注</span>
					</div>
					<div class='history_bg' style='background-position:0 -128px;width:50px;'>
						<span> 服务费 </span>
					</div>
					<div class='history_bg' style='background-position:0 -582px;width:74px;'>
						<span> 余额宝分期</span>
					</div>
				</div>
			</div>
			<div class='faq'>
				<div class='faq_center'>
					<div class='faq_line'>使用遇到问题？</div>
					<div class='faq_line' style='margin-top:10px;'>扣款成功，但还是显示“等待买家付款”？</div>
					<div class='faq_line' style='margin-bottom:14px;'>答：银行账户已扣款，但交易状态仍为【等待买家付款】，请您不要担心，耐心等待10秒钟之后，按键盘上F5键刷新页面，重新刷新后交易状态会变为【买家已付款】。</div>
					<div class='faq_line'>使用红包、集分宝、商城积分抵扣，为什么交易总额不变？</div>
					
					<
					<div class='faq_line' style='margin-bottom:14px;'>答：红包、集分宝、商城积分等，仅是帮助您抵扣掉部分交易金额，您实际银行卡或者余额扣款的金额，具体请<a href='#' style='color:#0be;'>点击进入支付宝收支明细查看。</a></div>
					<div class='faq_line' style='margin: 20px 0;'><a href='#' style='color:#0be;'>更多相关帮助</a></div>
					<div class='faq_line' style='margin: 10px 0;height:22px;'></div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
	</script>

</html>