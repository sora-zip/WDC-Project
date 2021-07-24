package com.tig.wdc.user.model.service;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;


public interface UserCategoryService {

	public List<UserClassDTO> selectClassCategory(UserClassDTO userClassDTO);
	
	public List<UserClassDTO> selectClassSportsCategory();
	
	public List<UserClassDTO> selectClassBeautyCategory();
	
	public List<UserClassDTO> selectClassArtCategory();
	
	public List<UserClassDTO> selectClassCookCategory();
	
	public List<UserClassDTO> selectClassComputerCategory();

	public List<UserClassDTO> selectClassLanguageCategoty();

	public List<UserClassDTO> selectClassRevenuCategoty();
}
