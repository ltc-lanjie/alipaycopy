<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>支付宝 托支付！</title>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/Personal.css">
		<style type="text/css">
			body {
				margin: 0px;
				overflow:hidden;
			}
			
			.main {
				height: 100%;
				width: 100%;
				position: absolute;
				
			}
			/*分页*/
			
		</style>
	</head>

	<body>
		<div class='main'>
						<!--固定样式-->
					
			<div class='fixedleat'>
			
			<!--顶部标签栏-->
				<div class='top'>
					<!--第一栏-->
					<div class='top1'>
						<div class="top1center">
							<div class="top1left">
								<a href="#" id='bluefont'>个人</a>
								<a href="#">企业</a>
								<a href="#">合作伙伴</a>
							</div>
							<div class="top1right">
								<a href="#">支付宝</a>
								<a>|</a>
								<!--选择菜单-->
								<div class="topselect">
									<a href="#" id='select'>客户服务
										<i id="i"></i>
									</a>
									<div class="topoption" id="topoption">
										<a href="#" class="optiona">服务大厅</a>
										<a href="#" class="optiona">自助服务</a>
										<a href="#" class="optiona">提建议</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--第二栏-->
					<div class='top2'>
						<div class="top2center">
							<div class="top2right">
								<a href="../Main.jsp" id='bluefont'>首页</a>
								<a href="#">财富中心</a>
								<a href="#">安全保障</a>
								<a>|</a>
								<a href="#">商家中心</a>
								<a href="#">开放平台</a>
							</div>
							<!--隐藏登录栏-->
							<div class='hiddenbox'>
								<div class='hiddenlogin'>登录</div>
								<a href='./Register.jsp'><div class='hiddenregister'>注册</div></a>
							</div>
						</div>
					</div>
				
				</div>
				<div class="leftbottom">
					<div class='leftbottoncenter'>
						<div class="bodycircular">
							<div class='circular1' id='blue'></div>
						</div>
						<div class="bodycircular">
							<div class='circular2' ></div>
						</div>
						<div class="bodycircular">
							<div class='circular3' ></div>
						</div>
						<div class="bodycircular">
							<div class='circular4'></div>
						</div>
						<div class="bodycircular">
							<div class='circular5'></div>
						</div>
						<div class="bodycircular">
							<div class='circular6'></div>
						</div>
						<div class="bodycircular">
							<div class='circular7' ></div>
						</div>
						
					</div>
				
				</div>
					<div class='vbox'>
						<div class='vmain'>
							<div class='v'></div>
						</div>
					</div>	
						
						
			</div>
			
			<div /class='main1'>
				<!--覆盖页-->
				<div id='leatcover'>
					<div class='logincenterbody'>
						<div class="innercenter">
							<div class="logininteface">
								<!--关闭键-->
								<div class="close">
									<a href="#" id='x'>x</a>
								</div>
								<!--切换图片-->
								<div class="change">
									<div id="changeimg1" class='tran5'></div>
									<div id="changeimg2" class='tran6'></div>
								</div>
								<!--登录框-->
								<div class='logincenterline'>
									<form name="save" action="#" method="post">
										<div class="loginpage">
											<div class="logintitle1">登录支付宝</div>
											<div class="logincenter1">
												<!--用户名-->
												<div class="usename">
													<input type="text" id="usename" name="usename" placeholder="邮箱/手机号/淘宝会员名" value="" class="usenameinput">
												</div>
												<!--密码-->
												<div class="psw">
													<input type="password" id="psw" name="password" class="pswinput">
												</div>
											</div>
											<!--登录框底部-->
											<div class="formatpassword">
												<a href="#">忘记登录密码？
													<a>
											</div>
											<div class="logincenter">
												<input type="submit" value="登陆" class='signin'/>
												<div class="loginbotton">
													<a href="#">淘宝会员登录</a>
													<a href="#">用户激活</a>
													<a href="./Register.jsp" style="color:#0be;float:right">免费注册</a>
												</div>
											</div>
										</div>
									</form>
									<div class='backgroundbox1'>
										<div class="logintitle2">扫码登陆</div>
										<div class="loginbackcenter">
											<div class="backimg">
												<div class="qrcode1 tran2"></div>
												<div class="qrcode2 tran1"></div>
											</div>
											<div class="bottombox">
												<div class="loginback1">请使用手机支付宝扫码</div>
												<div class="loginback2">
													<a href="#" id='logmove'>使用帮助</a>
													<a style="padding:0 10px;">|</a>
													<a href="#">下载支付宝</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				
					</div>
				</div>

				<div class='leat1'>
					<!--中间登录框-->
					<div class="loginmax">
						<div class="loginbox">
							<a href="#" class="box1">登录</a>
							<a href="./Register.jsp" class="box2">立即注册</a>
						</div>
						<!--播放按钮-->
						<div class='round'>
							<div class='triangle'></div>
						</div>
					</div>
					<!--背景1-->
					<div class='bg1'></div>
					<!--视频1-->
					<video class="video" autoplay>
						<source src="../image/1.mp4" type="video/mp4" />
					</video>
				</div>

				<div class='leat2'>
					<!--背景2-->
					<div class='bg2'></div>
					<div class='twocenter'>
						<div class='twoimg1'></div>
						<div class='twoimg2'></div>
						<div class='twocloud1'></div>
						<div class='twocloud2'></div>
					</div>
					<div class='bottom'>
						<div class='bottomcenter'>
							<div class='twobottom1'>转账付款</div>
							<div class='twobottom2'>转到支付宝账户，瞬间到账 | 转到银行卡，2小时到账</div>
						</div>
					</div>
				</div>
				<div class='leat3'>
					<!--背景3-->
					<div class='bg3'>
			
					</div>
					<div class='threemain'>
						<div class='threeimg1'></div>
						<div class='threeimg2'></div>
						<div class='threeimg3'></div>
						<div class='bottom'>
							<div class='bottomcenter'>
							
								<div class='twobottom1'>
									<div class='b1'>扫描二维码或条码付款</div>
									<div class='b2'>出示付款码付款</div>
									<div class='b3'>通过声波收付款</div>
								</div>
								<div class='twobottom2'>
									<div class='c1'>自动识别不安全链接，安心付款</div>
									<div class='c2'>付款码每次不同，保障付款安全</div>
									<div class='c3'>没有网络也能收款付款</div>
								</div>
						
							</div>
						</div>
					</div>
				</div>
				<div class='leat4'>
					<!--背景4-->
					<div class='bg4'></div>
					<div class='fourmain'>
						<div class='fourimg1'></div>
					</div>
					<div class='bottom'>
						<div class='bottomcenter'>
							<div class='twobottom1'>
									<div class='b1'>国际运输</div>
									<div class='b2'>品牌正品</div>
									<div class='b3'>人民币付款</div>
								</div>
								<div class='twobottom2'>
									<div class='c1'>如淘宝购物般简单，无需办理转运</div>
									<div class='c2'>海外商家直发，100%正品保证</div>
									<div class='c3'>无需外币兑换费，无需双币种信用卡</div>
								</div>
						</div>
					</div>
				</div>
				<div class='leat5'>
					<!--背景5-->
					<div class='fiveblack'></div>
					<div class='bg5'>
						<div class='bottom'>
							<div class='bottomcenter'>
								<div class='twobottom1'>
									<div class='b11'>赚的更多</div>
									<div class='b12'>安全保障</div>
									<div class='b13'>买的方便</div>
									<div class='b14'>灵活变现</div>
								</div>
								<div class='twobottom2'>
									<div class='c11'>定期稳定收益，让你赚更多</div>
									<div class='c12'>权威金融机构负责风险管理</div>
									<div class='c13'>一键预约购买，自动匹配成交</div>
									<div class='c14'>产品到期前，急用钱时可提前变现</div>
								</div>
							</div>
						</div>
					</div>
					<div class='fivemain'>
						<div class='fiveimg1'></div>
					</div>
					
				</div>
				<div class='leat6'>
					<!--背景6-->
					<div class='bg6'></div>
					<div class='sixmain'>
						<div class='siximg1'></div>
					</div>
					<div class='bottom'>
						<div class='bottomcenter'>
							<div class='twobottom1'>
									<div class='b11'>挂号</div>
									<div class='b12'>智能导诊</div>
									<div class='b13'>付医药费</div>
									<div class='b14'>查看报告</div>
								</div>
								<div class='twobottom2'>
									<div class='c11'>余号查询，足不出户就能挂号</div>
									<div class='c12'>叫号与导航，按时到达科室不迷路</div>
									<div class='c13'>手机支付，各类医药费边走边付</div>
									<div class='c14'>消息通知，随时查看就诊报告</div>
								</div>
						</div>
					</div>
				</div>
				<div class='leat7'>
					<!--背景7-->
					<div class='bg7'>
						<div class='seventop'>
							<div class='sevencenter'>
								<div class='st1'>
									<div class='sevenbox'>
										<div class='s11'><div class='s11font'>付款，是件容易的事</div></div>
										<div class='s12'><div class='s11font'>会员保障，安心付款</div></div>
										<div class='s13'><div class='s11font'>海外商品、想购就购</div></div>
										<div class='s14'><div class='s11font'>玩转支付宝</div></div>
										<div class='q11'>付款方式 | 134 家金融机构</div>
										<div class='q12'>安全升级 | 应急服务 | 理赔服务</div>
										<div class='q13'>全球直购 | 海外直邮</div>
										<div class='q14'>如何购物 | 新手须知 | 我要开店</div>
									</div>
								</div>
								<div class='st2'>
									<div class='sevenpatch'>
										<div class='seven1frist' style='height:16px;'>
											<a href='#'>支付宝收费规则</a>
											
											<a href='#'style='border-left:1px solid #999;'>支付服务协议</a>
										</div>
										<div class='seven1frist'>
											<a href='#'>蚂蚁金服隐私权政策</a>
											
											<a href='#' style='border-left:1px solid #999;'>蚂蚁金服客户权益保障承诺书</a>
										</div>
										<div class='seven1frist'>
											<a>公告</a>
											<a href='#'>变更支付宝服务协议的公告</a>
											<a href='#'>《关于防范和打击电信网络诈骗犯罪...</a>
										</div>
									</div>
									<div class='sevenpatch'>
										<div class='seven1frist'>
											<div class='seven1frist'>
												<a>支付宝官方微博</a>
												<a href='#' style='text-decoration:underline;'>+关注</a>
											</div>
										</div>
									</div>
									<div class='sevenpatch'>
										<a>下载支付宝</a>
										<div class='qrcimg'></div>
									</div>
									<div class='sevenpatch img2'>
										<h4 class='fonta'>支付宝E公益</h4>
										<p>帮助听力智障儿童，献爱心。</p>
										<a href='#' id='fonta1'>立即查看</a>
									</div>
								</div>
							</div>
						</div>
						<div class='sevenbottom'>
							<div class='sevencenter'>
								<div class='sevenbottomcenter'>
									<div class='sevenline'></div>
									<div class='sevenline'>
										<a href='#' style='border-left:0px'>诚征英才</a>
										<a href='#'>联系我们</a>
										<a href='#'>International Business</a>
										<a href='#'>ICP证: 沪B2-20150087</a>
									</div>
									<div class='sevenline'>
										<a href='#' style='border-left:0px'>蚂蚁金服集团</a>
										<a href='#'>支付宝</a>
										<a href='#'>余额宝</a>
										<a href='#'>招财宝</a>
										<a href='#'>芝麻信用</a>
										<a href='#'>蚂蚁微贷</a>
										<a href='#'>网商银行</a>
										<a href='#'>蚂蚁达客</a>
									</div>
									<div class='sevenline'>
									
										<a href='#' style='border-left:0px'>阿里巴巴集团</a>
										<a href='#'>淘宝网</a>
										<a href='#'>天猫</a>
										<a href='#'>聚划算</a>
										<a href='#'>全球速卖通</a>
										<a href='#'>阿里巴巴国际交易市场</a>
										<a href='#'>1688</a>
										<a href='#'>阿里妈妈</a>
										<a href='#'>阿里旅行·去啊</a>
										<a href='#'>阿里云计算</a>
										<a href='#'>YunOS</a>
										<a href='#'>阿里通信</a>
										<a href='#'>万网</a>
										<a href='#'>高德</a>
										<a href='#'>优视</a>
										<a href='#'>友盟</a>
										<a href='#'>虾米</a>
										
									</div>
									<div class='sevenline'>
										<a href='#' style='border-left:0px'>天天动听</a>
										<a href='#'>来往</a>
										<a href='#'>听听</a>
									</div>
									<div class='sevenline1'>
										<div class='lineimg1'></div>
										<div class='lineimg2'></div>
										<div class='lineimg3'></div>
										<div class='lineimg4'></div>
										<div class='lineimg5'></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>
		</div>
	</body>
	<script type='text/javaScript'>
	function $(obj){
		var newObj=document.querySelectorAll(obj);
		if(newObj.length==1){
			return newObj[0];
		}
		return newObj;
	}
	//选择栏事件触发
	$('.topselect').onmouseover=select;
	$('.topselect').onmouseout=select;
	
	
	//视频结束切换背景
	$('.video').onended=function(){
		$('.bg1').id='index1';
		$('.round').id='show';
		
	}
	 $('.round').onclick=function(){
			$('.round').id='hide';
			$('.video').play();
			$('.bg1').id='index2';
	 }
	
	 function select(){
			var i=$("#i");
			var option=$("#topoption");
			if(option.style.display=="block"){
				i.style.transform='rotateZ(0deg)';
				i.style.transition='all 0.5s';
				option.style.display='none';
				}else{
				i.style.transform='rotateZ(180deg)';
				i.style.transition='all 0.5s';
				option.style.display='block';
			}
		}	
	
//v标记触发事件
	$('.v').onclick=function(){
		$('.circular'+(Number($('#blue').className.substring(8))+1)).click();
	}
//右侧按钮触发换屏事件
	for(var i=1;i<8;i++){
		var na='.circular'+i;
		$(na).onclick=function(){
			
			$('#blue').id='transparent';
			var i=Number(this.className.substring(8,9));
			
			this.id='blue';
			$('.main1').style.transform='translate(0px,-'+(i-1)+'00%)';
			//return Number(this.event.srcElement.className.substring(8,9));this.event.srcElement获取事件源
			changecolor(i,
				function (check1,check2,img){
					if(check1==true&&check2==true){
						$('.hiddenbox').style.visibility='visible';
						$('.v').style.visibility='visible';
					}else if(check1==false){
						$('.v').style.visibility='hidden';
						$('.hiddenbox').style.visibility='visible';
					}else if(check2==false){
						$('.hiddenbox').style.visibility='hidden';
						$('.v').style.visibility='visible';
					}
					if(img!=undefined){
						img.style.opacity='1';
					}
				}
			);
		}

		function changecolor(num,all){
			switch(num){
					//第二页图片特效
				case 2:
					$('.bg2').style.transform='scale(1,1)';
					all(true,true,$('.twoimg1'));
					break;
					 //第三页图片特效
				case 3:
					moveing($('.threeimg1'),$('.threeimg2'),0,0,0,0);
					all(true,true,$('.threeimg3'));
					break;
					//第四页图片特效
				case 4:
					$('.bg4').style.transform='scale(1.1,1.1)';
					all(true,true,$('.fourimg1'));
					break;
					//第五页图片特效
				case 5:
					$('.fiveblack').style.opacity='0.6';
					all(true,true,$('.fiveimg1'));
					break;
					//第六页图片特效
				case 6:
					$('.bg6').style.transform='scale(1,1)';
					all(true,true,$('.siximg1'));
					break;
					//第七页图片特效
				case 7:
					all(false,true);
					break;	
				default:
					all(true,false);
			}
		
		}
	}
	function moveing(t1,t2,num1,num2,num3,num4){
			t1.style.transform='translate('+num1+'px,'+num2+'px)';
			t2.style.transform='translate('+num3+'px,'+num4+'px)';
	}
	//登录触发
	$('#x').onclick=show;
	$('.box1').onclick=show;
	function show(){
		var div=$('#leatcover');
		if(event.srcElement.className=='box1'){
			div.style.visibility="visible";
		}else{
			div.style.visibility="hidden";
		}
	}
	$('#changeimg1').onclick=change1;
	$('#changeimg2').onclick=change1;
	function change1(){
		if(event.srcElement.id=='changeimg1'){
			$('.loginpage').style.display='none';
			$('.backgroundbox1').style.display='block';
			moveing($('#changeimg1'),$('#changeimg2'),-60,-60,0,0);
			
		}else{
			moveing($('#changeimg1'),$('#changeimg2'),0,0,60,60);
			$('.loginpage').style.display='block';
			$('.backgroundbox1').style.display='none';
		}
	}
	//二维码点击切换
	$('.change').onclick=change1;
	//二维码移动切换
	$('#logmove').onmouseover=function(){
		moveing($('.qrcode1'),$('.qrcode2'),-150,0,0,0);
	};
	$('#logmove').onmouseout=function(){
		moveing($('.qrcode1'),$('.qrcode2'),0,0,150,0);
	};
	
	$('.lineimg1').onmouseout=getpag;
	function getpag(){
		
		if(event.srcElement.className=='lineimg1'){
			$('.lineimg1').style.backgroundPosition='(-4px,-55px)';
		}
		
	}
	
	</script>
		
		
</html>