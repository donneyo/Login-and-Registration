package com.film.house.cinema.controller;

public interface OTBView2 {
	

	public String APP_CONTEXT = "/filmHouseCinema";
	public String PAGE_FOLDER ="/jsp";
	
	public String LOGIN_VIEW = PAGE_FOLDER + "/LoginView2.jsp";
	public String WELCOME_VIEW = PAGE_FOLDER + "/Welcome2.jsp";
	
	
	
	public String LOGIN_CTL = APP_CONTEXT + "/LoginCtl2";
	public String WELCOME_CTL = APP_CONTEXT + "/WelcomeCtl2";
	public String MOVIE_CTL = APP_CONTEXT + "/ctl/MovieCtl";
	public String MOVIE_LIST_CTL = APP_CONTEXT + "/ctl/MovieListCtl";
	public String BOOK_LIST_CTL = APP_CONTEXT + "/ctl/BookListCtl";
	public String ERROR_CTL = "/ctl/ErrorCtl";
	

	public String USER_REGISTRATION_CTL = APP_CONTEXT + "/UserRegistrationCtl2";
	public String USER_REGISTRATION_VIEW = PAGE_FOLDER + "/UserRegistrationView2.jsp";
	public String CHANGE_PASSWORD_CTL = APP_CONTEXT + "/ctl/ChangePasswordCtl";
	public String MY_PROFILE_CTL = APP_CONTEXT + "/ctl/MyProfileCtl";

}
