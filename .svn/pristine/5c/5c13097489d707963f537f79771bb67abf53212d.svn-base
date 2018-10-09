<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/comm/mytags.jsp" %>
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
		.searchCondition p{

			width: 30%;
		}
	</style>
</head>
<body>
<div class="title text-center h4">小改大、挂车奖励表</div>
	<!-- <div class="searchCondition">
		<p>
			<label for="">站名</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">盐官</option>
			</select>
		</p>
		<p>
			<label for="">年月</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">已审核年月</option>
			</select>
		</p>
		<button type="button" class="btn btn-default">查询</button>
	</div> -->
	<table class="table table-responsive">
		<thead>
			<tr>
				<th>收费所</th>
				<th>序号</th>
				<th>姓名</th>
				<th>小改大数量</th>
				<th>挂车数量</th>
				<th>合计</th>
				<th>每辆金额</th>
				<th>实发金额</th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody id="carData">
			<!-- <tr>
				<td>1</td>
				<td>杭州北</td>
				<td>0.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>2</td>
				<td>临平</td>
				<td>11.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td>胡家兜</td>
				<td>10</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td>盐官</td>
				<td>11</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td>海宁南</td>
				<td>15</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>6</td>
				<td>南北湖</td>
				<td>36.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>7</td>
				<td>海盐</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>8</td>
				<td>乍浦</td>
				<td>15.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>9</td>
				<td>独山</td>
				<td></td>
				<td>借调管理处</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>10</td>
				<td>新仓</td>
				<td>51</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>11</td>
				<td>浙沪南主线</td>
				<td>16.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>合计/平均</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr> -->
		</tbody>
		<tfoot>
			<!-- <tr>
				<td colspan="2">
					<label for="">制表人</label>
					<input type="text" name="" value="" placeholder="登录人">
				</td>
				<td colspan="2">
					<label for="">审核人</label>
					<input type="text" name="" value="">
				</td>
			</tr> -->
		</tfoot>
	</table>
	

	<script>
	</script>
</body>
<script type="text/javascript">
		$(function(){
			$("#carData").empty();
			var size="${size}";
			var j;
			var stationName;
			$.ajax({
				type:'post',
				url:'${ctx}/guaCar/getData.action',
				success:function(data){
					for(var i in data){
						var value=data[i].stationId;
						if(value==3111){
							stationName = "杭州北";
						}else if(value==3113){
							stationName = "临平";
						}else if(value==3115){
							stationName = "胡家兜";
						}else if(value==3117){
							stationName = "盐官";
						}else if(value==3119){
							stationName = "海宁南";
						}else if(value==3121){
							stationName = "南北湖";
						}else if(value==3123){
							stationName = "海盐";
						}else if(value==3125){
							stationName = "乍浦";
						}else if(value==3127){
							stationName = "独山";
						}else if(value==3129){
							stationName = "新仓";
						}else if(value==3131){
							stationName = "浙沪南主线";
						}
						j=i;
						$("#carData").append("<tr><td>"+stationName+"</td>"+
								"<td>"+(++j)+"</td>"+
								"<td>"+data[i].userName+"</td>"+
								"<td>"+data[i].stbCarNum+"</td>"+
								"<td>"+data[i].guaCarNum+"</td>"+
								"<td>"+(data[i].stbCarNum+data[i].guaCarNum)+"</td>"+
								"<td>2</td>"+
								"<td>"+(data[i].stbCarNum+data[i].guaCarNum)*2+"</td>"+
								"<td></td>"+
								"</tr>")
						
						
					}
				}
			})
		})
</script>
</html>