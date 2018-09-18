<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/comm/mytags.jsp" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<!DOCTYPE html>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/easyui.css">
	<link rel="stylesheet" href="${ctx}/static/css/index.css">
	<link rel="stylesheet" href="${ctx}/static/css/common.css">
	<script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/jquery.edatagrid.js"></script>
	<style type="text/css" media="screen">
		.main{
			overflow:hidden;
		}
		.main p{
			display: inline-block;
			width: 80px;
			overflow:hidden;
			vertical-align: top;
			margin-right: 20px;
		}
		.childMenu{
			width: 100%;
			overflow:hidden;
			background-color: #ddd;
		}
		.childMenu a{
			display: inline-block;
			width: 80px;
			overflow:hidden;
			vertical-align: top;
			margin-right: 20px;
		}
		.menu1,.menu2,.menu3{
			display: none;
		}
	</style>
</head>
<body>
	 <shiro:hasRole name="普通用户">
		<h2>您暂时没有权限访问此页</h2>
	</shiro:hasRole>
	<shiro:hasRole name="超级用户角色">
	<div class="main">
		<p class="one"><img src="${ctx}/static/images/Service_pro_13.png" alt="绩效考核类">绩效考核类</p>
		<p class="two"><img src="${ctx}/static/images/u124.png" alt="管理监控人员考核类">管理监控人员考核类</p>
		<p class="three"><img src="${ctx}/static/images/Service_pro_1.png" alt="文明服务考核类">文明服务考核类</p>
	</div>
	<div class="childMenu menu1">
		<%-- <a href="${itsm }/itsm/sys/main/main.jsp?uname=${activeUser.loginName}&sysVer=_S"><img src="${ctx}/static/images/Service_pro_13.png" alt="绩效扣分单流程">绩效扣分单流程</a> --%>
		<a href="${itsm }/itsm/sys/main/main.jsp"><img src="${ctx}/static/images/Service_pro_13.png" alt="绩效扣分单流程">绩效扣分单流程</a>
		<a href="http://47.106.37.95:9080/itsm/"><img src="${ctx}/static/images/Service_pro_13.png" alt="职责考核扣分单流程">职责考核扣分单流程</a>
		<a href="http://47.106.37.95:9080/itsm/"><img src="${ctx}/static/images/Service_pro_13.png" alt="一般加分流程">一般加分流程</a>
		<a href="http://47.106.37.95:9080/itsm/"><img src="${ctx}/static/images/Service_pro_13.png" alt="批量加(扣)分流程">批量加(扣)分流程</a>
	</div>
	<div class="childMenu menu2">
		<a href="http://47.106.37.95:9080/itsm/"><img src="${ctx}/static/images/Service_pro_13.png" alt="管理监控人员扣分流程">管理监控人员扣分流程</a>
		<a href="http://47.106.37.95:9080/itsm/"><img src="${ctx}/static/images/Service_pro_13.png" alt="管理监控人员加分流程">管理监控人员加分流程</a>
	</div>
	<div class="childMenu menu3">
		<a href="http://47.106.37.95:9080/itsm/"><img src="${ctx}/static/images/Service_pro_13.png" alt="文明服务扣分流程">文明服务扣分流程</a>
	</div>
	</shiro:hasRole>
	<!-- <script type="text/html" id="processTeplate">
		<ul>
		{{each rows}}
			<li>
				<a href="javascript:void(0)" id="{{$value.id}}">
					<img src="{{$value.fatherImage}}" alt="">
					<p>{{$value.fatherText}}</p>
				</a>
				<p class="triangle"></p>
			</li>
			
			<div class="childContainer">
				
			</div>	
			
		{{/each}}
		
		</ul>
	</script> -->
	<script>
		$(function(){
			$(".menu1").css("display","block")
			$(".one").click(function(event) {
				$(".childMenu").removeAttr('style');
				$(".menu1").css("display","block")
			});
			$(".two").click(function(event) {
				$(".childMenu").removeAttr('style');
				$(".menu2").css("display","block")
			});
			$(".three").click(function(event) {
				$(".childMenu").removeAttr('style');
				$(".menu3").css("display","block")
			});
		})
		/*$(".commonProcess-right>ul>li").each(function(index, el) {
			$(this).click(function(event) {
				var childLen=result[index].child.length;
				var multiple=Math.ceil(size/5);
				var indexInRow=Math.ceil((index+1)/5);
				var html2=template("childTemplate",{"childResult":result[index].child});
				console.log(multiple,indexInRow)
				if(multiple>indexInRow){
					if(index>=5*(indexInRow-1)&&index<=5*indexInRow-1){
						$(".childContainer:eq("+(5*indexInRow-1)+")").css({"width":"100%","float":"left"}).html(html2).siblings('.childContainer').css({"width":"0%"})
					}
				}else{
					$(".childContainer:eq("+(size-1)+")").css({"width":"100%","float":"left"}).siblings('.childContainer').css({"width":"0%"})
					$(".childContainer:eq("+(size-1)+")").html(html2)
				}
				

				$(".triangle").css("display","none");
				$(".triangle")[index].style.display="block";

				//这里是li距离顶部的距离+li的高度。第一行li距离顶部应该是0.第二行才应该有距离，所以每次减56像素，56是距离顶部的距离
				var positionHeight=$(this).offset().top+$(this).height()-56;
				$(".childContainer").css("top",positionHeight);

			});
		});*/
	</script>
</body>
<script type="text/javascript">

</script>
</html>