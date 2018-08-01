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
<div class="title text-center h4">月度考核评分汇总表列表</div>
	<div class="searchCondition">
		<p>
			<label for="">部门</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">杭州北</option>
			</select>
		</p>
		
		<p>
			<label for="">日期</label>
			<input type="text" placeholder="起">
			<span style="vertical-align: top;">~</span>
			<input type="text" placeholder="止">
		</p>
		<p>
			<label for="">当前状态</label>
			<select name="">
				<option value="">部门未发起</option>
				<option value="">部门未审核</option>
				<option value="">考核组未审核</option>
				<option value="">考核组已审核</option>
			</select>
		</p>
		<p>
			<button type="button" class="btn btn-default view">查看</button>
			<button type="button" class="btn btn-default request">发起</button>
		</p>
	</div>
	<div class="monthAssessLists"></div>
	<!-- <table class="table table-responsive">
		<thead>
			<tr>
				<th>序号</th>
				<th>日期</th>
				<th>单位</th>
				<th>发起人</th>
				<th>发起时间</th>
				<th>分管领导</th>
				<th>审核时间</th>
				<th>考核组负责人</th>
				<th>考核时间</th>
				<th>当前状态</th>
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
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table> -->

	<!-- <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
	  <div class="modal-dialog modal-lg" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">月度考核评分汇总表</h4>
	      </div>
	      <div class="modal-body">
			<div class="searchCondition">
				<p>
					<label for="">部门</label>
					<select name="" >
						<option value="">全部</option>
						<option value="">杭州北</option>
					</select>
				</p>
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
					<button type="button" class="btn btn-default">保存</button>
					<button type="button" class="btn btn-default">评定</button>
				</p>
			</div>
			<table class="table table-responsive">
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
			</table>
	      </div>
	     
	    </div>
	  </div>
	</div> -->
	<script>
		$(function(){
			var result=[];
			$.ajax({
				url: 'js/forms3.json',
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
			$(".view").click(function(event) {
				var selectedRows=$('.monthAssessLists').datagrid("getChecked");
				if(selectedRows.length>1 ||selectedRows.length==0){
					alert("请勾选一个")
					return;
				}
				window.location.href="2-5-monthAssess.html";
				$(window.parent.document).find(".main-left li").children("a[data-value='2-5-monthAssess']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
			});

			$(".request").click(function(event) {
				var selectedRows=$('.monthAssessLists').datagrid("getChecked");
				if(selectedRows.length>1 ||selectedRows.length==0){
					alert("请勾选一个")
					return;
				}
				var index=$('.monthAssessLists').datagrid("getRowIndex",selectedRows[0]);
				$('.monthAssessLists').datagrid("deleteRow",index);
				alert("发起成功");
			});
			monthAssessListsInit(result)
		})
		function monthAssessListsInit(result){
			$('.monthAssessLists').datagrid({
			    // url:'datagrid_data.json',
			    data:result,
			    columns:[[
			    	{field:'listsid',checkbox:true},
			    	{field:'formId',title:'序号',width:'10%'},
					{field:'date',title:'日期',width:'10%'},
					{field:'company',title:'单位',width:'10%'},
					{field:'userName',title:'发起人',width:'10%'},
					{field:'time',title:'发起时间',width:'10%'},
					{field:'auditor',title:'分管领导',width:'10%'},
					{field:'AuditTime',title:'审核时间',width:'10%'},
					{field:'examinationGroupLeader',title:'考核组负责人',width:'10%'},
					{field:'assessTime',title:'考核时间',width:'10%'},
					{field:'status',title:'当前状态',width:'10%'},
					{field:'rmarks',title:'备注',width:'10%'}
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