package com.film.house.cinema.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.film.house.cinema.util.DataValidator2;

import com.film.house.cinema.util.DataUtility2;

public class DataUtility2 {
	
	public static final String APP_DATE_FORMAT = "MM/dd/yyyy";
	private static final SimpleDateFormat formatter = new SimpleDateFormat(APP_DATE_FORMAT);

	
	public static long getLong(String val) {
		if (DataValidator2.isLong(val)) {
			return Long.parseLong(val);
		} else {
			return 0;
		}
	}
	
	public static int getInt(String val) {
		if (DataValidator2.isInteger(val)) {
			return Integer.parseInt(val);
		} else {
			return 0;
		}
	}
	
	public static String getString(String val) {
		if (DataValidator2.isNotNull(val)) {
			return val.trim();
		} else {
			return val;
		}
	}
	
	
	public static Timestamp getTimestamp(long l) {

		Timestamp timeStamp = null;
		try {
			timeStamp = new Timestamp(l);
		} catch (Exception e) {
			return null;
		}
		return timeStamp;
	}
	
	public static Timestamp getTimestamp(String cdt) {

		Timestamp timeStamp = null;
		try {
		//	timeStamp = new Timestamp((timeFormatter.parse(cdt)).getTime());
		} catch (Exception e) {
			return null;
		}
		return timeStamp;
	}
	
	public static long getTimestamp(Timestamp tm) {
		try {
			return tm.getTime();
		} catch (Exception e) {
			return 0;
		}
	}
	
	public static String getStringData(Object val) {
		
		if (val != null) {
			return val.toString();
		} else {
			return "";
		}
	}
	
	 public static Date getDate(String val) {
	        Date date = null;
	        try {
	            date = formatter.parse(val);
	        } catch (Exception e) {

	        }
	        return date;
	    }
	
	public static void main(String[] args) {
		DataUtility2 d=new DataUtility2();
		
		Date date=new Date();
		System.out.println("formate date :"+getDate("12/09/1991"));
	}

	public static Timestamp getCurrentTimestamp() {
		Timestamp timeStamp = null;
		try {
			timeStamp = new Timestamp(new Date().getTime());
		} catch (Exception e) {
		}
		return timeStamp;
	}

}
