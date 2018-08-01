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
			width: 33.3%;
		} 
	</style>
</head>
<body>
<div class="title text-center h4">班组岗位综合考评分</div>
	<div class="searchCondition">
		<p>
			<label for="">单位</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">杭州北</option>
			</select>	
		</p>
		<p>
			<label for="">日期</label>
			<input type="text" name="" value="" placeholder="起">
			<span style="vertical-align: top;">~</span>
			<input type="text" name="" value="" placeholder="止">
		</p>
		<p>
			<label for="">班组</label>
			<select name="">
				<option value="">全部+基础班组</option>
			</select>
		</p>
		
	</div>
	<p class="text-right"><button type="button" class="btn btn-default">搜索</button></p>
	<table class="table table-responsive">
		<thead>
			<tr>
				<th>序号</th>
				<th>大班长考评</th>
				<th></th>
				<th>绩效</th>
				<th>绩效(40%)</th>
				<th>平均分(30%)</th>
				<th>考核(30%)</th>
				<th>合计分</th>
				<th>加分</th>
				<th></th>
				<th>扣分</th>
				<th>总分</th>
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
				<td>先进班组</td>
				<td>三月满分/每月一星</td>
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
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>站点班长考评</td>
				<td></td>
				<td>绩效</td>
				<td>绩效(80%)</td>
				<td>平均分(10%)</td>
				<td>考核(10%)</td>
				<td>合计分</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>2</td>
				<td>张小俊</td>
				<td>站点班长</td>
				<td>95</td>
				<td>76</td>
				<td>9.72</td>
				<td>10</td>
				<td>95.72</td>
				<td>3</td>
				<td></td>
				<td></td>
				<td>98.72</td>
			</tr>
			<tr>
				<td>3</td>
				<td>张三</td>
				<td>站点班长</td>
				<td>100</td>
				<td>80</td>
				<td>9.72</td>
				<td>9.5</td>
				<td>99.22</td>
				<td>3</td>
				<td>3</td>
				<td></td>
				<td>105.22</td>
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
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>收费员考评</td>
				<td></td>
				<td>绩效</td>
				<td>绩效(90%)</td>
				<td>文明服务(10%)</td>
				<td></td>
				<td>合计分</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td>李四</td>
				<td>收费员</td>
				<td>90</td>
				<td>81</td>
				<td>9</td>
				<td></td>
				<td>90</td>
				<td>2</td>
				<td></td>
				<td></td>
				<td>92</td>
			</tr>
			<tr>
				<td>5</td>
				<td>李四</td>
				<td>收费员</td>
				<td>90</td>
				<td>81</td>
				<td>9</td>
				<td></td>
				<td>90</td>
				<td>2</td>
				<td></td>
				<td></td>
				<td>92</td>
			</tr>
			<tr>
				<td>6</td>
				<td>李四</td>
				<td>收费员</td>
				<td>90</td>
				<td>81</td>
				<td>9</td>
				<td></td>
				<td>90</td>
				<td>2</td>
				<td></td>
				<td></td>
				<td>92</td>
			</tr>
			<tr>
				<td>7</td>
				<td>李四</td>
				<td>收费员</td>
				<td>90</td>
				<td>81</td>
				<td>9</td>
				<td></td>
				<td>90</td>
				<td>2</td>
				<td></td>
				<td></td>
				<td>92</td>
			</tr>
			<tr>
				<td>8</td>
				<td>李四</td>
				<td>收费员</td>
				<td>90</td>
				<td>81</td>
				<td>9</td>
				<td></td>
				<td>90</td>
				<td>2</td>
				<td></td>
				<td></td>
				<td>92</td>
			</tr>
			<tr>
				<td>9</td>
				<td>李四</td>
				<td>收费员</td>
				<td>90</td>
				<td>81</td>
				<td>9</td>
				<td></td>
				<td>90</td>
				<td>2</td>
				<td></td>
				<td></td>
				<td>92</td>
			</tr>
			<tr>
				<td>10</td>
				<td>李四</td>
				<td>收费员</td>
				<td>90</td>
				<td>81</td>
				<td>9</td>
				<td></td>
				<td>90</td>
				<td>2</td>
				<td></td>
				<td></td>
				<td>92</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td>平均分</td>
				<td>97.17</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
<script type="text/javascript">

</script>
</html>