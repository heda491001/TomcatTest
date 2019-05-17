package db;

import java.util.List;

public class dbBean implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	
	private List<OneRecord> allRecord=null;
	public dbBean() {
		// TODO Auto-generated constructor stub
		allRecord=ExamDAO.findAll();
	}
	
	public void refresh() {
		allRecord=ExamDAO.findAll();
		System.out.println("refresh");
	}
	public List<OneRecord> getAllRecord() {
		return allRecord;
	}
}
