package com.cn.test.controller.aop;

import java.lang.reflect.Method;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import com.cn.test.controller.MultipleDataSource;

@Aspect
@Component
public class DataSwitchAop {
	// @Pointcut()
	// @Pointcut("execution(public *
	// com.changneng.penalize.business.service.impl.*(..))")
	public void execute() {
	}

	@Before("@annotation(com.cn.test.controller.aop.DataSwitch)")
	public void dataSwitch(JoinPoint joinPoint) {
		Signature signature = joinPoint.getSignature();

		MethodSignature methodSignature = (MethodSignature) signature;
		Method method = methodSignature.getMethod();
		DataSwitch data = null;
		if (method != null) {
			data = method.getAnnotation(DataSwitch.class);
		}
		String dataSource = data.dataSource();
		System.out.println("datasource...." + dataSource);
		if (dataSource != null) {
			MultipleDataSource.setDataSourceKey(dataSource);
		}
	}
}