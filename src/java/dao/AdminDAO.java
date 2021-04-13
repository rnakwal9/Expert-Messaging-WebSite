package dao;

import dto.Admin;
import dbcon.DatabaseConnection;
import java.sql.*;

public class AdminDAO {
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public boolean checkUser(Admin obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM Admin WHERE "
                    + "id = ? and password = ?");
            
            pst.setString(1, obj.getId());
            pst.setString(2, obj.getPassword());
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
                b = true;
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
}
