package com.yezic.com.util;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class PasswordHelper {
	private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();
	private String algorithmName = "md5";
	private int hashIterations = 2;
	
	public String getSalt(){
		String salt=randomNumberGenerator.nextBytes().toHex();
		return salt;
	}

	public String encryptPassword(String accountName,String password,String salt) {
		String newPassword = new SimpleHash(algorithmName,password, ByteSource.Util.bytes(accountName+salt), hashIterations).toHex();
	    return newPassword;
	}
	public static void main(String[] args) {
		PasswordHelper passwordHelper = new PasswordHelper();
		String salt = passwordHelper.getSalt();
		String password = passwordHelper.encryptPassword("admin","123456",salt);
		System.out.println(password);
	}
}
