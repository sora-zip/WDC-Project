package com.tig.wdc.user.model.dao;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;



public interface UserCategoryMapper {

	public List<UserClassDTO> selectClassCategory(UserClassDTO userClassDTO);
	
	public List<UserClassDTO> selectSportsClassCategory();
	
	public List<UserClassDTO> selectClassBeautyCategory();
	
	public List<UserClassDTO> selectClassArtCategory();
	
	public List<UserClassDTO> selectClassCookCategory();
	
	public List<UserClassDTO> selectClassComputerCategory();

	public List<UserClassDTO> selectClassLanguageCategory();

	public List<UserClassDTO> selectClassRevenuCategory();
	

}
