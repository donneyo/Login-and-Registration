package com.film.house.cinema.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.film.house.cinema.util.ServletUtility2;
import com.film.house.cinema.controller.OTBView2;


public class WelcomeCtl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WelcomeCtl2() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletUtility2.forward(OTBView2.WELCOME_VIEW, request, response);
	}

	
	protected String getView() {
		// TODO Auto-generated method stub
		return OTBView2.WELCOME_VIEW;
	}
}
