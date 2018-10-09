package com.cn.test.utils;

import java.security.SecureRandom;



public class UUIDFactory {

	private SecureRandom seeder = null;
	private String midValue = null;
	private static UUIDFactory instFlg = null;
	
	public UUIDFactory() {
		seeder = new SecureRandom();
		seeder.nextInt();
	}
	
	// 单例模式 只生成一个Application 
	public static synchronized UUIDFactory singleton() {

		if (instFlg == null) {
			instFlg = new UUIDFactory();
		}
		return instFlg;
	}

	public String generateUUID() {
		long timeNow = System.currentTimeMillis();
		int timeLow = (int) timeNow & 0xffffffff;
		int node = seeder.nextInt();
		return (hexFormat(timeLow, 8) + midValue + hexFormat(node, 8));
	}
	
	private String hexFormat(int i, int digits) throws IllegalArgumentException {
		String hex = Integer.toHexString(i);
		int length = hex.length();
		if (digits > length) {
			StringBuffer buffer = new StringBuffer(digits);
			for (int index = 0; index < digits - length; index++) {
				buffer.append('0');
			}
			buffer.append(hex);
			return buffer.toString();
		} else if (digits == length) {
			return hex;
		} else {
			throw new IllegalArgumentException(
					"Digits too small to format a integer.");
		}
	}
	
	@SuppressWarnings("unused")
	private int getInt(byte[] bytes) throws IllegalArgumentException {
		if (bytes.length > 4) {
			throw new IllegalArgumentException(
					"Bytes array too large to convert to a integer.");
		}
		int integer = 0;
		for (int i = 0; i < bytes.length; i++) {
			integer += (bytes[i] & 0xff) << ((bytes.length - i - 1) * 8);
		}
		return integer;
	}
}
