package com.yezic.com.common;

public class SimpleReturnVo {
	// 返回编码
	private ResponseCode responseCode;

	// 返回的信息
	private Object responseMsg;

	public SimpleReturnVo() {

	}

	public SimpleReturnVo(ResponseCode responseCode, String responseMsg) {
		this.responseCode = responseCode;
		this.responseMsg = responseMsg;
	}

	public ResponseCode getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(ResponseCode responseCode) {
		this.responseCode = responseCode;
	}

	public Object getResponseMsg() {
		return responseMsg;
	}

	public void setResponseMsg(Object responseMsg) {
		this.responseMsg = responseMsg;
	}

	public enum ResponseCode {
		SUCCESS, FAIL, PERMISSION_DENIED, NOT_EXIST;
	}
}
