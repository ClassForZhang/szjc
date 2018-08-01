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
			width: 50%;
		}
		.searchCondition p:nth-child(1){
			width: 100%;
		}
		
		.pagination{
			margin:0;
			background-color: #174f99;
		}
	</style>
</head>
<body>
<div class="title text-center h4">绿通违规通道统计</div>
	<div class="searchCondition">
		<p>
			<label for="">站名</label>
			<select name="">
				<option value="">全部</option>
				<option value="盐官">盐官</option>
			</select>
		</p>
		<p>
			<label for="">日期</label>
			<input type="text" name="" value="" placeholder="起"> <span style="vertical-align: top;">~</span>
			<input type="text" name="" value="" placeholder="止">
		</p>
		<p>
			<label for="">班组</label>
			<select name="">
				<option value="">全部</option>
				<option value="一组">一组</option>
			</select>
		</p>
	</div>
	<p class="text-right"> <button type="button" class="btn btn-default">检索</button></p>
	<table class="table table-responsive">
		<thead>
			<tr>
				<th>日期</th>
				<th>时间</th>
				<th>车道号</th>
				<th>车牌号</th>
				<th>入口站点</th>
				<th>车型</th>
				<th>称重数据（吨）</th>
				<th>补缴通行费金额</th>
				<th>违规类别</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th>检查、处理人员</th>
				<th></th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>超载5%</td>
				<td>装载吨位或空间（仅指翻式车、集装箱车）不足80%</td>
				<td></td>
				<td>装载目录外农产品或目录外农产品混装比例超过20%</td>
				<td>装载或混装非农产品</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>装载吨位</td>
				<td>装载空间</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				
			</tr>
			<tr>
				<td>12.16</td>
				<td>13.57</td>
				<td>311504</td>
				<td>浙380s</td>
				<td>盐官</td>
				<td>1</td>
				<td>2.76</td>
				<td>10</td>
				<td></td>
				<td>√</td>
				<td>√</td>
				<td></td>
				<td></td>
				<td>高琴丽</td>
				<td>陈旦红</td>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
<script type="text/javascript">

</script>
</html>