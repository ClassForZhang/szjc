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
		.dateTime{
			overflow: hidden;
			margin: 10px 0;
			padding: 0 10px;
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
					<select name="station" class="station">
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
				<!-- style="fontcolor:black;font-family:'Helvetica Neue';font-weight: 700;" -->
				<p >
					日 期<input class="easyui-datebox" id="startTime" data-options="required:true" value="" style="width:100px">
					~<input class="easyui-datebox" id="endTime" data-options="required:true" value="" style="width:100px">
				</p>
				<p>
					<label for="">车道号</label>
					<select name="" class="carStreetNum">
						<option value="">全部</option>
					</select>
				</p>
				<p>
					<label for="">违规类别</label>
					<select name="" class="breakRuleType">
						<option value="">全部</option>
						
					</select>
				</p>
				<p>
					<label for="">操作人员</label>
					<select name="" class="chargePerson">
						<option value="1">全部</option>
					</select>
				</p>
				<p>
					<label for="">旁站人员</label>
					<select name="" class="standPerson">
						<option value="1">全部</option>
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
					<input type="reset" name="" value="重置" class="btn btn-default reset">
					<button type="button" class="btn btn-default search">检索</button>
					<button type="button" class="btn btn-default save">保存</button>
					<button type="button" class="btn btn-success add">添加</button>
					<button type="button" class="btn btn-primary delete">删除</button>
					<button type="button" class="btn btn-default publish">发起</button> 
				</p>
			
		</form>
	</div>
	
	<div class="operationForms">
		
	</div>
	
</body>
<script type="text/javascript">
		var result=[];
		$(function(){

			var name = "${activeUser.userName}";
			$(".userName").val(name);
			var station_id ="${station_id}"; 
			var startTime ="${startTime}";
			var endTime ="${endTime}";
			var operateId ="${operateId}";
			var publish_id="${publish_id}";
			if(station_id!=""&& startTime!=""&&endTime!=""&&publish_id!=""){
				
				$("#startTime").datebox('setValue', startTime);
				$("#endTime").datebox('setValue', endTime);
				$("select[name='station'] option").each(function(){
					if($(this).val()==station_id){
						$(this).attr("selected",true);
					}
				})
				$.ajax({
					url: '${ctx}/operateSpecial/getOperateSpecialFormPage.action',
					type: 'get',
					dataType: 'json',
					data: {pageNumber:1,
						   station_id:station_id,
						   startTime:startTime,
						   endTime:endTime,
						   order_id:publish_id
					},
					async:false,
				})
				.done(function(data) {
					var laneIds = data.rows;
					$(".carStreetNum").empty();
					$(".carStreetNum").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var laneId = laneIds[i].n_ex_lane_id;
						$(".carStreetNum").append("<option value='"+laneId+"'>"+laneId+"</option>");
					}
					$(".breakRuleType").empty();
					$(".breakRuleType").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var weiGuiSuoMing = laneIds[i].weiGuiSuoMing;
						if(weiGuiSuoMing!=null)
						$(".breakRuleType").append("<option value='"+weiGuiSuoMing+"'>"+weiGuiSuoMing+"</option>");
					}
					$(".chargePerson").empty();
					$(".chargePerson").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var chargeMan = laneIds[i].chargeMan;
						$(".chargePerson").append("<option value='"+chargeMan+"'>"+chargeMan+"</option>");
					}
					$(".standPerson").empty();
					$(".standPerson").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var userName = laneIds[i].userName;
						$(".standPerson").append("<option value='"+userName+"'>"+userName+"</option>");
					}
					//去重
					$(".carStreetNum option").each(function() {
			            text = $(this).text();
			            if($(".carStreetNum option:contains("+text+")").length > 1)
			                $(".carStreetNum option:contains("+text+"):gt(0)").remove();
			        });
					$(".chargePerson option").each(function() {
			            text = $(this).text();
			            if($(".chargePerson option:contains("+text+")").length > 1)
			                $(".chargePerson option:contains("+text+"):gt(0)").remove();
			        });
					$(".breakRuleType option").each(function() {
			            text = $(this).text();
			            if($(".breakRuleType option:contains("+text+")").length > 1)
			                $(".breakRuleType option:contains("+text+"):gt(0)").remove();
			        });
					$(".standPerson option").each(function() {
			            text = $(this).text();
			            if($(".standPerson option:contains("+text+")").length > 1)
			                $(".standPerson option:contains("+text+"):gt(0)").remove();
			        });
					
					result=data;
					return result;
				})
				.fail(function() {
					console.log("error");
				})
				operationFormsInit(result);
				if(operateId==""){
					$(".search").attr("disabled",true);
					$(".save").attr("disabled",true);
					$(".add").attr("disabled",true);
					$(".delete").attr("disabled",true);
					$(".publish").attr("disabled",true);
					$(".reset").attr("disabled",true);
					$('.operationForms').edatagrid('disableEditing');
				}
			}else{
				$.ajax({
					url: '${ctx}/operateSpecial/getOperateSpecialFormPage.action',
					type: 'get',
					dataType: 'json',
					data: {pageNumber:1
					},
					async:false,
				})
				.done(function(data) {
					var laneIds = data.rows;
					$(".carStreetNum").empty();
					$(".carStreetNum").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var laneId = laneIds[i].n_ex_lane_id;
						$(".carStreetNum").append("<option value='"+laneId+"'>"+laneId+"</option>");
					}
					$(".breakRuleType").empty();
					$(".breakRuleType").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var weiGuiSuoMing = laneIds[i].weiGuiSuoMing;
						if(weiGuiSuoMing!=null)
						$(".breakRuleType").append("<option value='"+weiGuiSuoMing+"'>"+weiGuiSuoMing+"</option>");
					}
					$(".chargePerson").empty();
					$(".chargePerson").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var chargeMan = laneIds[i].chargeMan;
						$(".chargePerson").append("<option value='"+chargeMan+"'>"+chargeMan+"</option>");
					}
					$(".standPerson").empty();
					$(".standPerson").append("<option value=''>全部</option>");
					for(var i=0;i<laneIds.length;i++){
						var userName = laneIds[i].userName;
						$(".standPerson").append("<option value='"+userName+"'>"+userName+"</option>");
					}
					//去重
					$(".carStreetNum option").each(function() {
			            text = $(this).text();
			            if($(".carStreetNum option:contains("+text+")").length > 1)
			                $(".carStreetNum option:contains("+text+"):gt(0)").remove();
			        });
					$(".chargePerson option").each(function() {
			            text = $(this).text();
			            if($(".chargePerson option:contains("+text+")").length > 1)
			                $(".chargePerson option:contains("+text+"):gt(0)").remove();
			        });
					$(".breakRuleType option").each(function() {
			            text = $(this).text();
			            if($(".breakRuleType option:contains("+text+")").length > 1)
			                $(".breakRuleType option:contains("+text+"):gt(0)").remove();
			        });
					$(".standPerson option").each(function() {
			            text = $(this).text();
			            if($(".standPerson option:contains("+text+")").length > 1)
			                $(".standPerson option:contains("+text+"):gt(0)").remove();
			        });
	
	
					result=data;
					return result;
				})
				.fail(function() {
					console.log("error");
				})
				operationFormsInit(result);
			} 
			$(".search").click(function(event) {
				var operationId=$(".operationId").val();
				var company=$(".station").val();
				var startTime=$("#startTime").val();
				var endTime=$("#endTime").val();
				var carStreetNum=$(".carStreetNum").val();
				var breakRuleType=$(".breakRuleType").val();
				var chargePerson=$(".chargePerson").val();
				var standPerson=$(".standPerson").val();
				var userName=$(".standPerson").val();
				$.ajax({
					url: '${ctx}/operateSpecial/getOperateSpecialFormPage.action',
					type: 'post',
					dataType: 'json',
					data: {pageNumber:1,
						   station_id:company,
						   startTime:startTime,
						   endTime:endTime,
						   n_ex_lane_id:carStreetNum,
						   WeiGuiSuoMing:breakRuleType,
						   chargeMan:chargePerson,
						   UserName:userName
					},
					async:false,
				})
				.done(function(data) {
					result=data;
					return result;
				})
				operationFormsInit(result);
				
			});
			
			//发起
			$(".publish").click(function(event) {
				var selectedRows=$('.operationForms').edatagrid("getChecked");
				var rows = selectedRows.length;
				if(rows==0){
					alert("请勾选需要发起的数据")
				}else{
					var station_id=$(".station").val();
					var startTime=$("#startTime").val();
					var endTime=$("#endTime").val();
					if(station_id==""||startTime==""||endTime==""){
						alert("请选择单位和日期");
					}else{
						var array = new Array();
						for(var i=0;i<rows;i++){
							array.push(selectedRows[i].id);
						}
						$.ajax({
							type:'post',
							url:'${ctx}/operateSpecial/publish.action',
							dataType:'json',
							data:{
								  "ids":array.toString(),
								  "station_id":station_id,
								  "startTime":startTime,
								  "endTime":endTime,
							},
							success:function(){
							}
						})
						window.location.href='${ctx}/operateSpecial/operateSpecialPublish.action';
					}
				}
			});
			$(".save").click(function(event) {
				var selectedRows=$('.operationForms').edatagrid("getChecked");
				for(var i=0;i<selectedRows.length;i++){
					$.ajax({
						type:'post',
						url:'${ctx}/operateSpecial/addToPublish.action',
						dataType:'json',
						data:{"selectedRows":JSON.stringify(selectedRows[i])},
						success:function(){
						}
					})
				}
				window.location.reload();
				
			});
			$(".delete").click(function(event) {
				var selectedRows=$('.operationForms').edatagrid("getChecked");
				for(var i=0;i<selectedRows.length;i++){
					$.ajax({
						type:'post',
						url:'${ctx}/operateSpecial/deleteOne.action',
						dataType:'json',
						data:{"selectedRows":JSON.stringify(selectedRows[i])},
						success:function(){
						}
					})
				}
				window.location.reload();
				alert("删除成功");
				
			});
			$(".add").click(function(event) {
				$('.operationForms').edatagrid('addRow');
				$('.operationForms').edatagrid('saveRow');
				
			});
			
			
		})
		
		function operationFormsInit(result){
			$('.operationForms').edatagrid({
				//url:'${ctx}/operateSpecial/getOperateSpecialFormPage.action',
			   	data:result,
			    saveUrl:'',
			    updateUrl:'',
			    destroyUrl:'',
			    columns:[[
			    	{field:'id',checkbox:true},
					{field:'dateBefore',title:'日期',width:'8%',editor:'text',
			    		formatter : function(value, row, index){
			    			var value = row.date;
			    			if(value!=undefined){
			    				var dateArray=value.split("T");
								return dateArray[0];
			    			}
			    			
						}
			    	},
					{field:'dateAfter',title:'时间',width:'8%',editor:'text',
						formatter : function(value, row, index){
			    			var dateAfter;
							var value = row.date;
							if(value!=undefined){
			    				var dateArray=value.split("T");
			    				dateAfter = dateArray[1];
			    				var date1= dateAfter.substring(0,2);
			    				var date2= dateAfter.substring(2,4);
			    				var date3= dateAfter.substring(4,6);
								return date1+":"+date2+":"+date3;
			    			}
						}	
					},
					{field:'n_ex_lane_id',title:'车道号',width:'8%',editor:'text'},
					{field:'enStationName',title:'入口站点',width:'10%',editor:'text'},
					{field:'c_ex_vehicle_class',title:'车型',width:'3%',editor:'text'},
					{field:'weiGuiSuoMing',title:'违规类型',width:'16%',editor:'text'},
					{field:'chargeMan',title:'收费人员',width:'8%',editor:'text'},
					{field:'userName',title:'旁站人员',width:'8%',editor:'text'},
					{field:'splitAmount',title:'实际拆分金额',width:'8%',editor:'text',
						formatter : function(value, row, index){
							var value = row.d_toll;
							return value*0.5;
						}		
					},
					{field:'d_toll',title:'挽回金额',width:'6%',editor:'text'},
					{field:'rewardAmount',title:'奖励金额',width:'8%',editor:'text',
						formatter : function(value, row, index){
							var value = row.d_toll;
							return value*0.1;
						}		
					},
					{field:'d_toll',title:'金额',width:'10%',editor:'text'}
			    ]],
			    singleSelect:true,
			    checkOnSelect:true,
			    selectOnCheck:false,
			    autoRowHeight:false,
				fitColumns:true,
				striped:true,
				nowrap:true,
				//pagination:true,
				rownumbers:true,
				pageNumber:1, 
				pageSize:10,
				//pageList:[10,20,30],
			    autoSave:true,
			    
			});
			
		}

</script>
</html>