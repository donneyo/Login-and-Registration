package com.film.house.cinema.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.film.house.cinema.bean.RoleBean2;
import com.film.house.cinema.exception.ApplicationException;
import com.film.house.cinema.util.JDBCDataSource;

public class RoleModel2 {
	
	public RoleBean2 findByPK(long pk) throws ApplicationException {
        //log.debug("Model findByPK Started");
        StringBuffer sql = new StringBuffer("SELECT * FROM T_ROLE WHERE ID=?");
        RoleBean2 bean = null;
        Connection conn = null;
        try {
            conn = JDBCDataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql.toString());
            pstmt.setLong(1, pk);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                bean = new RoleBean2();
                bean.setId(rs.getLong(1));
                bean.setName(rs.getString(2));
                bean.setDescription(rs.getString(3));
                bean.setCreatedBy(rs.getString(4));
                bean.setModifiedBy(rs.getString(5));
                bean.setCreatedDatetime(rs.getTimestamp(6));
                bean.setModifiedDatetime(rs.getTimestamp(7));
            }
            rs.close();
        } catch (Exception e) {
           //log.error("Database Exception..", e);
            throw new ApplicationException(
                    "Exception : Exception in getting User by pk");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }
        //log.debug("Model findByPK End");
        return bean;
    }


}
