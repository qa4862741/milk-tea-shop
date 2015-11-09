package com.yezic.com.common;

import java.util.HashMap;
import java.util.Map;

public enum AccountLockType {
	LOCKED("启用", "1"), UNLOCKED("未启用", "2");

	private static Map<String, String> valueTextMap = new HashMap<String, String>();

	static {
		for (AccountLockType state : AccountLockType.values()) {
			valueTextMap.put(state.value, state.text);
		}
	}

	public static String getTextByKey(String key) {
		return valueTextMap.get(key);
	}

	private String text;
	private String value;

	private AccountLockType(String text, String value) {
			this.text = text;
			this.value = value;
		}

	public String text() {
		return text;
	}

	public String value() {
		return value;
	}
}
