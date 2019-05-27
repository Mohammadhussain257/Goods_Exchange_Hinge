package com.mhs.goodsexchangehinge.enumconstant;

public enum Role {
	USER("USER"), AMIN("ADMIN");

    private String value;

    Role(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

}
