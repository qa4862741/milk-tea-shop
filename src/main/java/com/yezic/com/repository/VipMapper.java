package com.yezic.com.repository;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.entity.Vip;

public interface VipMapper extends BaseMapper<Vip>{
	Vip getOneByTelId(String telId);
}
