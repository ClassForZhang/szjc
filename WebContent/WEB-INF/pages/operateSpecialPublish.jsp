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
<div class="searchCondition">
		<form>
			<p>
				<label for="">单位</label>
				<select name="" class="company">
					<option value="">全部</option>
					<option value="杭州北">杭州北</option>
				</select>
			</p>
			<p>
				<label for="">当前状态</label>
				<select name="">
					<option value="">未发起</option>
					<option value="">待审核</option>
					<option value="">打回</option>
					<option value="">已审核</option>
				</select>
			</p>
			<p >
				<button  type="button" class="btn btn-default add">新增</button>
				<button type="button" class="btn btn-default view">查看</button>
				<button type="button" class="btn btn-default delete" >删除</button>
				<button type="button" class="btn btn-default request">发起</button>
			</p>
		</form>
	</div>
	<!-- <table class="table table-responsive">
		<thead>
			<tr>
				<th><input type="checkbox" name="" value=""></th>
				<th>序号</th>
				<th style="color:red;">单号</th>
				<th>日期</th>
				<th>单位</th>
				<th>发起人</th>
				<th>发起时间</th>
				<th>审核人</th>
				<th>审核时间</th>
				<th>当前状态</th>
				<th>备注</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox" name="" value=""></td>
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
				<td><input type="checkbox" name="" value=""></td>
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
				<td><input type="checkbox" name="" value=""></td>
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
				<td><input type="checkbox" name="" value=""></td>
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
				<td><input type="checkbox" name="" value=""></td>
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
		<tfoot>
			<tr>
				<td colspan="11">
					<ul class="pagination">
						<li>
							<a href="#" aria-label="Previous">
								<span aria-hidden="true" style="color:#23527c;">&laquo;</span>
							</a>
						</li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li>
							<a href="#" aria-label="Next">
								<span aria-hidden="true"  style="color:#23527c;">&raquo;</span>
							</a>
						</li>
					</ul>
				</td>
			</tr>
		</tfoot>
	</table> -->
	<div class="opeartionLists">
		
	</div>
</body>
<script type="text/javascript">
$(function(){
	/*var storage=window.localStorage;
	storage.getItem('forms1')*/
	var result=[];
	$.ajax({
		url: 'js/Lists.json',
		type: 'get',
		dataType: 'json',
		data: {},
		async:false,
	})
	.done(function(data) {
		return result=data;
	})
	.fail(function() {
		console.log("error");
	})

	$(".add").click(function(event) {
		var selectedRows=$('.opeartionLists').datagrid("getChecked");
		if(selectedRows.length>1||selectedRows.length==0){
			alert("请勾选一个")
			return;
		}
		window.location.href="first.html";
		$(window.parent.document).find(".main-left li").children("a[data-value='first']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
	});
	$(".view").click(function(event) {
		var selectedRows=$('.opeartionLists').datagrid("getChecked");
		if(selectedRows.length>1 ||selectedRows.length==0){
			alert("请勾选一个")
			return;
		}
		window.location.href="first-view.html";
		$(window.parent.document).find(".main-left li").children("a[data-value='first']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});

	});
	$(".delete").click(function(event) {
		var selectedRows=$('.opeartionLists').datagrid("getChecked");
		selectedRows.map(function(row, index) {
			var index=$('.opeartionLists').datagrid("getRowIndex",row);
			$('.opeartionLists').datagrid("deleteRow",index);
		})
		
	});
	$(".request").click(function(event) {
		var selectedRows=$('.opeartionLists').datagrid("getChecked");
		if(selectedRows.length>1||selectedRows.length==0){
			alert("请勾选一个")
			return;
		}
		selectedRows[0].status="待审核";
	});
	$(".company").change(function(event) {
		var searchKey=$(this).val();
		if(searchKey){

			var data=result.filter(function(row) {
				// console.log(Object.keys(row))
				return Object.keys(row).some(function(val,index,arr){
					// console.log(row['company'])
					if(val==='company')
						return JSON.stringify(row[val]).toLowerCase().indexOf(searchKey) > -1;
				})
			});
			$(".opeartionLists").datagrid('loadData',data);
		}else{

			$(".opeartionLists").datagrid('loadData',result);
		}
		
	});
	operationListsInit(result)
})

function operationListsInit(result){
	$('.opeartionLists').datagrid({
	    // url:'datagrid_data.json',
	    data:result,
	    columns:[[
	    	{field:'listsid',checkbox:true},
	    	{field:'operationId',title:'单号',width:'10%'},
			{field:'date',title:'日期',width:'15%'},
			{field:'company',title:'单位',width:'10%'},
			{field:'userName',title:'发起人',width:'10%'},
			{field:'time',title:'发起时间',width:'10%'},
			{field:'auditor',title:'审核人',width:'10%'},
			{field:'AuditTime',title:'审核时间',width:'10%'},
			{field:'status',title:'当前状态',width:'10%'},
			{field:'rmarks',title:'备注',width:'15%'}
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
</html>