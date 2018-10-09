package com.cn.test.entity;

import com.cn.test.utils.DateUtil;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

//itsm相关
public class UserInfoBean implements Serializable {

	private static final String SUPER_ADMIN_ID = "-1";

	private String userId;
	private String userName;
	private String loginName;
	private String pwd;
	private String email;
	private String mobile;
	private String phone;
	private String active; //是否在职
	private String available; //是否启用
	private String nickName;
	private String face;
	private String portrait;
	private String createUser;
	private Date createTime;
	private String modifyUser;
	private Date modifyTime;

	private String userCode;
	private String sex;
	private java.util.Date birthday;
	private int orgarnizationId;
	private String orgarnizationName;
	private String isBoss;
    private String position;
	private String loginTime;
    private String remark;//用户描述
    private String photoPath;//头像路径
    private int areaId;//区域ID
    private String areaName;
    private String logId;
    private String logTitle;//日志标题
    private String logMsg;// 日志信息

	private String regionId;

	private List<String> userFunctions;
	private List<Integer> orgIds;
	private List<Integer> regionIds;
	private String userNameAndLoginName;

	private String wechatId;
	private String rtxId;
	private Integer deleteFlag;

	public String getWechatId()
	{
		return wechatId;
	}

	public void setWechatId(String wechatId)
	{
		this.wechatId = wechatId;
	}

	public static UserEntity userinfo2user(UserInfoBean userInfoBean) {
		UserEntity user = new UserEntity();
		user.setLoginid(userInfoBean.getLoginName());
		user.setName(userInfoBean.userName);
		user.setEmail(userInfoBean.getEmail());
		user.setMobile(userInfoBean.getMobile());
		user.setUsercode(userInfoBean.getUserCode());
		user.setActive(userInfoBean.getActive());
		user.setBirthday(DateUtil.parse(userInfoBean.getBirthday(),
				"yyyy-MM-dd HH:mm:ss"));
		user.setOrganizationid(String.valueOf(userInfoBean.getOrgarnizationId()));
		user.setPassword(userInfoBean.getPwd());
		user.setPhone(userInfoBean.getPhone());
		user.setSex(userInfoBean.getSex());
		user.setAvailable(userInfoBean.getAvailable());
        user.setRemark(userInfoBean.getRemark());
        user.setPhotoPath(userInfoBean.getPhotoPath());
        user.setAreaId(String.valueOf(userInfoBean.getAreaId()));
		return user;
	}

	public static UserInfoBean user2userinfo(UserEntity user) {
		UserInfoBean userInfoBean = new UserInfoBean();
		//userInfoBean.setUserId(user.getId());
		userInfoBean.setUserName(user.getName());

        userInfoBean.setUserCode(user.getUsercode());

        userInfoBean.setLoginName(user.getLoginid());
		userInfoBean.setActive(user.getActive());
		userInfoBean.setAvailable(user.getAvailable());
		userInfoBean.setBirthday(user.getBirthday() == null
				|| user.getBirthday().isEmpty() ? new Date() : DateUtil
				.getTime(user.getBirthday(), "yyyy-MM-dd HH:mm:ss"));
		userInfoBean.setEmail(user.getEmail());
		userInfoBean.setMobile(user.getMobile());
		userInfoBean.setPhone(user.getPhone());
		userInfoBean.setOrgarnizationId(user.getOrganizationid() == null
				|| user.getOrganizationid().isEmpty() ? -1 : Integer
				.valueOf(user.getOrganizationid()));
		userInfoBean.setPwd(user.getPassword()!=null?user.getPassword().toUpperCase():null);
		userInfoBean.setSex(user.getSex());
		userInfoBean.setRemark(user.getRemark());
		userInfoBean.setPhotoPath(user.getPhotoPath());
		userInfoBean.setAreaId(Integer.parseInt(user.getAreaId()));
        /*user.setRemark(userInfoBean.getRemark());
        user.setPhotoPath(userInfoBean.getPhotoPath());
        user.setAreaId(String.valueOf(userInfoBean.getAreaId()));*/
		return userInfoBean;
	}

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public boolean isSuperAdmin() {
		return "-2".equals(userId)||SUPER_ADMIN_ID.equals(userId);
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public String getPortrait() {
		return portrait;
	}

	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getModifyUser() {
		return modifyUser;
	}

	public void setModifyUser(String modifyUser) {
		this.modifyUser = modifyUser;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public java.util.Date getBirthday() {
		return birthday;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setBirthday(java.util.Date birthday) {
		this.birthday = birthday;
	}

	public int getOrgarnizationId() {
		return orgarnizationId;
	}

	public void setOrgarnizationId(int orgarnizationId) {
		this.orgarnizationId = orgarnizationId;
	}

	public String getOrgarnizationName() {
		return orgarnizationName;
	}

	public void setOrgarnizationName(String orgarnizationName) {
		this.orgarnizationName = orgarnizationName;
	}

	public String getIsBoss() {
		return isBoss;
	}

	public void setIsBoss(String isBoss) {
		this.isBoss = isBoss;
	}

	public void setUserFunctions(List<String> userFunctions) {
		this.userFunctions = userFunctions;
	}

	public List<String> getUserFunctions() {
		return userFunctions;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result
				+ ((loginName == null) ? 0 : loginName.hashCode());
		result = prime * result + orgarnizationId;
		result = prime
				* result
				+ ((orgarnizationName == null) ? 0 : orgarnizationName
						.hashCode());
		result = prime * result
				+ ((userCode == null) ? 0 : userCode.hashCode());
		result = prime * result
				+ ((userName == null) ? 0 : userName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserInfoBean other = (UserInfoBean) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (loginName == null) {
			if (other.loginName != null)
				return false;
		} else if (!loginName.equals(other.loginName))
			return false;
		if (orgarnizationId != other.orgarnizationId)
			return false;
		if (orgarnizationName == null) {
			if (other.orgarnizationName != null)
				return false;
		} else if (!orgarnizationName.equals(other.orgarnizationName))
			return false;
		if (userCode == null) {
			if (other.userCode != null)
				return false;
		} else if (!userCode.equals(other.userCode))
			return false;
		if (userName == null) {
			if (other.userName != null)
				return false;
		} else if (!userName.equals(other.userName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "UserInfoBean [userId=" + userId + ", userName=" + userName
				+ ", loginName=" + loginName  + ", email="
				+ email + ", mobile=" + mobile + ", phone=" + phone
				+ ", active=" + active + ", available=" + available
				+ ", nickName=" + nickName  + ", portrait="
				+ portrait + ", createUser=" + createUser + ", createTime="
				+ createTime + ", modifyUser=" + modifyUser + ", modifyTime="
				+ modifyTime + ", userCode=" + userCode + ", sex=" + sex
				+ ", birthday=" + birthday + ", orgarnizationId="
				+ orgarnizationId + ", orgarnizationName=" + orgarnizationName
				+ ", isBoss=" + isBoss + ", userFunctions=" + userFunctions
                + ", remark=" + remark +", photoPath="+photoPath
                + ", areaId=" + areaId + ", areaName=" + areaName
				+ "]";
	}

	public String getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public int getAreaId() {
        return areaId;
    }

    public void setAreaId(int areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getLogTitle() {
        return logTitle;
    }

    public void setLogTitle(String logTitle) {
        this.logTitle = logTitle;
    }

    public String getLogMsg() {
        return logMsg;
    }

    public void setLogMsg(String logMsg) {
        this.logMsg = logMsg;
    }

    public String getLogId() {
        return logId;
    }

    public void setLogId(String logId) {
        this.logId = logId;
    }

	public List<Integer> getOrgIds()
	{
		return orgIds;
	}

	public void setOrgIds(List<Integer> orgIds)
	{
		this.orgIds = orgIds;
	}

	public String getRegionId() {
		return regionId;
	}

	public void setRegionId(String regionId) {
		this.regionId = regionId;
	}

	public List<Integer> getRegionIds() {
		return regionIds;
	}

	public void setRegionIds(List<Integer> regionIds) {
		this.regionIds = regionIds;
	}

	public String getUserNameAndLoginName() {
		return userNameAndLoginName;
	}

	public void setUserNameAndLoginName(String userNameAndLoginName) {
		this.userNameAndLoginName = userNameAndLoginName;
	}

	public String getRtxId() {
		return rtxId;
	}

	public void setRtxId(String rtxId) {
		this.rtxId = rtxId;
	}

	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
}
