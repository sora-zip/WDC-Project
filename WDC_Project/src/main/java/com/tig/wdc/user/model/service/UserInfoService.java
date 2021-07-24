package com.tig.wdc.user.model.service;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserLikeClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

public interface UserInfoService {

	public UserInfoDTO selectUser(int userNo);

	public UserInfoDTO findUserInfo(UserInfoDTO userInfoDTO);

	public List<UserCouponDTO> selectCouponList(int userNo);

	public List<UserClassDTO> selectScheduledClassList(int userNo);
	
	public List<UserClassDTO> selectparticipatingClassList(int userNo);

	public List<UserClassDTO> selectComplateClassList(PageInfoDTO pageInfo);

	public UserClassDTO selectScheduleDetail(UserClassDTO userClassDTO);
	
	int insertReview(UserReviewDTO userReviewDTO);

	public int selectReviewYn(int aplNo);

	public List<UserCouponDTO> selectAllUserCouponList();

	public int selectUseAllUserCoupon(UserCouponDTO alluserCouponDTO);

	public UserInfoDTO selectExistingInfo(Map<String, String> result);

	public Object selectCheckDoubleId(String checkId);

	public int registUser(UserInfoDTO registInfo);
	
	public int selectCompleteClssCount(int userNo);

	public int selectRefundClassCount(int userNo);

	public int selectLikeStatus(UserLikeClassDTO likeClassDTO);

	public int selectLikeHistory(UserLikeClassDTO likeClassDTO);

	public int insertLike(UserLikeClassDTO likeClassDTO);

	public int updateLikeYn(UserLikeClassDTO likeClassDTO);

	public int selectPhone(UserInfoDTO infoDTO);

	public int updatePhone(UserInfoDTO infoDTO);

	public int updatePwd(UserInfoDTO infoDTO);

	public String selectPwd(UserInfoDTO infoDTO);

	public int selectlikeClassCount(int userNo);

}
