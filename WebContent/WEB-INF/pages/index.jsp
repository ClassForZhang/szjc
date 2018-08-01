<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/comm/mytags.jsp" %>
<!DOCTYPE html>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/bootstrap.min.css">
	<link rel="stylesheet" href="${ctx}/static/css/index.css">
	<script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>
	<style type="text/css" media="screen">
		.loginInfo{
			margin-left:1050px;
		}	
	</style>
</head>
<body>
<header id="header" class="">
		LOGO
		<p>
			<a href="javascript:void(0)" title="" class="home">稽查管理</a>
			<a href="javascript:void(0)" title="" class="ITSM">检测故障</a>
		</p>
		<p class="loginInfo">
			<a href="javascript:void(0)" id="login_btn"></a> | <a href="javascript:void(0)" onclick="loginout()">注销</a>
		</p>
</header><!-- /header -->
	<div id="main-content">
		<div class="main-left">
			<ul class="firstLayer">
				<li><a href="index.action" data-value="home">首页</a></li>
				<li>
					<a href="javascript:void(0)">违规类</a>
					<ul class="secondLayer">
						<li>
							<a href="javascript:void(0)" style="padding-left: 20px;" >营运专项统计</a>
							<ul class="thirdLayer">
								<li>
									<a href="javascript:void(0)" data-value="operateSpecialForm" >营运专项表单</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="operateSpecialPublish">营运专项列表(发起版)</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="operateSpecialCheck">营运专项列表(审核版)</a>
								</li>
							</ul>
						</li>
						<li ><a href="javascript:void(0)" style="padding-left: 20px;" data-value="violationChannel/violationChannel" >绿通违规通道统计</a></li>
						<li ><a href="javascript:void(0)" style="padding-left: 20px;" data-value="bonusAllocation/bonusAllocation">奖金分配表</a></li>
						<li ><a href="javascript:void(0)" style="padding-left: 20px;" data-value="specialCar/specialCar">特殊车辆上报统计</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:void(0)">考核类</a>
					<ul class="secondLayer" >
						<li class="special"><a href="javascript:void(0)" style="padding-left: 20px;" data-value="addSubtractProcess/addSubtractProcess">加扣分流程</a></li>
						<li>
							<a href="javascript:void(0)" style="padding-left: 20px;">绩效考核综合考评</a>
							<ul class="thirdLayer">
								<li>
									<a href="javascript:void(0)" data-value="totalCheck/operateDepartment">营运部综合考核表</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="totalCheck/achievementSubtract">绩效扣分单列表</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="totalCheck/groupProcess">班组岗位绩效分</a>
								</li>
								<li>
									<a href="javascript:void(0)"  data-value="totalCheck/dutySubtract">职责考核扣分单列表</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="totalCheck/groupAssess">班组职责考核分</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="totalCheck/assessAdd">加分单列表</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="totalCheck/batchAddSubtract">批量加（扣）分单</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="totalCheck/batchAddSubtractLists">批量加（扣）分单列表</a>
								</li>
								
							</ul>
						</li>
						<li><a href="javascript:void(0)" style="padding-left: 20px;" data-value="monitorPersonAssess/monitorPersonAssess">管理监控人员考核</a></li>
						<li><a href="javascript:void(0)" style="padding-left: 20px;" data-value="operateDepartmentAssess/operateDepartmentAssess">营运部考核表</a></li>
						<li>
							<a href="javascript:void(0)" style="padding-left: 20px;">月度考核评分汇总表</a>
							<ul class="thirdLayer">
								<li><a href="javascript:void(0)"  data-value="monthAssess/monthAssess">月度考核评分汇总表</a></li>
								<li><a href="javascript:void(0)"  data-value="monthAssess/monthAssessPublish">月度考核评分汇总表列表(发起版)</a></li>
								<li><a href="javascript:void(0)"  data-value="monthAssess/monthAssessDepartment">月度考核评分汇总表列表(部门版)</a></li>
								<li><a href="javascript:void(0)"  data-value="monthAssess/monthAssessCheck">月度考核评分汇总表列表(考核组版)</a></li>
							</ul>
						</li>
						<li>
							<a href="javascript:void(0)" style="padding-left: 20px;">文明服务专项考核表</a>
							<ul class="thirdLayer">
								<li>
									<a href="javascript:void(0)" data-value="civilizedService/civilizedForm">	文明服务专项考核表单</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="civilizedService/civilizedList">文明服务专项考核列表</a>
								</li>
								<li>
									<a href="javascript:void(0)" data-value="civilizedService/civilizedCheckedList">文明服务专项考核列表(审核版)</a>
								</li>
							</ul>
						</li>					
						<li><a href="javascript:void(0)" style="padding-left: 20px;" data-value="">小改大、挂车奖励表</a></li>
						<li><a href="javascript:void(0)" style="padding-left: 20px;" data-value="carProcess/carProcess">车流量绩效统计</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:void(0)">数据类</a>
					<ul class="secondLayer">
						<li><a href="javascript:void(0)" style="padding-left: 20px;" data-value="">违规车数据分析</a></li>
						<li><a href="javascript:void(0)" style="padding-left: 20px;" data-value="">绩效考核扣分主项分析</a></li>
						<li><a href="javascript:void(0)" style="padding-left: 20px;" data-value="">文明服务专项分析图表</a></li>
					</ul>
				</li>
				
			</ul>
		</div>
		<div class="main-right">
			<iframe src="home.action"  frameborder="0" scrolling="auto" width="100%" height="100%"></iframe>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		var name = "${activeUser.userName}";
		html = '<a href="javascript:void(0)">'+name+'</a>';
		$("#login_btn").html(html);
		
		var screenHeight=document.documentElement.clientHeight;
		var screenWidth=document.documentElement.clientWidth;

		var mainHeight=screenHeight-45;
		$("#main-content").css({"height":mainHeight+"px"});
		$("#main-content").find('iframe').contents().find("body").height(mainHeight)
		$("header a").click(function(event) {
			var htmlscr=$(this).data("value")
			$("#main iframe").attr("src",htmlscr)
		});
		$(".main-left>ul li").each(function(index, el) {
			$(this).click(function(event) {
				$(this).children('a').css({"backgroundColor":"#3090db","color":"white"});
				$(this).siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
				
				event.stopPropagation();
				
				if($(this).children('ul').length>=1){
					$(this).children('a').next("ul").toggle("fast","linear");
					$(this).siblings().children('a').next("ul").hide("fast","linear");
				}else{
					$(".main-right").find('iframe').attr("src",$(this).children('a').data("value")+".action");
					$(this).siblings().children('a').next("ul").hide("fast","linear");
				}

			});
		});
		$(".ITSM").click(function(event) {
			$("#main-content").html('<iframe src="http://47.106.37.95:9080/itsm/"  frameborder="0" scrolling="auto" width="100%" height="100%"></iframe>');
		});
		$(".home").click(function(event) {
			window.location.reload()
		});

		/*$(".special").click(function(event) {
			$(".main-right iframe").attr("src","http://47.106.37.95:9080/itsm/")
		});*/
		/*jQuery.fn.isChildOf = function(b){
			
			return (this.parent(b).length > 0); 
		}; */
	})
	function loginout(){
		window.location.href='logout.action';
	}
</script>
</html>