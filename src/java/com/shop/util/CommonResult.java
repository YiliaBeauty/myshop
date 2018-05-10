package com.shop.util;

public class CommonResult<T> {

	private String resultMsg;
	private String resultCode;
	private T result;
	
	
	public CommonResult() {
		super();
	}
	public CommonResult(String resultMsg, String resultCode) {
		super();
		this.resultMsg = resultMsg;
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public T getResult() {
		return result;
	}
	public void setResult(T result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "CommonResult [resultMsg=" + resultMsg + ", resultCode=" + resultCode + "]";
	}
	
	
	
}
