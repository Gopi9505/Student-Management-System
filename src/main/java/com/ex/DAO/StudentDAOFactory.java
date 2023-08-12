package com.ex.DAO;

public final class StudentDAOFactory {
	public static StudentDAO getConnection() {
		return new StudentDAOImpl();
	}
}
