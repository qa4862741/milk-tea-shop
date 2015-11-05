package com.yezic.com.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.Resources;
import com.yezic.com.repository.ResourcesMapper;

@Service
public class ResourcesService extends BaseService<Resources> {

	@Resource
	private ResourcesMapper resourcesMapper;

	@Override
	protected BaseMapper<Resources> getMapper() {
		return resourcesMapper;
	}

	public List<Resources> getRecursionList() {
		List<Resources> allResources = resourcesMapper.getAll(new Resources());
		List<Resources> parentResources = getChildResources(allResources, 0);
		return parentResources;
	}

	private List<Resources> getChildResources(List<Resources> allResources, int parentId) {
		List<Resources> childrenResources = new ArrayList<Resources>();

		for (Resources resources : allResources) {
			if (resources.getParentId() == parentId) {
				childrenResources.add(resources);
				List<Resources> childResources = getChildResources(allResources,resources.getId());
				resources.setChildren(childResources);
			}
		}
		return childrenResources;
	}
}
