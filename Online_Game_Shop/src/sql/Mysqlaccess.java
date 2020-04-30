package sql;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;


public class Mysqlaccess {
    
    private Connection connect = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;
    
    final private String host = "3306";
    final private String user = "root";
    final private String passwd = "root";

    public void readDataBase() throws Exception {
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
           
            connect = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/gamingsite?"
                            + "user=root &password=root");

            
            statement = connect.createStatement();
            
            resultSet = statement
                    .executeQuery("select * from feedback");
            writeResultSet(resultSet);

           
            preparedStatement = connect
                    .prepareStatement("insert into  feedback values (,default,?, ?, ?, ?, ? , ?, ?)");
            
            preparedStatement.setString(1, "fname");
            preparedStatement.setString(2, "lname");
            preparedStatement.setString(3, "email");
            preparedStatement.setString(4, "gname");
            preparedStatement.setString(5, "originality");
            preparedStatement.setString(6, "fun");
            preparedStatement.setString(6, "comment");
            preparedStatement.executeUpdate();

            preparedStatement = connect
                    .prepareStatement("SELECT fname,lname, email, gname, originality,fun,comment from feedback");
            resultSet = preparedStatement.executeQuery();
            writeResultSet(resultSet);

           
            preparedStatement = connect
            .prepareStatement("delete from feedback where fname= ? ; ");
            preparedStatement.setString(1, "Test");
            preparedStatement.executeUpdate();

            resultSet = statement
            .executeQuery("select * from feedback");
            writeMetaData(resultSet);

        } catch (Exception e) {
            throw e;
        } finally {
            close();
        }

    }

    private void writeMetaData(ResultSet resultSet) throws SQLException {
       

        System.out.println("The columns in the table are: ");

        System.out.println("Table: " + resultSet.getMetaData().getTableName(1));
        for  (int i = 1; i<= resultSet.getMetaData().getColumnCount(); i++){
            System.out.println("Column " +i  + " "+ resultSet.getMetaData().getColumnName(i));
        }
    }

    private void writeResultSet(ResultSet resultSet) throws SQLException {
        
        while (resultSet.next()) {
            
            String fname = resultSet.getString("fname");
            String lname = resultSet.getString("lname");
            String email = resultSet.getString("email");
            String gname = resultSet.getString("gname");
            Date originality = resultSet.getDate("originality");
            String fun = resultSet.getString("fun");
            String comment = resultSet.getString("comment");
            
            System.out.println("fname: " + fname);
            System.out.println("lname: " + lname);
            System.out.println("email: " + email);
            System.out.println("originality: " + originality);
            System.out.println("fun: " + fun);
            System.out.println("Comment: " + comment);
        }
    }

    
    private void close() {
        try {
            if (resultSet != null) {
                resultSet.close();
            }

            if (statement != null) {
                statement.close();
            }

            if (connect != null) {
                connect.close();
            }
        } catch (Exception e) {

        }
    }

}


