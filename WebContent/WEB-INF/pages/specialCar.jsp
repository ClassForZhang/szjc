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
<div class="title text-center h4">奖金分配表</div>
	<div class="searchCondition">
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
	</div>
	<table class="table table-responsive">
		
		<tbody>
			<tr>
				<td>上报总车辆数</td>
				<td>103</td>
			</tr>
			<tr>
				<td>符合奖励车辆数</td>
				<td>103</td>
			</tr>
			<tr>
				<td style="color:red;">挽回金额</td>
				<td>11994.75</td>
			</tr>
			<tr>
				<td>设计总金额</td>
				<td>35070.85</td>
			</tr>
			<tr>
				<td>实际拆分总金额</td>
				<td>3460</td>
				<tr>
				<td>奖励总金额</td>
				<td>871</td>
			</tr>
			<tr>
				<td>减免车辆</td>
				<td>1822</td>
			</tr>
			<tr>
				<td>减免金额</td>
				<td>97410</td>
			</tr>
			<tr>
				<td>违规金额占比</td>
				<td>12.3%</td>
			</tr>
			<tr>
				<td>违规数量占比</td>
				<td>5.65%</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td>
					<label for="">制表人</label>
					<input type="text" name="" value="" placeholder="登录人">
				</td>
				<td>
					<label for="">审核人</label>
					<input type="text" name="" value="">
				</td>
			</tr>
		</tfoot>
	</table>
	</body>
</html>