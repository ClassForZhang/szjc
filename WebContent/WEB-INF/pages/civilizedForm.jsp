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
	</style>
</head>
<body>
<div class="title text-center h4">文明服务专项考核表单</div>
	<div class="searchCondition">
		<p>
			<label for="">部门</label>
			<select name="" id="">
				<option value="">全部</option>}
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
			<label for="">制表人</label>
			<input type="text" name="" value="" >
		</p>
		<p>
			<button type="button" class="btn btn-default">检索</button>
			<button type="button" class="btn btn-default save">保存</button>
			<button type="button" class="btn btn-default">修改确认</button>
		</p>
	</div>
	<div class="form">
		
	</div>
	<!-- <div style="width: 90%;float: left;">
		<table class="table table-responsive">
			<thead>
				<tr>
					<th rowspan="2" style="vertical-align: middle;"><input type="checkbox" name="" value=""></th>
					<th rowspan="2" style="vertical-align: middle;">序号</th>
					<th rowspan="2" style="vertical-align: middle;">姓名</th>
					<th rowspan="2" style="vertical-align: middle;">职务</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th rowspan="2" style="vertical-align: middle;">考核得分</th>
				</tr>
				<tr>
					<th>1</th>
					<th>2</th>
					<th>3</th>
					<th>4</th>
					<th>5</th>
					<th>6</th>
					<th>7</th>
					<th>8</th>
					<th>9</th>
					<th>10</th>
					<th>11</th>
					<th>12</th>
					<th>13</th>
					<th>14</th>
					<th>15</th>
					<th>16</th>
					<th>17</th>
					<th>18</th>
					<th>19</th>
					<th>2.5%</th>
					<th>21</th>
					<th>22</th>
					<th>23</th>
					<th>24</th>
					<th>25</th>
					<th>26</th>
					<th>27</th>
					<th>28</th>
					<th>29</th>
					<th>2.5%</th>
					<th>31</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" name="id" value=""></td>
					<td>1</td>
					<td>程某某</td>
					<td>班长</td>
					<td></td>
					<td></td>
					<td></td>
					<td>-3</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-3</td>
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
					<td></td>
					<td></td>
					<td>0</td>
					<td></td>
					<td></td>
					<td>90</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id" value=""></td>
					<td>2</td>
					<td>周某</td>
					<td>收费员</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
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
					<td></td>
					<td></td>
					<td>0</td>
					<td></td>
					<td></td>
					<td>59.6</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id" value=""></td>
					<td>3</td>
					<td>周某</td>
					<td>收费员</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
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
					<td></td>
					<td></td>
					<td>0</td>
					<td></td>
					<td></td>
					<td>59.6</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id" value=""></td>
					<td>4</td>
					<td>周某</td>
					<td>收费员</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
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
					<td></td>
					<td></td>
					<td>0</td>
					<td></td>
					<td></td>
					<td>59.6</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id" value=""></td>
					<td>5</td>
					<td>周某</td>
					<td>收费员</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>-6</td>
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
					<td></td>
					<td></td>
					<td>0</td>
					<td></td>
					<td></td>
					<td>59.6</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div style="width: 10%;float: left;" class="ps"> -->
	</div>
	<script>
		$(function(){
			var result=[];
			$.ajax({
				url: 'js/forms6.json',
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
			
			tempInit(result)
			$(".save").click(function(event) {
				var selectedRows=$('.form').datagrid("getChecked");
				if(selectedRows.length>1||selectedRows.length==0){
					alert("请勾选一个")
					return;
				}
				window.location.href='2-6-civilizedServiceAssess2.html';
				$(window.parent.document).find(".main-left li").children("a[data-value='2-6-civilizedServiceAssess2']").css({"backgroundColor":"#3090db","color":"white"}).parent().siblings().children('a').css({"backgroundColor":"#f2f2f2","color":"black"});
			});
			
		})
		function tempInit(result){
			$(".form").edatagrid({
				data:result,
				 saveUrl:'',
			    updateUrl:'',
			    destroyUrl:'',
				columns:[[
					{field:'id',checkbox:true},
					{field:'name',title:'姓名',width:'5%',},
					{field:'job',title:'职务',width:'5%',},
					{field:'1',title:'1',width:'2.5%',},
					{field:'2',title:'2',width:'2.5%',},
					{field:'3',title:'3',width:'2.5%',},
					{field:'4',title:'4',width:'2.5%',},
					{field:'5',title:'5',width:'2.5%',},
					{field:'6',title:'6',width:'2.5%',},
					{field:'7',title:'7',width:'2.5%',},
					{field:'8',title:'8',width:'2.5%',},
					{field:'9',title:'9',width:'2.5%',},
					{field:'10',title:'10',width:'2.5%',},
					{field:'11',title:'11',width:'2.5%',},
					{field:'12',title:'12',width:'2.5%',},
					{field:'13',title:'13',width:'2.5%',},
					{field:'14',title:'14',width:'2.5%',},
					{field:'15',title:'15',width:'2.5%',},
					{field:'16',title:'16',width:'2.5%',},
					{field:'17',title:'17',width:'2.5%',},
					{field:'18',title:'18',width:'2.5%',},
					{field:'19',title:'19',width:'2.5%',},
					{field:'20',title:'20',width:'2.5%',},
					{field:'21',title:'21',width:'2.5%',},
					{field:'22',title:'22',width:'2.5%',},
					{field:'23',title:'23',width:'2.5%',},
					{field:'24',title:'24',width:'2.5%',},
					{field:'25',title:'25',width:'2.5%',},
					{field:'26',title:'26',width:'2.5%',},
					{field:'27',title:'27',width:'2.5%',},
					{field:'28',title:'28',width:'2.5%',},
					{field:'29',title:'29',width:'2.5%',},
					{field:'30',title:'30',width:'2.5%',},
					{field:'31',title:'31',width:'2.5%',},
					{field:'total',title:'考核得分',width:'5%',},
		    		{field:'remarks',title:'备注',width:'5%',editor:"text"},
	    		]],
	    		rownumbers:true,
			    singleSelect:true,
			    checkOnSelect:true,
			    selectOnCheck:false,
	    		frozen:true,
			    fitColumns:true,
			    autoRowHeight:false,
			    fit:false,
			    autoSave:true,
			    loadFilter:function(data){
			    	if(!data.total && !data.rows){
			    		return {total:data.length,rows:data}
			    	}
			    	
			    },
			})
		}
		
	</script>
</body>
<script type="text/javascript">

</script>
</html>