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
	<link rel="stylesheet" href="${ctx}/static/css/home.css">
	<script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/echarts.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/bootstrap.min.js"></script>
	<style type="text/css" media="screen">
	</style>
</head>
<body>
<div class="home">
		<div class="reports">
			<div class="reports1">
				<div>
					<p>今日统计</p>
					<p>
						<a href="javascript:void(0)" class="glyphicon glyphicon-repeat"></a>
					</p>
				</div>
				<div class="todayStatistics">
					<div class="addReportsNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>新增工单量</p>
					
						</div>
					</div>
					<div class="outReportsNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>超时工单量</p>
					
						</div>
					</div>
					<div class="addKnowledgeNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>新增知识量</p>
					
						</div>
					</div>
					<div class="unFinishReportsNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>未完成工单量</p>
					
						</div>
					</div>
					<div class="unReturnVisitReportsNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>待回访工单量</p>
					
						</div>
					</div>
					<div class="onlineNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>在线人数</p>
					
						</div>
					</div>
					<div class="finishReportsNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>已完成工单量</p>
					
						</div>
					</div>
					<div class="returnVisitedReportsNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>已回访工单量</p>
					
						</div>
					</div>
					<div class="totalViewNum">
						<div>
							<img src="${ctx}/static/images/u124.png" alt="">
						</div>
						<div class="reportsText">
							<p>1</p>
							<p>累计访问量</p>
					
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="reports">
			<div class="reports2">
				<div>
					<p>我的待办工单</p>
					<p>
						<a href="javascript:void(0)" class="glyphicon glyphicon-repeat"></a>
					</p>
				</div>
				<div class="myUntreatedReports">
					
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
		$(function(){
			var myUntreatedReportsEcharts=echarts.init($(".myUntreatedReports")[0])
			var option = {
			    grid:{
			    	left:'10%',
			    	right:'5%',
			    	top:'10%',
			    	
			    },
			    tooltip : {
			        trigger: 'axis',
			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			        },
			        formatter: function (params){
			            return params[0].name + '<br/>'
			                   + params[0].seriesName + ' : ' + params[0].value + '<br/>'
			                   + params[1].seriesName + ' : ' + (params[1].value + params[0].value);
			        }
			    },
			    legend: {
			    	x: 'center', 
        			y: 'bottom',
			        data:['已超时', '未超时']
			    },
			    xAxis : [
			        {
			            type : 'category',
			            data : ['服务请求','事件','变更','问题','发布','任务','备件']
			        }
			    ],
			    yAxis : [
			        {
			            type : 'value',
			            axisTick: {
							show: false
						},
						splitLine: {
							show: true
						},
						axisLine: {
							show: false
						},
						name:'工单数量(个)',
						nameLocation:'middle',
						nameGap:30,
						
			        }
			    ],
			    series : [
			        {
			            name:'已超时',
			            type:'bar',
			            stack: '数量',
			            itemStyle: {
			            	normal: {
			            		color:'#ED561B'
			            	}
			            },
			            data:[1, 2, 3, 4, 5, 6,7]
			        },
			        {
			            name:'未超时',
			            type:'bar',
			            stack: '数量',
			           	itemStyle: {
			            	normal: {
			            		color:'#50B432'
			            	}
			            },
			            data:[2, 0, 0, 0,0, 0,0]
			        }
			    ]
			};
			myUntreatedReportsEcharts.setOption(option);
			$(".reports1 .glyphicon-repeat").on('click',function(event) {
				event.preventDefault();
				$(".addReportsNum .reportsText>p:eq(0)").html('');
				$(".outReportsNum .reportsText>p:eq(0)").html('');
				$(".addKnowledgeNum .reportsText>p:eq(0)").html('');
				$(".unFinishReportsNum .reportsText>p:eq(0)").html('');
				$(".unReturnVisitReportsNum .reportsText>p:eq(0)").html('');
				$(".onlineNum .reportsText>p:eq(0)").html('');
				$(".finishReportsNum .reportsText>p:eq(0)").html('');
				$(".returnVisitedReportsNum .reportsText>p:eq(0)").html('');
				$(".totalViewNum .reportsText>p:eq(0)").html('');
			});
			$(".reports2 .glyphicon-repeat").on('click',function(event) {
				event.preventDefault();
				var option=myUntreatedReportsEcharts.getOption();
				option.series[1].data=[7,6,5,4,3,2,1];
				option.series[0].data=[0,0,0,0,0,0,2];
				myUntreatedReportsEcharts.setOption(option)
			});
		})
		
</script>
</html>