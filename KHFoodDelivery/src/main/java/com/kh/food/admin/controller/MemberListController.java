package com.kh.food.admin.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.food.admin.model.service.MemberListService;

@Controller
public class MemberListController {
	
	  private Logger logger=LoggerFactory.getLogger(MemberListController.class);
	  
	  
	  @Autowired
	  MemberListService service;
	  
	  
	  
	  @RequestMapping("/admin/memberList.do")
	  public ModelAndView memberList() {
	  ModelAndView mv=new ModelAndView();
	  logger.debug("리스트야?");
	  List<Map<String,String>> list=service.selectListMember();
	  logger.debug("리스트들어와");
	  mv.addObject("list",list);
	  mv.setViewName("admin/memberList"); 
	  logger.debug(list+"리스트");
	  return mv; 
	  }
	 
	

}
