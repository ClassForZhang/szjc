package com.cn.test.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.tomcat.util.codec.binary.Base64;
import org.junit.Test;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.cn.test.entity.Bonus;
import com.cn.test.entity.OperateSpecialPublish;
import com.cn.test.entity.SpecialOperate;
import com.cn.test.entity.UserEntity;
import com.cn.test.service.BonusService;
import com.cn.test.service.IOperateSpecialService;
import com.cn.test.service.OperateRealLTService;
import com.cn.test.utils.Constant;
import com.cn.test.utils.DateUtil;
import com.cn.test.utils.ResultHelperEasyui;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/operateSpecial")
public class OperateSpecialController {
	@Resource
	private IOperateSpecialService operateSpecialService;
	
	@Resource
	private BonusService bonusService;
	
	@Resource
	private OperateRealLTService operateRealLTService;
	
	//跳转页面
	@RequestMapping("/operateSpecialForm.action")
	public String operateSpecialForm(String station_id,String date,String operateId,String publish_id,ModelMap modelMap){
		if(station_id!=null){
			modelMap.put("station_id", station_id);
		}
		if(station_id!=null){
			String[] dates=date.split("~");
			modelMap.put("startTime", dates[0]);
			modelMap.put("endTime", dates[1]);
		}
		if(operateId!=null){
			modelMap.put("operateId", operateId);
		}
		if(publish_id!=null){
			modelMap.put("publish_id", publish_id);
		}
		return "/operateSpecialForm";
	}
	
	//分页查询
	@RequestMapping("/getOperateSpecialFormPage.action")
	@ResponseBody
	public Object getOperateSpecialFormPage(SpecialOperate entity) throws Exception{
		//int PageNumber= Integer.parseInt(params.get("page").toString()); 
		//Integer PageNumber = Integer.valueOf(request.getParameter("page"));
		//int size=Integer.parseInt(params.get("rows").toString()); 
		//Integer size = Integer.valueOf(request.getParameter("rows"));
		//entity.setPageNumber((PageNumber-1)*size);
		//entity.setLimit(size);
		int total=0;
		List<SpecialOperate> list =null;
		
		if(entity.getStartTime()!=null && entity.getStartTime()!=""){
			entity.setStartTime(entity.getStartTime().replace("-", ""));
		}
		if(entity.getEndTime()!=null && entity.getEndTime()!=""){
			entity.setEndTime(entity.getEndTime().replace("-", ""));
		}
		list = operateSpecialService.getOperateSpecialFormPage(entity);
		total = operateSpecialService.getTotalOperateSpecial(entity);
		
		/*Base64 base64 = new Base64();
		 // 我们需要进行请求的地址：
	    String temp = "http://127.0.0.1:9990/DataServer/JiaLvTong/date="+entity.getDate()+"&station="+entity.getStation_id();
	    
	    try {
	        // 1.这里将一个字符串构造成一个URL对象
	        URL url = new URL(temp);
	        // 2.获取HttpURRLConnection对象
	        HttpURLConnection connection = (HttpURLConnection)url.openConnection();
	        // 3.调用connect方法连接远程资源
	        connection.connect();
	        // 4.访问资源数据，使用getInputStream方法获取一个输入流用以读取信息
	        BufferedReader bReader = new BufferedReader(
	                    new InputStreamReader(connection.getInputStream(), "UTF-8"));

	        // 对数据进行访问
	        String line = null;
	        StringBuilder stringBuilder = new StringBuilder();
	        while ((line = bReader.readLine()) != null) {
	            stringBuilder.append(line);
	        }

	        // 关闭流
	        bReader.close();
	        // 关闭链接
	        connection.disconnect();
	        // 打印获取的结果
	        //System.out.println(stringBuilder.toString());
	        String result = new String(base64.decode(stringBuilder.toString()), "UTF-8");
	        //JSONObject json = (JSONObject) JSON.parse(result);
	        JSONObject json = JSONObject.fromObject(result);
	       // json.get("")
	        //String rowList = (String) json.getString("FDBS");\
	        JSONObject fdbsJson = (JSONObject) json.get("FDBS");
	        JSONObject managerJson=(JSONObject) fdbsJson.get("Manager");
	        net.sf.json.JSONArray tableList=(net.sf.json.JSONArray) managerJson.get("TableList");
	        JSONObject tableJson = (JSONObject) tableList.get(0);
	        net.sf.json.JSONArray rowLists = (net.sf.json.JSONArray) tableJson.get("RowList");
	        JSONObject rowList =(JSONObject) rowLists.get(rowLists.size()-1);
	        total = (Integer) rowList.get("RowID")+1;
	        list = new ArrayList<SpecialOperate>();
	        for(int i=0;i<rowLists.size();i++){
	        	JSONObject newJson = new JSONObject();
	        	newJson = (JSONObject) rowLists.get(i);
	        	JSONObject dealJson =  (JSONObject) newJson.get("Original");
	        	//SpecialOperate specialOperate = (SpecialOperate) newJson.get("Original");
	        	//specialOperate.setChargeMan(dealJson.get("出口收费员姓名").toString());
	        	//specialOperate.setDate(dealJson.get("出口系统时间").toString());
	        	SpecialOperate specialOperate = new SpecialOperate();
	        	
	        	if(dealJson.containsKey("出口收费员姓名")){
	        		specialOperate.setChargeMan(dealJson.get("出口收费员姓名").toString());
	        	}
	        	if(dealJson.containsKey("EnStationName")){
	        		specialOperate.setEnStationName(dealJson.get("EnStationName").toString());
	        	}
	        	if(dealJson.containsKey("出口系统时间")){
	        		specialOperate.setDate(dealJson.get("出口系统时间").toString());
	        	}
	        	if(dealJson.containsKey("UserName")){
	        		specialOperate.setUserName(dealJson.get("UserName").toString());
	        	}
	        	if(dealJson.containsKey("d_toll")){
	        		specialOperate.setD_toll(Double.valueOf((Integer)dealJson.get("d_toll")));
	        	}
	        	if(dealJson.containsKey("n_ex_lane_id")){
	        		specialOperate.setN_ex_lane_id(dealJson.get("n_ex_lane_id").toString());
	        	}
	        	if(dealJson.containsKey("WeiGuiSuoMing")){
	        		specialOperate.setWeiGuiSuoMing(dealJson.get("WeiGuiSuoMing").toString());
	        	}
	        	if(dealJson.containsKey("c_ex_vehicle_class")){
	        		specialOperate.setC_ex_vehicle_class(dealJson.get("c_ex_vehicle_class").toString());
	        	}
	        	list.add(specialOperate);
	        	operateSpecialService.save(specialOperate);
	        }
	        
	        //rowList.getRowID();
	        //SpecialOperate specialOperate=rowList.getSpecialOperate();
	        
	       
	        } catch (Exception e) {
	            e.printStackTrace();
	        }*/	    
		return new ResultHelperEasyui(list, total, Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
		//return operateSpecialService.getOperateSpecialFormPage(entity);
	}
	
	
	@ResponseBody
	@RequestMapping("/addToPublish.action")
	public void addToPublish(String selectedRows){
		JSONObject json = JSONObject.fromObject(selectedRows);
		Integer id;
		String userName;
		double d_toll;
		String weiGuiSuoMing;
		String dateBefore;
		String dateAfter;
		String enStationName;
		String chargeMan;
		String c_ex_vehicle_class;
		String station_id;
		Boolean isNewRecord;
		String n_ex_lane_id;
		isNewRecord =(Boolean) json.get("isNewRecord");
		userName = (String) json.get("userName");
		String temp = (String)json.get("d_toll");
		if(temp.equals("")){
			d_toll = 0;
		}else{
			d_toll = Double.valueOf(temp) ;
		}
		weiGuiSuoMing = (String) json.get("weiGuiSuoMing");
		dateBefore = (String) json.get("dateBefore");
		dateAfter = (String) json.get("dateAfter");
		enStationName = (String) json.get("enStationName");
		c_ex_vehicle_class = (String) json.get("c_ex_vehicle_class");
		station_id = (String) json.get("station_id");
		n_ex_lane_id  = (String) json.get("n_ex_lane_id");
		chargeMan  = (String) json.get("chargeMan"); 
		SpecialOperate specialOperate= new SpecialOperate();
		specialOperate.setUserName(userName);
		specialOperate.setD_toll(d_toll);
		specialOperate.setWeiGuiSuoMing(weiGuiSuoMing);
		specialOperate.setEnStationName(enStationName);
		specialOperate.setC_ex_vehicle_class(c_ex_vehicle_class);
		specialOperate.setStation_id(station_id);
		specialOperate.setN_ex_lane_id(n_ex_lane_id);
		specialOperate.setChargeMan(chargeMan);
		specialOperate.setDate(dateBefore+"T"+dateAfter);
		if(isNewRecord!=null){
			operateSpecialService.save(specialOperate);
		}else{
			id = (Integer) json.get("id");
			specialOperate.setId(Long.valueOf(id));
			operateSpecialService.update(specialOperate);
		}
		
	}
	
	
	@ResponseBody
	@RequestMapping("/deleteOne.action")
	public void deleteOne(String selectedRows){
		JSONObject json = JSONObject.fromObject(selectedRows);
		Integer id = (Integer) json.get("id");
		operateSpecialService.deleteOne(id);
	}
	
	
	//发起
	@ResponseBody
	@RequestMapping("/publish.action")
	public void publish(String[] ids,HttpSession httpSession,String station_id,String startTime,String endTime){
		//JSONObject json = JSONObject.fromObject(selectedRows);
		String date = DateUtil.dateToStr(DateUtil.getCurrentDate());
		//Integer id = (Integer) json.get("id");
		//ids为该订单对应的id集合
		//检查ids中是否有已审核的信息,如果有则不重复审核,后面再这样写
		UserEntity userEntity = (UserEntity) httpSession.getAttribute("activeUser");
		OperateSpecialPublish operateSpecialPublish = new OperateSpecialPublish();
		operateSpecialPublish.setDate(startTime+"~"+endTime);
		operateSpecialPublish.setPublish_man(userEntity.getUserName());
		operateSpecialPublish.setPublish_time(date);
		//3未审核
		operateSpecialPublish.setStatus(3);
		operateSpecialPublish.setStation(station_id);
		String nos = "";
		for(int i=0;i<ids.length;i++){
			if(i==(ids.length-1)){
				nos+=ids[i];
			}else{
				nos+=ids[i]+",";
			}
		}
		operateSpecialPublish.setOperate_ids(nos);
		operateSpecialService.savePublish(operateSpecialPublish);
		//获得orderId,改变id所属订单号，删除订单的同时，清除id所属订单号
		String order_id = operateSpecialService.getOrderIdByDate(date);
		operateSpecialService.updateOrderIdByIds(order_id,ids);
		
	}
	
	@RequestMapping("/operateSpecialPublish.action")
	public String operateSpecialPublish(){
		return "/operateSpecialPublish";
	}
	
	@ResponseBody
	@RequestMapping("/getOperateSpecialPublishPage.action")
	public Object getOperateSpecialPublishPage(OperateSpecialPublish entity){
		List<OperateSpecialPublish> list = operateSpecialService.getOperateSpecialPublishPage(entity);
		int total = operateSpecialService.getTotalOperateSpecialPublish(entity);
		return new ResultHelperEasyui(list, total, Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}
	
	//批量删除
	@ResponseBody
	@RequestMapping("/deletePublishs.action")
	public void deletePublishs(String[] ids){
		 operateSpecialService.deletePublishs(ids);
		 String order_id="";
		 operateSpecialService.updateOrderIdByIds(order_id, ids);
	}
	
	//批量发布
	@ResponseBody
	@RequestMapping("/updatePublishs.action")
	public void updatePublishs(String[] ids,int status,HttpSession httpSession){
		if(status==2){
			UserEntity userEntity = (UserEntity) httpSession.getAttribute("activeUser");
			//更新审核人和审核时间
			operateSpecialService.updatePublishAudit(ids,userEntity.getUserName(),DateUtil.dateToStr(DateUtil.getCurrentDate()));
		}
		 operateSpecialService.updatePublishs(ids,status);
		 //ids为Publish表的id
		 //根据ids找对应的审核通过的数据，找到Username,和d_toll,找username对应的bonus表的bonus，累加d_toll,然后与order_id一起更新在bonus表
		 for(int i=0;i<ids.length;i++){
			 List<SpecialOperate> specialOperateList=operateSpecialService.getOneByOrderId(ids[i]);
			 for(SpecialOperate specialOperate:specialOperateList){
				 Bonus bonus= bonusService.getOneByUserName(specialOperate.getUserName());
				 bonus.setBonus(0.1*specialOperate.getD_toll()+bonus.getBonus());
				 if(bonus.getOrder_ids().equals("")){
					 bonus.setOrder_ids(ids[i]);
				 }else{
					 bonus.setOrder_ids(bonus.getOrder_ids()+","+ids[i]);
				 }
				 bonusService.updateBonus(bonus);
				 bonus= bonusService.getOneByUserName(specialOperate.getChargeMan());
				 bonus.setBonus(0.1*specialOperate.getD_toll()+bonus.getBonus());
				 if(bonus.getOrder_ids().equals("")){
					 bonus.setOrder_ids(ids[i]);
				 }else{
					 bonus.setOrder_ids(bonus.getOrder_ids()+","+ids[i]);
				 }
				 bonusService.updateBonus(bonus);
			 }
			 
		 }
	}
	
	
	/*@ResponseBody
	@RequestMapping("/operateSpecialPublishView.action")
	public Object operateSpecialPublishView(String orderId){
		OperateSpecialPublish operateSpecialPublish = operateSpecialService.getEntityById(orderId);
		String dates = operateSpecialPublish.getDate();
		String[] date=dates.split("~");
		String startTime = date[0];
		String endTime = date[1];
		String station_id = operateSpecialPublish.getStation();
		SpecialOperate specialOperate = new SpecialOperate();
		specialOperate.setStartTime(startTime);
		specialOperate.setEndTime(endTime);
		specialOperate.setPageNumber(1);
		specialOperate.setStation_id(station_id);
		List<SpecialOperate> list = operateSpecialService.getOperateSpecialFormPage(specialOperate);
		int total = operateSpecialService.getTotalOperateSpecial(specialOperate);
		return new ResultHelperEasyui(list, total, Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}*/
	
	@RequestMapping("/operateSpecialCheck.action")
	public String operateSpecialCheck(){
		return "/operateSpecialCheck";
	}
	
	
	//给奖金表用
	@RequestMapping("/getOperateSpecialFormPageForBonus.action")
	@ResponseBody
	public List<SpecialOperate> getOperateSpecialFormPageForBonus(String[] order_ids,String username) throws Exception{
		List<SpecialOperate> list=operateSpecialService.getOperateSpecialFormPageForBonus(order_ids);
		for(int i=0;i<list.size();i++){
			if(!list.get(i).getChargeMan().equals(username)&&!list.get(i).getUserName().equals(username)){
				list.remove(i);
			}
		}
		return list;
				
	}
	
	//给特殊车辆统计表用
	@RequestMapping("/getSpecialCarData.action")
	@ResponseBody
	public Object getSpecialCarData(String station_id,String month) throws Exception{
		//上报总车辆数
		int totalCarNum = operateSpecialService.getTotalCarNum(station_id,month);
		//符合奖励条件的车辆数
		String toll ="0";
		int totalRewardCarNum =operateSpecialService.getTotalRewardCarNum(station_id,month,toll);
		//获得挽回金额
		int d_toll = operateSpecialService.getTotalToll(station_id,month);
		//获得减免车辆
		int ltCarNum = operateRealLTService.getLTCarNum(station_id,month);
		//获得减免金额
		int ltToll = operateRealLTService.getltToll(station_id,month);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("totalCarNum", totalCarNum);
		jsonObject.put("totalRewardCarNum", totalRewardCarNum);
		jsonObject.put("d_toll", d_toll);
		jsonObject.put("ltCarNum", ltCarNum);
		jsonObject.put("ltToll", ltToll);
		return jsonObject;
	}
}
