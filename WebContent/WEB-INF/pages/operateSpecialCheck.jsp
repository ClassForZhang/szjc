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
		/* .operationListsBtn{
			display: inline-block;
			text-align: right;
		} */
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
					<option value="">待审核</option>
					<option value="">打回</option>
					<option value="">已审核</option>
				</select>
				
			</p>
			<p >
				<button type="button" class="btn btn-default view">查看</button>
				<button type="button" class="btn btn-default audit">审核</button>
				<button type="button" class="btn btn-default reject">打回</button>
			</p>
		</form>
	</div>
	<div class="opeartionLists">
		
	</div>
</body>
<script type="text/javascript">
$(function(){
	/*var storage=window.localStorage;
	storage.getItem('forms1')*/
	var result=[];
	$.ajax({
		url: 'js/Lists2.json',
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

	
	$(".view").click(function(event) {
		var selectedRows=$('.opeartionLists').datagrid("getChecked");

		if(selectedRows.length>1||selectedRows.length==0){
			alert("请勾选一个")
			return;
		}
		
		if(selectedRows[0].status=="待审核"){
			window.location.href="first-view.html";
		}else{
			window.location.href="first-audited.html";
		}
		
		$(window.parent.document).find(".main-left li").children("a[data-value='first']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
	});
	$(".audit").click(function(event) {
		var selectedRows=$('.opeartionLists').datagrid("getChecked");
		if(selectedRows.length>1||selectedRows.length==0){
			alert("请勾选一个")
			return;
		}
		selectedRows[0].status="已审核";
		var index=$('.opeartionLists').datagrid("getRowIndex",selectedRows[0]);
		$('.opeartionLists').datagrid("deleteRow",index);
		alert("审核成功");
		
	});
	$(".reject").click(function(event) {
		var selectedRows=$('.opeartionLists').datagrid("getChecked");
		if(selectedRows.length>1||selectedRows.length==0){
			alert("请勾选一个")
			return;
		}
		selectedRows[0].status="打回";
		var index=$('.opeartionLists').datagrid("getRowIndex",selectedRows[0]);
		$('.opeartionLists').datagrid("deleteRow",index);
		alert("已打回");
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