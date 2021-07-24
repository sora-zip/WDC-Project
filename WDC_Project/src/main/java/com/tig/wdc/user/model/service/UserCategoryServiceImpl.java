package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.user.model.dao.UserCategoryMapper;
import com.tig.wdc.user.model.dto.UserClassDTO;

@Service
public class UserCategoryServiceImpl implements UserCategoryService {
	
	@Autowired
	private UserCategoryMapper mapper;
	public UserCategoryServiceImpl(UserCategoryMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public List<UserClassDTO> selectClassCategory(UserClassDTO userClassDTO) {
		return mapper.selectClassCategory(userClassDTO);
	}

	@Override
	public List<UserClassDTO> selectClassSportsCategory() {
		return mapper.selectSportsClassCategory();
	}

	@Override
	public List<UserClassDTO> selectClassBeautyCategory() {
		return mapper.selectClassBeautyCategory();
	}

	@Override
	public List<UserClassDTO> selectClassArtCategory() {
		return mapper.selectClassArtCategory();
	}

	@Override
	public List<UserClassDTO> selectClassCookCategory() {
		return mapper.selectClassCookCategory();
	}
	
	@Override
	public List<UserClassDTO> selectClassComputerCategory() {
		return mapper.selectClassComputerCategory();
	}

	@Override
	public List<UserClassDTO> selectClassLanguageCategoty() {
		return mapper.selectClassLanguageCategory();
	}

	@Override
	public List<UserClassDTO> selectClassRevenuCategoty() {
		return mapper.selectClassRevenuCategory();
	}

}
