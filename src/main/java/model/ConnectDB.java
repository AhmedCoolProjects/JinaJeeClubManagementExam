package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class ConnectDB {
	static final String URL = "jdbc:mysql://localhost:3306/controle";
	static final String Login = "root";
	static final String password = "";
	static Connection cnx = null;

	public static void init() {
		try {
			cnx = (Connection) DriverManager.getConnection(URL, Login, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());

		}

	}

	public static ArrayList<Club> getClubs() throws SQLException {
		ArrayList<Club> clubsList = new ArrayList<Club>();
		init();
		Statement stm = (Statement) cnx.createStatement();
		String sql = "select * from club";
		ResultSet rs = stm.executeQuery(sql);

		while (rs.next()) {
			Club club = new Club(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4));
			clubsList.add(club);
		}

		return clubsList;
	}

	public static int addUserToAbonnement(int clubId, String firstName, String lastName) throws SQLException {
		init();
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		String date = simpleDateFormat.format(new Date());
		Statement stm = (Statement) cnx.createStatement();

		String sql = "Insert into abonnement Values(" + clubId + ",'" + firstName + "','" + lastName + "','" + date
				+ "')";
		int rs = stm.executeUpdate(sql);
		return rs;
	}

	public static ArrayList<Integer> getClubsIdsFromAbonnement() throws SQLException {
		ArrayList<Integer> clubsIdsList = new ArrayList<Integer>();
		init();
		Statement stm = (Statement) cnx.createStatement();
		String sql = "Select club_id from abonnement";
		ResultSet rs = stm.executeQuery(sql);
		while (rs.next()) {
			clubsIdsList.add(rs.getInt(1));
		}

		return clubsIdsList;
	}

	public static int deleteClubFromAbonnement(int clubId) throws SQLException {
		init();
		Statement stm = (Statement) cnx.createStatement();
		String sql = "Delete from abonnement where club_id=" + clubId;
		int rs = stm.executeUpdate(sql);

		return rs;

	}

}
