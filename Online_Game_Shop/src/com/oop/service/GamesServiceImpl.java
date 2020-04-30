package com.oop.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Logger;

import com.oop.model.Games;
import com.oop.util.DBConnection;

import java.util.logging.Level;

public class GamesServiceImpl implements GamesService {
	
	//initializing logger
	public static final Logger log = Logger.getLogger(GamesServiceImpl.class.getName());
	
	private static Connection conn;
	
	private static PreparedStatement Pstm;
	
	//generate Game IDs
	public static String generateIDs(ArrayList<String> arrayList) {

		String id;
		int next = arrayList.size();
		next++;
		id = "G200" + next;
		if (arrayList.contains(id)) {
			next++;
			id = "G200" + next;
		}
		return id;
	}
	
	@Override
	public void addGame(Games game) {
		// TODO Auto-generated method stub
		String gameID = generateIDs(getGameIDs());
		
		try {
			conn = DBConnection.getConnection();
			Pstm= conn.prepareStatement("insert into games values (?, ?, ?, ?)");
			conn.setAutoCommit(false);
			
			game.setGameID(gameID);
			Pstm.setString(1, game.getGameID());
			Pstm.setString(2, game.getGameName());
			Pstm.setString(3, game.getGameType());
			Pstm.setDouble(4, game.getPrice());
			Pstm.execute();
			conn.commit();
		} catch (SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				if (Pstm != null) {
					Pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
	}

	@Override
	public Games getGameByID(String gameID) {
		// TODO Auto-generated method stub
		return actionOnGame(gameID).get(0);
	}

	@Override
	public ArrayList<Games> getGames() {
		// TODO Auto-generated method stub
		return actionOnGame(null);
	}

	@Override
	public Games updateGame(String gameID, Games game) {
		// TODO Auto-generated method stub
		
		if(gameID != null && !gameID.isEmpty()) {
			try {
				conn = DBConnection.getConnection();
				Pstm = conn.prepareStatement("update games as g set g.gameName = ?, g.gameType = ?, g.price = ? where g.gameID = ?");
				conn.setAutoCommit(false);
				
				Pstm.setString(1, game.getGameName());
				Pstm.setString(2, game.getGameType());
				Pstm.setDouble(3, game.getPrice());
				Pstm.setString(4, game.getGameID());
				Pstm.executeUpdate();
				conn.commit();				
			}catch(SQLException | ClassNotFoundException e){
				log.log(Level.SEVERE, e.getMessage());
			}finally {
				try {
					if (Pstm != null) {
						Pstm.close();
					}
					if (conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
		return getGameByID(gameID);
	}

	@Override
	public void removeGame(String gameID) {
		// TODO Auto-generated method stub
		if(gameID != null && !gameID.isEmpty()) {
			
			try {
				conn = DBConnection.getConnection();
				Pstm = conn.prepareStatement("delete from games where gameID = ?");
				Pstm.setString(1, gameID);
				Pstm.executeUpdate();
			}catch(SQLException | ClassNotFoundException e){
				log.log(Level.SEVERE, e.getMessage());
			}finally {
				try {
					if (Pstm != null) {
						Pstm.close();
					}
					if (conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
		}
	}
	
	//Retrieving list of all GameIDs from games table
	private ArrayList<String> getGameIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>();
		
		try {
			conn = DBConnection.getConnection();
			Pstm = conn.prepareStatement("select * from games");
			ResultSet res = Pstm.executeQuery();
			while(res.next()) {
				arrayList.add(res.getString(1));
			}
		}catch(SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally {
			try {
				if(Pstm != null) {
					Pstm.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return arrayList;
	}
	
	private ArrayList<Games> actionOnGame(String gameID){
		
		ArrayList<Games> GameList = new ArrayList<Games>();
		try {
			conn = DBConnection.getConnection();
			
			if(gameID != null && !gameID.isEmpty()) {
				Pstm = conn.prepareStatement("select * from games where games.gameID = ?");
				Pstm.setString(1, gameID);
			}
			else {
				Pstm = conn.prepareStatement("select * from games");
			}
			ResultSet res = Pstm.executeQuery();
			
			while(res.next()) {
				Games game = new Games();
				game.setGameID(res.getString(1));
				game.setGameName(res.getString(2));
				game.setGameType(res.getString(3));
				game.setPrice(res.getString(4));
				GameList.add(game);
			}
		}catch(SQLException | ClassNotFoundException e) {
			log.log(Level.SEVERE, e.getMessage());
		}finally{
			try {
				if(Pstm != null) {
					Pstm.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			}
		}
		return GameList;
	}
	
}
