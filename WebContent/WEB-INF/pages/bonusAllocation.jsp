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
	<script type="text/javascript" src="${ctx}/static/js/easyui-lang-zh_CN.js"></script>
	<style type="text/css" media="screen">
		.searchCondition p{

			width: 30%;
		}
	</style>
</head>
<body>
<div class="title text-center h4">奖金分配表</div>
	<div class="searchCondition">
		<!--<p>
			<label for="">站名</label>
			<select name="" >
				<option value="">全部</option>
				<option value="3111">杭州北</option>
				<option value="3113">临平</option>
				<option value="3115">胡家兜</option>
				<option value="3117">盐官</option>
				<option value="3119">海宁南</option>
				<option value="3121">南北湖</option>
				<option value="3123">海盐</option>
				<option value="3125">乍浦</option>
				<option value="3127">独山</option>
				<option value="3129">新仓</option>
				<option value="3131">浙沪南主线</option>
			</select>
		</p>
		<p>
			<label for="">年月</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">已审核年月</option>
			</select>
		</p> 
		<button type="button" class="btn btn-default">查询</button>-->
	</div>
	
	<div class="operationForms">
		
	</div>
	
	 <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"> 
	  <div class="modal-dialog modal-lg" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">营运专项数据统计表</h4>
	      </div>
	      <div class="modal-body">
	      	<div>
	      		<p style="display: inline-block;width: 50%;float: left;" id="station"></p>
	      		<p class="text-right" style="display: inline-block;width: 50%;float: left;">月份:12月</p>
	      	</div>
	      	
	      	<!-- <div class="operation"></div> -->
	        <table class="table table-responsive">
	        	<thead>
	        		<tr>
	        			<th>序号</th>
	        			<th>日期</th>
	        			<th>时间</th>
	        			<th>车道号</th>
	        			<th>入口站名</th>
	        			<th>车型</th>
	        			<th>违规类别</th>
	        			<th>收费人员</th>
	        			<th>旁站人员</th>
	        			<th>实际拆分金额</th>
	        			<th>挽回现金</th>
	        			<th>奖金金额</th>
	        			<th>金额</th>
	        		</tr>
	        	</thead>
	        	<tbody id="operateTable">
	        		<!-- <tr>
	        			<td>1</td>
	        			<td>12</td>
	        			<td>12</td>
	        			<td>35</td>
	        			<td>嘉兴</td>
	        			<td>1</td>
	        			<td>吨位超出5%</td>
	        			<td>张三</td>
	        			<td>李四</td>
	        			<td>99</td>
	        			<td>2</td>
	        			<td>3</td>
	        			<td>101</td>
	        		</tr> -->
	        	</tbody>
	        	<tfoot>
	        		<tr>
	        			<td colspan="6">
	        				<label for="">制表人</label>
	        				<input type="text" id="loginUserName" placeholder="登录人">
	        			</td>
	        			<td colspan="7">
	        				<label for="">审核人</label>
	        				<input type="text">
	        			</td>
	        		</tr>
	        	</tfoot>
	        </table>
	      </div>
	      
	    </div>
	  </div>
	</div>

	<script>
	$(function() {
		$.ajax({
			url : '${ctx}/bonusAllocation/getBonusPage.action',
			type : 'get',
			dataType : 'json',
			data : {
				pageNumber : 1
			},
			async : false,
		}).done(function(data) {
			result = data;
			return result;
		})
		operationFormsInit(result);
	})

	function operationFormsInit(result) {
		$('.operationForms').edatagrid({
			data : result,
			saveUrl : '',
			updateUrl : '',
			destroyUrl : '',
			columns : [ [ {
				field : 'no',
				checkbox:true
			},{
				field : 'id',
				title : '序号',
				width : '20%'
			}, {
				field : 'username',
				title : '姓名',
				width : '20%',
			},{
				field : 'bonus',
				title : '奖金金额',
				width : '20%',
			}, {
				field : 'description',
				title : '备注',
				width : '20%',
			}, ] ],
			singleSelect : true,
			checkOnSelect : true,
			selectOnCheck : false,
			autoRowHeight : false,
			fitColumns : true,
			striped : true,
			nowrap : true,
			pagination : true,
			rownumbers : false,
			pageNumber : 1,
			pageSize : 10,
			pageList : [ 10, 20, 30 ],
			autoSave : true,
			onClickRow: onClickRow


		});
	}
	
	/* $('.operationForms').edatagrid("getChecked").dblclick(function(event) {
		$(".modal").modal('show')
	}); */
	function onClickRow(index){
		var row=$('.operationForms').edatagrid('getSelected');
		$(".modal").modal('show');
		$.ajax({
			url : '${ctx}/operateSpecial/getOperateSpecialFormPageForBonus.action',
			type : 'post',
			dataType : 'json',
			data : {
				order_ids : row.order_ids,
				username:row.username
			},
			success:function(data){
				$("#operateTable").empty();
				for(var i in data){
					var date = data[i].date;
					var dates = date.split("T");
					var first = dates[0];
					var second = dates[1];
					var toll = data[i].d_toll;
					var index = i;
					$("#operateTable").append("<tr><td>"+(++index)+"</td>"
											+"<td>"+first+"</td>"
											+"<td>"+second+"</td>"
											+"<td>"+data[i].n_ex_lane_id+"</td>"
											+"<td>"+data[i].enStationName+"</td>"
											+"<td>"+data[i].c_ex_vehicle_class+"</td>"
											+"<td>"+data[i].weiGuiSuoMing+"</td>"
											+"<td>"+data[i].chargeMan+"</td>"
											+"<td>"+data[i].userName+"</td>"
											+"<td>"+0.5*toll+"</td>"
											+"<td>"+toll+"</td>"
											+"<td>"+0.1*toll+"</td>"
											+"<td>"+toll+"</td>"
											+"</tr>")
				}
				var value = data[0].station_id;
				var stationName;
				if(value=="3111"){
					stationName = "杭州北";
				}else if(value=="3113"){
					stationName = "临平";
				}else if(value=="3115"){
					stationName = "胡家兜";
				}else if(value=="3117"){
					stationName = "盐官";
				}else if(value=="3119"){
					stationName = "海宁南";
				}else if(value=="3121"){
					stationName = "南北湖";
				}else if(value=="3123"){
					stationName = "海盐";
				}else if(value=="3125"){
					stationName = "乍浦";
				}else if(value=="3127"){
					stationName = "独山";
				}else if(value=="3129"){
					stationName = "新仓";
				}else if(value=="3131"){
					stationName = "浙沪南主线";
				}
				$("#station").empty();
				$("#station").append("单位:"+stationName);
				var name = "${activeUser.userName}";
				$("#loginUserName").val(name);
			}
		})
		//operationInit(result); 
		//alert(row.order_ids);
		
	}
		$(".table").dblclick(function(event) {
			$(".modal").modal('show');
		});
		
	</script>
</body>
<script type="text/javascript">

</script>
</html>