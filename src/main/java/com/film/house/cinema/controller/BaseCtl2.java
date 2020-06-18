package com.film.house.cinema.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.film.house.cinema.bean.BaseBean2;
import com.film.house.cinema.bean.UserBean2;
import com.film.house.cinema.util.DataUtility2;
import com.film.house.cinema.util.DataValidator2;



@WebServlet("/BaseCtl2")
public abstract class BaseCtl2 extends HttpServlet {
	
	public static final String MSG_ERROR = "error";
	public static final String MSG_SUCCESS = "success";
	public static final String OP_RESET = "Reset";
	
	
	
	
	

	protected BaseBean2 populateBean(HttpServletRequest request) {
		return null;
	}
	protected boolean validate(HttpServletRequest request) {
		return true;
		
	}
	
	protected BaseBean2 populateDTO(BaseBean2 dto, HttpServletRequest request) {
		//log.debug("BaseCtl populate DTO method start");
	
		String createdBy = request.getParameter("createdBy");
		String modifiedBy = null;

		UserBean2 userbean = (UserBean2) request.getSession().getAttribute("user");

		if (userbean == null) {
			// If record is created without login
			createdBy = "root";
			modifiedBy = "root";
		} else {

			modifiedBy = userbean.getLogin();

			// If record is created first time
			if ("null".equalsIgnoreCase(createdBy)|| DataValidator2.isNull(createdBy)) {
				createdBy = modifiedBy;
			}

		}

		dto.setCreatedBy(createdBy);
		dto.setModifiedBy(modifiedBy);

		long cdt = DataUtility2.getLong(request.getParameter("createdDatetime"));

		if (cdt > 0) {
			dto.setCreatedDatetime(DataUtility2.getTimestamp(cdt));
		} else {
			dto.setCreatedDatetime(DataUtility2.getCurrentTimestamp());
		}

		dto.setModifiedDatetime(DataUtility2.getCurrentTimestamp());
		
		//log.debug("BaseCtl populate DTO method end");
		return dto;
	}

	protected abstract String getView();
	
}

