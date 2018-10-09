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

			width: 30%;
		}
	</style>
</head>
<body>
<div class="title text-center h4">收费站差错率表</div>
	<!-- <div class="searchCondition">
		<p>
			<label for="">站名</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">盐官</option>
			</select>
		</p>
		<p>
			<label for="">年月</label>
			<select name="" >
				<option value="">全部</option>
				<option value="">已审核年月</option>
			</select>
		</p>
		<button type="button" class="btn btn-default">查询</button>
	</div> -->
	<table class="table table-responsive">
		<thead>
			<tr>
				<th>名次</th>
				<th>站名</th>
				<th>长短款差错（次）</th>
				<th>其他各类差错（次）</th>
				<th>本月差错率</th>
				<th>上月差错率</th>
			</tr>
		</thead>
		<tbody id="errorData">
			<!-- <tr>
				<td>1</td>
				<td>杭州北</td>
				<td>0.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>2</td>
				<td>临平</td>
				<td>11.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>3</td>
				<td>胡家兜</td>
				<td>10</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>4</td>
				<td>盐官</td>
				<td>11</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>5</td>
				<td>海宁南</td>
				<td>15</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>6</td>
				<td>南北湖</td>
				<td>36.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>7</td>
				<td>海盐</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>8</td>
				<td>乍浦</td>
				<td>15.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>9</td>
				<td>独山</td>
				<td></td>
				<td>借调管理处</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>10</td>
				<td>新仓</td>
				<td>51</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>11</td>
				<td>浙沪南主线</td>
				<td>16.5</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>合计/平均</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr> -->
		</tbody>
		<tfoot>
			<!-- <tr>
				<td colspan="2">
					<label for="">制表人</label>
					<input type="text" name="" value="" placeholder="登录人">
				</td>
				<td colspan="2">
					<label for="">审核人</label>
					<input type="text" name="" value="">
				</td>
			</tr> -->
		</tfoot>
	</table>
	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
	  <div class="modal-dialog modal-lg" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">XXX专项数据统计表</h4>
	      </div>
	      <div class="modal-body">
	      	<div>
	      		<p style="display: inline-block;width: 50%;float: left;">单位:杭州北</p>
	      		<p class="text-right" style="display: inline-block;width: 50%;float: left;">月份:12月</p>
	      	</div>
	      	
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
	        	<tbody>
	        		<tr>
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
	        		</tr>
	        	</tbody>
	        	<tfoot>
	        		<tr>
	        			<td colspan="6">
	        				<label for="">制表人</label>
	        				<input type="text" placeholder="登录人">
	        			</td>
	        			<td colspan="7">
	        				<label for="">审核人</label>
	        				<input type="text">
	        			</td>
	        		</tr>
	        	</tfoot>
	        </table>
	      </div>
	      
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	<script>
	</script>
</body>
<script type="text/javascript">
		$(function(){
			$("#errorData").empty();
			var j;
			$.ajax({
				type:'post',
				url:'${ctx}/stationError/getData.action',
				success:function(data){
					for(var i in data){
						j=i;
						$("#errorData").append("<tr><td>"+(++j)+"</td>"+
								"<td>"+data[i].stationName+"</td>"+
								"<td>"+data[i].errorTimes+"</td>"+
								"<td>"+data[i].otherTimes+"</td>"+
								"<td></td>"+
								"<td></td>"+
								"</tr>")
						
					}
				}
			})
		})
</script>
</html>