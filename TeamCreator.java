import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class TeamCreator {
    public static void main(String args[]){
        Connection c = null;
        Statement stmt = null;
        stmt = c.createStatement();
        ResultSet rs1 = stmt.executeQuery("SELECT username.public."userInfo" FROM public."userInfo", public.characteristics" +
                " WHERE playerType = 'casual' AND rank = 'Gold 4" +
                " AND ROLE = 'top'");
        ResultSet rs2 = stmt.executeQuery("SELECT username.public."userInfo" FROM public."userInfo", public.characteristics" +
                " WHERE playerType = 'casual' AND rank = 'Gold 4" +
                " AND ROLE = 'jungle'");
        ResultSet rs3= stmt.executeQuery("SELECT username.public."userInfo" FROM public."userInfo", public.characteristics" +
                " WHERE playerType = 'casual' AND rank = 'Gold 4" +
                " AND ROLE = 'mid'");
        ResultSet rs4 = stmt.executeQuery("SELECT username.public."userInfo" FROM public."userInfo", public.characteristics" +
                " WHERE playerType = 'casual' AND rank = 'Gold 4" +
                " AND ROLE = 'adc'");
        ResultSet rs5 = stmt.executeQuery("SELECT username.public."userInfo" FROM public."userInfo", public.characteristics" +
                " WHERE playerType = 'casual' AND rank = 'Gold 4" +
                " AND ROLE = 'support'");


        }

    }
}

