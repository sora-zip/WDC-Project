package com.tig.wdc.teacher.controller;

import java.io.File;
import java.sql.Date;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.teacher.model.service.ClassRegistManageService;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;

/**
 * @author 이해승
 * 클래스 등록
 *
 */
@Controller
@RequestMapping("classRegist/*")
public class ClassRegistController {

	private final ClassRegistManageService classService;
	private AttachMentDTO titlePicture;
	private	ClassPieceDTO classPiece;
	private CurriculumDTO curriculum;
	private ScheduleDTO schedule;
	@Autowired
	public ClassRegistController(AttachMentDTO titlePicture, ClassPieceDTO classPiece, ClassRegistManageService classService, CurriculumDTO curriculum, ScheduleDTO schedule) {
		super();
		this.titlePicture = titlePicture;
		this.classPiece = classPiece;
		this.classService = classService;
		this.curriculum = curriculum;
		this.schedule = schedule;
	}

	//클래스 타입(원데이, 정규 입력)
	@GetMapping("step1/{classType}")
	public String registStep1(RedirectAttributes rttr, @PathVariable("classType") String type) {

		rttr.addFlashAttribute("classType", type);

		return "teacher/classRegist/step1_basicInfo"; 
	}

	//클래스 정보 insert
	@PostMapping("classInsert")
	public String registStep2(@ModelAttribute ClassDTO classInfo, @ModelAttribute ClassPieceDTO pieceInfo, @ModelAttribute CurriculumDTO curriInfo, @ModelAttribute ScheduleDTO scheduleInfo, Model model, @RequestParam Map<String, MultipartFile> pictures, HttpServletRequest request) {
		System.out.println(classInfo);
		/* 1. 클래스 정보 INSERT */
		//날짜 ,시간 변환
		if(classInfo.getEndDay() != null) {
			classInfo.setEndDate(new java.sql.Date(classInfo.getEndDay().getTime()));
		}
		if(classInfo.getStartDay() != null) {
			classInfo.setStartDate(new java.sql.Date(classInfo.getStartDay().getTime()));
		}

		String[] timeSplit = classInfo.getTime().split(",");
		classInfo.setTime(timeSplit[0] + ":" + timeSplit[1]);
		classInfo.setTeNo((Integer)request.getSession().getAttribute("teacherNo"));
		classInfo.setDicsionStatus("W");
		classInfo.setStatus("Y");

		/* 사진 추가할 경로 */
		//루트 경로
		String root = request.getServletContext().getRealPath("resources");

		//파일저장할 경로(없을 경우 생성)
		String filePath = root + "\\upload";
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		classService.insertClassInfo(classInfo);

		/* 2. 클래스 대표사진 INSERT */
//		int totalCount = 0; //전체 사진 수
		int insertCount = 0; //사진 insert 카운투
		for(int i = 1; i < 4; i++) {

			if(!pictures.get("thumbnailImg" + i).isEmpty()) {
//				totalCount++;
				MultipartFile img = pictures.get("thumbnailImg" + i);
				String ext = img.getOriginalFilename().substring(img.getOriginalFilename().lastIndexOf("."));
				String saveName = UUID.randomUUID().toString().replace("-", "") + ext;
				titlePicture.setOriginName(img.getOriginalFilename());
				titlePicture.setSaveName(saveName);
				titlePicture.setSavePath("resources/upload/" + saveName);
				titlePicture.setThumbnailPath("resources/upload/" + saveName);
				titlePicture.setAttachStatus("Y");
				titlePicture.setPictureInfo(img);
				if(i == 1) {
					titlePicture.setType("TITLE");
				} else {
					titlePicture.setType("BODY");
				}

				try {
					img.transferTo(new File(filePath + "\\" + titlePicture.getSaveName()));
					insertCount += classService.insertTitlePicture(titlePicture);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		//클래스 대표사진 출력
		/* 3. 완성작 INSERT*/
		String[] pieceTitle = pieceInfo.getPieceTitle().split(",");
		int index = 0;
		for(int i = 4; i < 6; i++) {

			if(!pictures.get("thumbnailImg" + i).isEmpty()) {

				MultipartFile img = pictures.get("thumbnailImg" + i);
				String ext = img.getOriginalFilename().substring(img.getOriginalFilename().lastIndexOf("."));
				classPiece.setPiecePicture(UUID.randomUUID().toString().replace("-", "") + ext);
				classPiece.setPieceTitle(pieceTitle[index]);
				index++;
				try {
					img.transferTo(new File(filePath + "\\" + classPiece.getPiecePicture()));
					insertCount += classService.insertCompletePiece(classPiece);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		/* 4. 커리큘럼 등록 */
		String[] curriTitle = curriInfo.getCurriTitle().split(",");
		String[] curriContent = curriInfo.getCurriContent().split(","); 

		for(int i = 0; i < curriTitle.length; i++) {

			curriculum.setCurriStep(i + 1);
			curriculum.setCurriTitle(curriTitle[i]);
			curriculum.setCurriContent(curriContent[i]);

			classService.insertCurriculum(curriculum);
		}
		/* 5. 스케쥴 등록 */
		int scheduleInsert = 0;
		if(classInfo.getClsType().equals("O")) {

			String[] dayList = scheduleInfo.getInputDate().split(",");
			String[] minList = scheduleInfo.getInputMin().split(",");
			String[] maxList = scheduleInfo.getInputMax().split(",");
			String[] timeList = scheduleInfo.getScheduleStart().split(",");

			for(int i = 0; i < dayList.length; i++) {

				schedule.setScheduleType(scheduleInfo.getScheduleType());
				schedule.setInputDate(dayList[i]);
				schedule.setInputMin(minList[i]);
				schedule.setInputMax(maxList[i]);
				schedule.setScheduleStart(timeList[i]);
				schedule.setScheduleCount(dayList.length);

				scheduleInsert = classService.insertSchedule(schedule);
			}
		} else {

			scheduleInfo.setScheduleType("R");
			scheduleInsert = classService.insertSchedule(scheduleInfo);
		}

		return "redirect:/teacher/teacherClassManagement";
	}
}