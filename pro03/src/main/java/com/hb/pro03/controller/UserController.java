package com.hb.pro03.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
//	@RequestMapping(value="/user")
//	public String MainPage(UserVo bean) {
//		
//		return "redirect:/";
//	}
	
	@RequestMapping(value="/joinform")
	public void joinForm(){
		
	}
	
	@RequestMapping(value="/userInsert",method=RequestMethod.POST)
	public String UserInsert(UserVo bean) {
		//System.out.println(">>>"+bean);
		UserDao mapper = sqlSession.getMapper(UserDao.class);
		mapper.insertOne(bean);
		return "redirect:/";
	}
	
	@RequestMapping(value="/idck",method=RequestMethod.POST)
	public void idCk(Model model,@RequestParam("id") int id){
		System.out.println("idck"+id);
//		res.setCharacterEncoding("UTF-8");
//		res.setContentType("text/html");
//		UserDao mapper = sqlSession.getMapper(UserDao.class);
////		model.addAttribute("bean", mapper.idCk(id));
////		return "redirect:/joinform";
////		String result=null;
////		result=mapper.idCk(id);
//		PrintWriter out;
//		try {
//			out = res.getWriter();
//			if(mapper.idCk(id)==null){
//				out.write("YES");
//			}else{
//				out.write("NO");
//			}
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
	}
}
