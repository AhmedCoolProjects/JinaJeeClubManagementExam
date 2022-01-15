package model;

import java.util.Date;

public class Club {
	private int id;
	private String name, presidentName;
	Date date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPresidentName() {
		return presidentName;
	}

	public void setPresidentName(String presidentName) {
		this.presidentName = presidentName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Club(int id, String name, String presidentName, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.presidentName = presidentName;
		this.date = date;
	}

}
