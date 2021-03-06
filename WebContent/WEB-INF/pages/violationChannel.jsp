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
			width: 50%;
		}
		.searchCondition p:nth-child(1){
			width: 100%;
		}
		
		.pagination{
			margin:0;
			//background-color: #174f99;
		}
	</style>
</head>
<body>
<div class="title text-center h4">绿通违规通道统计</div>
	<div class="searchCondition">
		<p>
			<label for="">站名</label>
			<select name="station" id="station_id" onchange="getDataByStation()">
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
			日期<input class="easyui-datebox" id="startTime" data-options="required:true" value="" style="width:100px">
				~<input class="easyui-datebox" id="endTime" data-options="required:true" value="" style="width:100px">
		</p>
		<!-- <p>
			<label for="">班组</label>
			<select name="">
				<option value="">全部</option>
				<option value="g1">一组</option>
				<option value="g2">二组</option>
				<option value="g3">三组</option>
				<option value="g4">四组</option>
			</select>
		</p> -->
	</div>
	<p class="text-right"> <button type="button" class="btn btn-default search">检索</button></p>
	
	<div class="operationForms">
		
	</div>
	<!-- <table class="table table-responsive">
		<thead>
			<tr>
				<th>日期</th>
				<th>时间</th>
				<th>车道号</th>
				<th>车牌号</th>
				<th>入口站点</th>
				<th>车型</th>
				<th>称重数据（吨）</th>
				<th>补缴通行费金额</th>
				<th>违规类别</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th>检查、处理人员</th>
				<th></th>
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
				<td>超载5%</td>
				<td>装载吨位或空间（仅指翻式车、集装箱车）不足80%</td>
				<td></td>
				<td>装载目录外农产品或目录外农产品混装比例超过20%</td>
				<td>装载或混装非农产品</td>
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
				<td>装载吨位</td>
				<td>装载空间</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				
			</tr>
			<tr>
				<td>12.16</td>
				<td>13.57</td>
				<td>311504</td>
				<td>浙380s</td>
				<td>盐官</td>
				<td>1</td>
				<td>2.76</td>
				<td>10</td>
				<td></td>
				<td>√</td>
				<td>√</td>
				<td></td>
				<td></td>
				<td>高琴丽</td>
				<td>陈旦红</td>
				<td></td>
			</tr>
		</tbody>
	</table> -->
</body>
<script type="text/javascript">

	function getDataByStation() {
		var station_id = $("select[name='station'] option:selected").val();
		$.ajax({
			url : '${ctx}/operateSpecial/getOperateSpecialFormPage.action',
			type : 'get',
			dataType : 'json',
			data : {
				pageNumber : 1,
				station_id : station_id
			},
			async : false,
		}).done(function(data) {
			return result = data;
		})
		operationFormsInit(result);
	}

	

	$(function() {
		$.ajax({
			url : '${ctx}/operateSpecial/getOperateSpecialFormPage.action',
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
				field : 'id',
				checkbox : true
			}, {
				field : 'dateBefore',
				title : '日期',
				width : '8%',
				editor : 'text',
				formatter : function(value, row, index) {
					var value = row.date;
					if (value != undefined) {
						var dateArray = value.split("T");
						return dateArray[0];
					}

				}
			}, {
				field : 'dateAfter',
				title : '时间',
				width : '8%',
				editor : 'text',
				formatter : function(value, row, index) {
					var dateAfter;
					var value = row.date;
					if(value!=null){
						var dateArray=value.split("T");
	    				dateAfter = dateArray[1];
	    				var date1= dateAfter.substring(0,2);
	    				var date2= dateAfter.substring(2,4);
	    				var date3= dateAfter.substring(4,6);
						return date1+":"+date2+":"+date3;
					}
				}
			}, {
				field : 'n_ex_lane_id',
				title : '车道号',
				width : '8%',
				editor : 'text'
			},
			/* {field:'',title:'车牌号',width:'10%',editor:'text'}, */
			{
				field : 'enStationName',
				title : '入口站点',
				width : '10%',
				editor : 'text'
			}, {
				field : 'c_ex_vehicle_class',
				title : '车型',
				width : '3%',
				editor : 'text'
			}, {
				field : 'd_weight',
				title : '称重数据(吨)',
				width : '8%',
				editor : 'text'
			}, {
				field : 'd_toll',
				title : '补缴通行费金额',
				width : '12%',
				editor : 'text'
			}, {
				field : 'weiGuiSuoMing',
				title : '违规类型',
				width : '16%',
				editor : 'text'
			}, {
				field : 'chargeMan',
				title : '检查人员',
				width : '8%',
				editor : 'text'
			}, {
				field : 'userName',
				title : '处理人员',
				width : '8%',
				editor : 'text'
			}, {
				field : 'description',
				title : '备注',
				width : '8%',
				editor : 'text'
			}, ] ],
			singleSelect : true,
			checkOnSelect : true,
			selectOnCheck : false,
			autoRowHeight : false,
			fitColumns : true,
			striped : true,
			nowrap : true,
			//pagination : true,
			rownumbers : true,
			pageNumber : 1,
			pageSize : 10,
			pageList : [ 10, 20, 30 ],
			autoSave : true

		});
	}

	$(".search").click(function(event) {
		var station_id = $("#station_id").val();
		var startTime = $("#startTime").val();
		var endTime = $("#endTime").val();
		$.ajax({
			url : '${ctx}/operateSpecial/getOperateSpecialFormPage.action',
			type : 'post',
			dataType : 'json',
			data : {
				pageNumber : 1,
				station_id : station_id,
				startTime : startTime,
				endTime : endTime
			},
			async : false,
		}).done(function(data) {
			result = data;
			return result;
		})
		operationFormsInit(result);
	})
</script>
</html>