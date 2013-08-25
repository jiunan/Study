package com.highdev.angularjs.srvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.highdev.angularjs.srvc.service.ServiceMgtSVC;
import com.highdev.angularjs.srvc.vo.ServiceMgtVO;

@Controller
@RequestMapping("/standard")
public class ServiceMgtCTR {

	@Autowired
	private ServiceMgtSVC serviceMgtSVC;

	@RequestMapping("/services")
	@ResponseBody
	public List<ServiceMgtVO> getServiceList(ServiceMgtVO search){
		return serviceMgtSVC.getList(search);
	}
}
