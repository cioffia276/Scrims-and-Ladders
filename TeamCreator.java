import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class TeamCreator {
    public static void main(String args[]){
        Connection c = null;
        Statement stmt = null;
        stmt = c.createStatement();
        ResultSet rs1 = stmt.executeQuery("SELECT * FROM ____ WHERE _____ = HARDCORE AND RANK = ________" +
                " AND ROLE = 'top'");
        ResultSet rs2 = stmt.executeQuery("SELECT * FROM ____ WHERE _____ = HARDCORE AND RANK = ________" +
                " AND ROLE = 'jungle'");
        ResultSet rs3= stmt.executeQuery("SELECT * FROM ____ WHERE _____ = HARDCORE AND RANK = ________" +
                " AND ROLE = 'mid'");
        ResultSet rs4 = stmt.executeQuery("SELECT * FROM ____ WHERE _____ = HARDCORE AND RANK = ________" +
                " AND ROLE = 'adc'");
        ResultSet rs5 = stmt.executeQuery("SELECT * FROM ____ WHERE _____ = HARDCORE AND RANK = ________" +
                " AND ROLE = 'support");
        while(rs.next()){

        }

    }
}

