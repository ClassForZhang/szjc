package com.cn.test.controller;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.cn.test.controller.aop.DataSwitch;
import com.cn.test.dao.IRoleDao;
import com.cn.test.dao.IUserDao;
import com.cn.test.entity.Role;
import com.cn.test.entity.UserEntity;
import com.cn.test.service.RoleService;
import com.cn.test.service.UserService;

public class UserRealm extends AuthorizingRealm{
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	//认证方法
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		//System.out.println("realm中的认证方法执行了。。。。");
		UsernamePasswordToken mytoken = (UsernamePasswordToken)token;
		String username = mytoken.getUsername();
		//根据用户名查询数据库中的密码
		UserEntity user = userService.findUserByUserName(username);
		if(user == null){
			//用户名不存在
			return null;
		}
		//如果能查询到，再由框架比对数据库中查询到的密码和页面提交的密码是否一致
		AuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
		return info;
	}

	//授权方法
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//给当前用户授权的权限（功能权限、角色）
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		UserEntity user = (UserEntity) principals.getPrimaryPrincipal();
        if(user.getUserName().equals("admin")){
        	//如果是超级管理员
        	//查询出所有的角色，给认证信息对象
        	List<Role> roleList = roleService.findAll();
        	for(Role role:roleList){
        		authorizationInfo.addRole(role.getRoleName());
        	}
        }else{
        	//如果是普通用户
        	List<Role> roleList = roleService.findByUserName(user.getLoginName());
        	for(Role role:roleList){
        		authorizationInfo.addRole(role.getRoleName());
        	}
        }
        SecurityUtils.getSubject().getSession().setAttribute("user", user);
        return authorizationInfo;
	}
}
