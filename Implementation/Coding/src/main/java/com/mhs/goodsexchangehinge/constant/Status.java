package com.mhs.goodsexchangehinge.constant;

public class Status {

	private static final Boolean ACTIVE_USER = true;
	private static final Boolean INACTIVE_USER = false;
	private static final Boolean DELETED_USER = false;

	public static Boolean getActiveUser() {
		return ACTIVE_USER;
	}

	public static Boolean getInactiveUser() {
		return INACTIVE_USER;
	}

	public static Boolean getDeletedUser() {
		return DELETED_USER;
	}

}
