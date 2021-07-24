package com.tig.wdc.user.model.dao;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserLikeClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

public interface UserInfoMapper {
	
	UserInfoDTO selectUser(int userNo);

	UserInfoDTO findfindUserInfo(UserInfoDTO userInfoDTO);

	List<UserCouponDTO> selectCouponList(int userNo);

	List<UserClassDTO> selectScheduledClassList(int userNo);

	List<UserClassDTO> selectparticipatingClassList(int userNo);

	List<UserClassDTO> selectComplateClassList(PageInfoDTO pageInfo);

	UserClassDTO selectScheduleDetail(UserClassDTO userClassDTO);

	int insertReview(UserReviewDTO userReviewDTO);

	int selectReviewYn(int aplNo);

	List<UserCouponDTO> selectAllUserCouponList();

	int selectUseAllUserCoupon(UserCouponDTO alluserCouponDTO);

	UserInfoDTO selectExistingInfo(Map<String, String> result);

	String selectCheckDoubleId(String checkId);

	int registUser(UserInfoDTO registInfo);
	
	int selectCompleteClssCount(int userNo);

	int selectRefundClassCount(int userNo);

	int selectLikeStatus(UserLikeClassDTO likeClassDTO);
	
	int selectLikeHistory(UserLikeClassDTO likeClassDTO);

	int insertLike(UserLikeClassDTO likeClassDTO);

	int updateLikeYn(UserLikeClassDTO likeClassDTO);

	int selectPhone(UserInfoDTO infoDTO);

	int updatePhone(UserInfoDTO infoDTO);

	int updatePwd(UserInfoDTO infoDTO);

	String selectPwd(UserInfoDTO infoDTO);

	int selectlikeClassCount(int userNo);
	
	

}
