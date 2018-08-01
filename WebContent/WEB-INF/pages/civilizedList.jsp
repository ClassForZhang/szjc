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
<div class="title text-center h4">文明服务专项考核列表</div>
	<div class="searchCondition">
		<p>
			<label for=""></label>
			<select name="">
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
		<p > 
			<button class="btn btn-default view">查看</button>
			<button class="btn btn-default edit">编辑</button>
		</p>
	</div>
	
	<div class="formLists"></div>
	<script>
		$(function(){
			var result=[{"formId":1,"date":"2018/7/22","company":"杭州北","userName":"张三","time":"2018/7/22","audit":"李四","auditTime":"2018/7/22","remarks":""},
						{"formId":2,"date":"2018/7/22","company":"杭州北","userName":"张三","time":"2018/7/22","audit":"李四","auditTime":"2018/7/22","remarks":""},
						{"formId":3,"date":"2018/7/22","company":"杭州北","userName":"张三","time":"2018/7/22","audit":"李四","auditTime":"2018/7/22","remarks":""},
						{"formId":4,"date":"2018/7/22","company":"杭州北","userName":"张三","time":"2018/7/22","audit":"李四","auditTime":"2018/7/22","remarks":""},
						{"formId":5,"date":"2018/7/22","company":"杭州北","userName":"张三","time":"2018/7/22","audit":"李四","auditTime":"2018/7/22","remarks":""}]
			$(".view").click(function(event) {
				var selectedRows=$('.formLists').datagrid("getChecked");
				if(selectedRows.length>1||selectedRows.length==0){
					alert("请勾选一个")
					return;
				}
				window.location.href="2-6-civilizedServiceAssess1-view.html";
				$(window.parent.document).find(".main-left li").children("a[data-value='2-6-civilizedServiceAssess1']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
			});
			$(".edit").click(function(event) {
				var selectedRows=$('.formLists').datagrid("getChecked");
				if(selectedRows.length>1||selectedRows.length==0){
					alert("请勾选一个")
					return;
				}
				window.location.href="2-6-civilizedServiceAssess1.html";
				$(window.parent.document).find(".main-left li").children("a[data-value='2-6-civilizedServiceAssess1']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
			});
			formListsInit(result);
		})
		function formListsInit(result){
			$('.formLists').datagrid({
			    // url:'datagrid_data.json',
			    data:result,
			    columns:[[
			    	{field:'formId',checkbox:true},
			    	{field:'date',title:'日期',width:'15%'},
					{field:'company',title:'单位',width:'15%'},
					{field:'userName',title:'制表人',width:'15%'},
					{field:'time',title:'制表时间',width:'15%'},
					{field:'audit',title:'审核人',width:'10%'},
					{field:'auditTime',title:'审核时间',width:'15%'},
					{field:'remarks',title:'备注',width:'15%'},
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