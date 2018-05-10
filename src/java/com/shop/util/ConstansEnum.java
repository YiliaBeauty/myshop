package com.shop.util;



public enum ConstansEnum {
	
	ERROR("00","失敗"),
	SUCCESS("99","成功");
	
	public String code;
	private String message;
	
	private ConstansEnum(String code, String message) {
		this.code = code;
		this.message = message;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	

}
