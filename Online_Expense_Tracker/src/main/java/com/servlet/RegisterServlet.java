package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dataAccessObject.UserDau;
import com.db.HibernateUtil;
import com.entity.User;

@WebServlet("/userRegister")


public class RegisterServlet extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		String fullName=req.getParameter("fullName");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String about=req.getParameter("about");
		
		User u=new User(fullName ,email ,password, about);
		
		//System.out.println(u);
		
		UserDau dao=new UserDau(HibernateUtil.getSessionFactory());
		boolean f =dao.saveuser(u);
		HttpSession session=req.getSession();		
		if(f)
		{
			session.setAttribute("msg", "successfully register");
			//System.out.println("Successfully Register");
			resp.sendRedirect("register.jsp");
		}else {
			session.setAttribute("msg", "Something wrong in Server");
			//System.out.println("Something wrong in Server");
			resp.sendRedirect("register.jsp");
		}
		
	}

}
