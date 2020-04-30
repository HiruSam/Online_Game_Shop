package sql;

import sql.Mysqlaccess;

public class Main {
	public static void main(String[] args) throws Exception {
		
		Mysqlaccess dao = new Mysqlaccess();
        dao.readDataBase();
    }

}
