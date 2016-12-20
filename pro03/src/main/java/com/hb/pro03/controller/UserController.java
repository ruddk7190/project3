package com.hb.pro03.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hb.pro03.model.UserDao;
import com.hb.pro03.model.UserVo;

@Controller
public class UserController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/joinform")
	public void joinForm(){
		
	}
	
	@RequestMapping(value="/userInsert", method=RequestMethod.POST)
	public String UserInsert(UserVo bean){
		System.out.println(">>>"+bean);
		
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		mapper.insertOne(bean);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/idck", method=RequestMethod.POST)
	public String idCk(Model model,@RequestParam("id") String id){
		
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		model.addAttribute("cnt", mapper.idCk(id));
		
		return "idck";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginForm(){
		
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model model, UserVo bean, HttpSession session){

		UserVo result = null;
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		result = mapper.login(bean);
		
		if(result !=null){
			//로그인 성공
			System.out.println(":>"+result.getId());
			session.setAttribute("result", true);
			session.setAttribute("id", result.getId());
		}else{
			result=null;
		}
		model.addAttribute("bean", result);
		
		return "idck";
	}
}
