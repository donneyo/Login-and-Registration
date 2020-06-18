package com.film.house.cinema.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.film.house.cinema.bean.BaseBean2;
import com.film.house.cinema.controller.BaseCtl2;
import com.film.house.cinema.controller.OTBView2;

public class ServletUtility2 {

	public static void forward(String page, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		RequestDispatcher rd = request.getRequestDispatcher(page);
		System.out.println(page);
		rd.forward(request, response);
	}
	
	public static void setSuccessMessage(String msg, HttpServletRequest request) {
		request.setAttribute(BaseCtl2.MSG_SUCCESS, msg);
	}
	
	public static void redirect(String page, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		response.sendRedirect(page);
	}
	
	public static String getErrorMessage(HttpServletRequest request) {
		String val = (String) request.getAttribute(BaseCtl2.MSG_ERROR);
		if (val == null) {
			return "";
		} else {
			return val;
		}
	}
	
	public static String getSuccessMessage(HttpServletRequest request) {
		String val = (String) request.getAttribute(BaseCtl2.MSG_SUCCESS);
		if (val == null) {
			return "";
		} else {
			return val;
		}
	}
	
	public static String getErrorMessage(String property, HttpServletRequest request) {
		String val = (String) request.getAttribute(property);
		if (val == null) {
			return "";
		} else {
			return val;
		}
	}
	
	public static void handleException(Exception e, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setAttribute("exception", e);
		ServletUtility2.forward(OTBView2.ERROR_CTL, request, response);
		e.printStackTrace();
	}
	
	public static void setBean(BaseBean2 bean, HttpServletRequest request) {
		request.setAttribute("bean", bean);
	}
	
	public static void setErrorMessage(String msg, HttpServletRequest request) {
		request.setAttribute(BaseCtl2.MSG_ERROR, msg);
	}
}
