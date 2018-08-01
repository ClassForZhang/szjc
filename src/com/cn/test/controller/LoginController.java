package com.cn.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.test.entity.UserEntity;
import com.cn.test.utils.Constant;
import com.cn.test.utils.MD5Util;

@Controller
public class LoginController {
	@RequestMapping("login.action")
	public String login(HttpServletRequest request, HttpServletResponse response, UserEntity user,@Param("randomcode")String randomcode) {
		// 首先进行验证码验证
		Session session = SecurityUtils.getSubject().getSession();
		/*String validateCode = (String) session.getAttribute("CHECK_NUMBER_KEY");
		if(validateCode!=null&&randomcode!=null){
			if(!randomcode.equalsIgnoreCase(validateCode)){
				request.setAttribute("LOGIN_ERROR_CODE", Constant.LOGIN_ERROR_CODE_100000);
				request.setAttribute("LOGIN_ERROR_MESSAGE", Constant.LOGIN_ERROR_MESSAGE_VALIDATECODE);
				return "login";
			}
		}else{
			return "login";
		}*/
		// 想要得到 SecurityUtils.getSubject() 的对象．．访问地址必须跟shiro的拦截地址内．不然后会报空指针
		Subject sub = SecurityUtils.getSubject();
		// 用户输入的账号和密码,,存到UsernamePasswordToken对象中..然后由shiro内部认证对比,
		// 认证执行者交由ShiroDbRealm中doGetAuthenticationInfo处理
		// 当以上认证成功后会向下执行,认证失败会抛出异常
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(), MD5Util.encodeByMD5(user.getPassword()));
		try {
			sub.login(token);
		} catch (LockedAccountException lae) {
			token.clear();
			request.setAttribute("LOGIN_ERROR_CODE", Constant.LOGIN_ERROR_CODE_100002);
			request.setAttribute("LOGIN_ERROR_MESSAGE", Constant.LOGIN_ERROR_MESSAGE_SYSTEMERROR);
			return "/login";
		} catch (ExcessiveAttemptsException e) {
			token.clear();
			request.setAttribute("LOGIN_ERROR_CODE", Constant.LOGIN_ERROR_CODE_100003);
			request.setAttribute("LOGIN_ERROR_MESSAGE",
					"账号：" + user.getUserName() + Constant.LOGIN_ERROR_MESSAGE_MAXERROR);
			return "/login";
		} catch (AuthenticationException e) {
			token.clear();
			request.setAttribute("LOGIN_ERROR_CODE", Constant.LOGIN_ERROR_CODE_100001);
			request.setAttribute("LOGIN_ERROR_MESSAGE", Constant.LOGIN_ERROR_MESSAGE_USERERROR);
			return "/login";
		}
	    user = (UserEntity) sub.getPrincipal();
		session.setAttribute("activeUser", user);
		return "/index";
	}
	
	//用户退出
	@RequestMapping("/logout.action")
	public String logout(HttpSession session)throws Exception{
		//session失效
		session.invalidate();
		return "login";
	}
}
