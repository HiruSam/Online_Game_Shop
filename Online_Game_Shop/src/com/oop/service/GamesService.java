package com.oop.service;

import java.util.ArrayList;
import java.util.logging.Logger;
import com.oop.model.Games;

public interface GamesService {
	
	//initialize logger
	public static final Logger log = Logger.getLogger(GamesService.class.getName());
	
	//add games to the games table in gamingsite database 
	public void addGame(Games game);
	
	//get a specific game from the games table in gamingsite database
	public Games getGameByID(String gameID);
	
	//get all games from the games table in gamingsite database
	public ArrayList<Games> getGames();
	
	//update a specific game from the games table in gamingsite database
	public Games updateGame(String gameID, Games game);
	
	//remove a specific game from the games table in gamingsite database
	public void removeGame(String gameID);
}
