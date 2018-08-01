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

		.searchCondition p:nth-child(3n+1){
			text-align: right;
		}
		.searchCondition p:nth-child(1){
			text-align: left;
			width: 100%;
		}
		.searchCondition input.operationId{
			width: 200px;
		}
	</style>
</head>
<body>
<div class="searchCondition">
		<form >
				<p>
					<label for="">单号</label>
					<input type="text" placeholder="保存后生成显示或浏览模式显示" class="operationId">
				</p>
				
			
			
				<p>
					<label for="">单位</label>
					<select name="" class="company">
						<option value="">全部</option>
						<option value="杭州北">杭州北</option>
					</select>
				</p>
				<p>
					<label for="">日期</label>
					<input type="text" name="" value="" placeholder="起" class="startTime">
					<span style="vertical-align: top;">~</span>
					<input type="text" name="" value="" placeholder="止" class="endTime">
				</p>
				<p>
					<label for="">车道号</label>
					<select name="" class="carStreetNum">
						<option value="1">自动</option>
					</select>
				</p>
			
			
			
				<p>
					<label for="">违规类别</label>
					<select name="" class="breakRuleType">
						<option value="1">自动</option>
					</select>
				</p>
				<p>
					<label for="">操作人员</label>
					<select name="" class="chargePerson">
						<option value="1">自动</option>
					</select>
				</p>
				<p>
					<label for="">旁站人员</label>
					<select name="" class="standPerson">
						<option value="1">自动</option>
					</select>
				</p>
			
			
			
				<p style="width: 200px;">
					<label for="">制表人</label>
					<input type="text" name="" value="" placeholder="登录人" class="userName">
				</p>
				<p style="width: 200px;">
					<label for="">审核人</label>
					<input type="text" name="" value="" placeholder="" class="auditor" disabled>
				</p>
				<p style="width:calc(100% - 400px);">
					<input type="reset" name="" value="重置" class="btn btn-default">
					<button type="button" class="btn btn-default search">检索</button>
					<button type="button" class="btn btn-default update">修改确认</button>
					<button type="button" class="btn btn-default save">保存</button>
					<button type="button" class="btn btn-success add">添加</button>
					<button type="button" class="btn btn-primary delete">删除</button>
				</p>
			
		</form>
	</div>
	
	<div class="operationForms">
		
	</div>
	<!-- <table class="table table-responsive">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>序号</th>
				<th>日期</th>
				<th>时间</th>
				<th>车道</th>
				<th>入口站点</th>
				<th>违规类型</th>
				<th>收费人员</th>
				<th>旁站人员</th>
				<th>各种金额</th>
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
			</tr>
		</tbody>
	</table> -->
</body>
<script type="text/javascript">
		var result=[];
		var storage=window.localStorage;
		
		var num=0;
		if(storage.formsNum)
			num=storage.getItem('formsNum');
		else{
			storage.setItem('formsNum',num);
		}
		storage.clear()
		
		$(function(){
			$.ajax({
				url: 'js/Forms.json',
				type: 'get',
				dataType: 'json',
				data: {},
				async:false,
			})
			.done(function(data) {
		
				result=data
				return result;
			})
			.fail(function() {
				console.log("error");
			})
			storage.result=JSON.stringify(result);
			$(".search").click(function(event) {
				var operationId=$(".operationId").val();
				var company=$(".company").val();
				var startTime=$(".startTime").val();
				var endTime=$(".endTime").val();
				var carStreetNum=$(".carStreetNum").val();
				var breakRuleType=$(".breakRuleType").val();
				var chargePerson=$(".chargePerson").val();
				var standPerson=$(".standPerson").val();
				var userName=$(".userName").val();
				// var auditor=$(".auditor").val();
				var now=new Date();
				var date=startTime+'-'+endTime;
				var operationForm={operationId,company,date,carStreetNum,breakRuleType,chargePerson,standPerson,userName,now}
				if(company){
					var filterResult=result.filter(function(val,index,arr) {
						if(val.company==company){
							return true;
						}
					});
					$('.operationForms').datagrid('loadData',filterResult)
				}else{
					$('.operationForms').datagrid('loadData',result)
				}
			});
			
			$(".update").click(function(event) {
				$('.operationForms').edatagrid('saveRow')
			});
			$(".save").click(function(event) {
				num++;
				storage.setItem('formsNum',num);
				var operationId=$(".operationId").val();
				var selectedRows=$('.operationForms').edatagrid("getChecked");
				var obj={operationId:num,rows:selectedRows,status:'未发起',};
				if(operationId && typeof operationId==="number")
					storage.setItem("forms"+num,JSON.stringify(obj));
				else{
					storage.setItem("forms"+num,JSON.stringify(obj));
				}
				
				window.location.href='first-request.html';
				$(window.parent.document).find(".main-left li").children("a[data-value='first-request']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
		
			});
			$(".delete").click(function(event) {
				var selectedRows=$('.operationForms').edatagrid("getChecked");
				console.log(selectedRows)
				// 可以修改成从localStorage删除
				/*selectedRows.map(function(row,index) {
					var index=$('.operationForms').edatagrid("getRowIndex",row);
					console.log(index)
					result.splice(index,1)
				})
				$('.operationForms').edatagrid('loadData',result)*/
				//easyui自带删除，但是不好修改
				selectedRows.map(function(row,index) {
					var index=$('.operationForms').edatagrid("getRowIndex",row);
					$('.operationForms').edatagrid('deleteRow',index)
				})
				
			});
			$(".add").click(function(event) {
				$('.operationForms').edatagrid('addRow')
			});
			operationFormsInit(result);
			
		})
		
		function operationFormsInit(result){
			$('.operationForms').edatagrid({
			    // url:'datagrid_data.json',
			    data:result,
			    saveUrl:'',
			    updateUrl:'',
			    destroyUrl:'',
			    columns:[[
			    	{field:'id',checkbox:true},
					{field:'date',title:'日期',width:'15%',editor:'text'},
					{field:'now',title:'时间',width:'15%',editor:'text'},
					{field:'carStreetNum',title:'车道',width:'10%',editor:'text'},
					{field:'company',title:'入口站点',width:'15%',editor:'text'},
					{field:'breakRuleType',title:'违规类型',width:'10%',editor:'text'},
					{field:'chargePerson',title:'收费人员',width:'10%',editor:'text'},
					{field:'standPerson',title:'旁站人员',width:'10%',editor:'text'},
					{field:'money',title:'各种金额',width:'15%',editor:'text'}
			    ]],
			    rownumbers:true,
			    singleSelect:true,
			    checkOnSelect:true,
			    selectOnCheck:false,
			    fitColumns:true,
			    autoRowHeight:false,
			    fit:false,
			    autoSave:true,
			    loadFilter:function(data){
			    	if(!data.total && !data.rows){
			    		return {total:data.length,rows:data}
			    	}
			    	
			    },
		
			});
		}

</script>
</html>