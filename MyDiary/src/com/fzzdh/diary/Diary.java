package com.fzzdh.diary;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Diary {
	private int diaryid;
	private int userid;
	private String diarytitle;
	private String diarytag;
	private String diarycontent;
	private Date diarywritetime;//日记书写时间，自动生成
	public int getDiaryid() {
		return diaryid;
	}
	public void setDiaryid(int diaryid) {
		this.diaryid = diaryid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getDiarytitle() {
		return diarytitle;
	}
	public void setDiarytitle(String diarytitle) {
		this.diarytitle = diarytitle;
	}
	public String getDiarytag() {
		return diarytag;
	}
	public void setDiarytag(String diarytag) {
		this.diarytag = diarytag;
	}
	public String getDiarycontent() {
		return diarycontent;
	}
	public void setDiarycontent(String diarycontent) {
		this.diarycontent = diarycontent;
	}
	public Date getDiarywritetime() {
		return diarywritetime;
	}
	
	public void setDiarywritetime(Date diarywritetime) {
		this.diarywritetime = diarywritetime;
	}
	
	public void initDiaryData(ResultSet rs){
		try{
			setDiaryid(rs.getInt("diaryid"));
			setUserid(rs.getInt("userid"));
			setDiarytitle(rs.getString("diarytitle"));
			setDiarytag(rs.getString("diarytag"));
			setDiarycontent(rs.getString("diarycontent"));
			setDiarywritetime(rs.getDate("diarywritetime"));
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	
	
}
