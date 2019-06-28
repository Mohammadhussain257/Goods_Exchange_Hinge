package com.mhs.goodsexchangehinge.util;

import java.math.BigInteger;
import java.security.SecureRandom;

public class PasswordUtil {
	public static String randomPassword() {
		SecureRandom random = new SecureRandom();
		return new BigInteger(50, random).toString(32);
	}
}
