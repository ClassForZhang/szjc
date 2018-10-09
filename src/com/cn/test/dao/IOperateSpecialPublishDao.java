package com.cn.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.OperateSpecialPublish;

public interface IOperateSpecialPublishDao {

	void savePublish(@Param("entity") OperateSpecialPublish operateSpecialPublish);

	List<OperateSpecialPublish> getOperateSpecialPublishPage(@Param("entity")OperateSpecialPublish entity,@Param("started") int started);

	int getTotalOperateSpecialPublish(@Param("entity")OperateSpecialPublish entity);

	void updatePublishById(String operationId);

	void deletePublishs(@Param("array")String[] ids);

	void updatePublishs(@Param("array")String[] ids,@Param("status") int status);

	void updatePublishAudit(@Param("array")String[] ids, @Param("audit_man")String userName,@Param("audit_time") String dateToStr);

	String getOrderIdByDate(String date);


}
