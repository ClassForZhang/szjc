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
		/* .searchCondition p:nth-child(3n){
			text-align: right;
		} */
		.searchCondition p:nth-last-child(1){
			text-align: left;
		}
	</style>
</head>
<body>
<div class="title text-center h4">月度考核评分汇总表</div>
	<div class="searchCondition">
		<p>
			<label for="">部门</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">杭州北</option>
			</select>
		</p>
		<!-- <p>
			<label for="">人员类别</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">收费人员</option>
				<option value="">站点班长</option>
				<option value="">收费大班长</option>
			</select>
		</p> -->
		<p>
			<label for="">日期</label>
			<input type="text" placeholder="起">
			<span style="vertical-align: top;">~</span>
			<input type="text" placeholder="止">
		</p>
		<p>
			<label for="">制表人</label>
			<input type="text" >
			
		</p>
		<p>
			<button type="button" class="btn btn-default">检索</button>
			<button type="button" class="btn btn-default save">保存</button>
			<button type="button" class="btn btn-default">评定</button>
		</p>
	</div>
	<div class="totalForm"></div>
	<!-- <table class="table table-responsive">
		<thead>
			<tr>
				<th>序号</th>
				<th>姓名</th>
				<th>职务/岗位</th>
				<th>部门考评</th>
				<th>奖惩建议</th>
				<th>得分小计</th>
				<th>部门等级</th>
				<th>考核奖惩审定</th>
				<th>考核得分审定</th>
				<th>考核等级审定</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>俞某</td>
				<td>站点班长</td>
				<td>95.65</td>
				<td>2</td>
				<td>97.65</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>2</td>
				<td>厉某</td>
				<td>收费员</td>
				<td>94.5</td>
				<td>/</td>
				<td>94.5</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td>费某</td>
				<td>站点班长</td>
				<td>96.61</td>
				<td>1</td>
				<td>97.61</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>6</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>7</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>8</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>9</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>10</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>11</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>12</td>
				<td>陆某</td>
				<td>收费员</td>
				<td>98.25</td>
				<td>2</td>
				<td>100.2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>12</td>
				<td>俞某</td>
				<td>收费大班长</td>
				<td>96.96</td>
				<td>1</td>
				<td>97.96</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table> -->
	<script>
		$(function(){
			var result=[];
			$.ajax({
				url: 'js/forms2.json',
				type: 'get',
				dataType: 'json',
				data: {},
				async:false,
			})
			.done(function(data) {
				result=data;
				return result;
			})
			.fail(function() {
				console.log("error");
			})
			$(".save").click(function(event) {
				window.location.href='2-5-monthAssessLists.html';
				$(window.parent.document).find(".main-left li").children("a[data-value='2-5-monthAssessLists']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
			});
			totalFormInit(result)
		})
		function totalFormInit(result){
			$('.totalForm').datagrid({
			    // url:'datagrid_data.json',
			    data:result,
			    columns:[[
			    	{field:'formId',checkbox:true},
			    	{field:'name',title:'姓名',width:'10%'},
					{field:'job',title:'职务/岗位',width:'15%'},
					{field:'companyComment',title:'部门考评',width:'10%'},
					{field:'suggest',title:'奖惩建议',width:'15%'},
					{field:'total',title:'得分小计',width:'10%'},
					{field:'companyLevel',title:'部门等级',width:'10%'},
					{field:'RewardAndPunishment',title:'考核奖惩审定',width:'10%'},
					{field:'getScore',title:'考核得分审定',width:'10%'},
					{field:'level',title:'考核等级审定',width:'10%'}
			    ]],
			    rownumbers:true,
			    singleSelect:true,
			    checkOnSelect:true,
			    selectOnCheck:false,
			    fitColumns:true,
			    autoRowHeight:false,
			    fit:false,
			    loadFilter:function(data){
			    	if(!data.total && !data.rows){

			    		return {total:data.length,rows:data}
			    	}
			    	
			    },

			});
		}
	</script>
</body>
<script type="text/javascript">

</script>
</html>