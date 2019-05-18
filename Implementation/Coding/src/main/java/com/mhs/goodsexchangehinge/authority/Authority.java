package com.mhs.goodsexchangehinge.authority;

public enum Authority {

	ROLE_USER("USER"), ROLE_ADMIN("ADMIN");

	private final String value;

	Authority(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

}
