package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.Customer;
import java.util.ArrayList;
import java.util.UUID;
import javax.servlet.http.HttpSession;
import servercon.WebServer;

public class CustomerDAO {
    
Connection con;
PreparedStatement pst;
ResultSet rs;
    
    public boolean checkCustomerCredentials(Customer obj){
        
        boolean b = false;
        try {
            
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM Customer WHERE "
                    + "id = ? and password = ? and verified = true and blocked = false");
            
            pst.setString(1, obj.getId());
            pst.setString(2, obj.getPassword());
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst()){
            
                b = true;
            
            }
            con.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b ;
    }
    
    public boolean registerCustomer(Customer obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
            
            
            pst.setString(1,obj.getId());
            pst.setString(2,obj.getPassword());
            pst.setString(3,obj.getFirstName());
            pst.setString(4,obj.getLastName());
            pst.setString(5,obj.getMobileNumber());
            pst.setBoolean(6,false);
            pst.setBoolean(7,false);
            
            
            int count = pst.executeUpdate();
            
            if(count > 0)
            {
                String verification_link = WebServer.MYSERVER+
                        "/verifyuser.jsp?custid="+obj.getId();
                
                boolean mailSent = MailDAO.sendMail(obj.getId(), 
"Verification Mail From ExpertMessaging", "Please click on following link "
        + "to verify yourself with ExpertMessaging <a href="+verification_link+
">VERIFY</a>");
                
                if(mailSent)
                {
                    System.out.println("verification mail has been "
                        + "sent to "+obj.getId());
                    b = true;
                }
                else
                    System.out.println("verification mail has not been "
                        + "sent to "+obj.getId());
            }
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
    
    public boolean verifyCustomer(String custid)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from Customer Where id = ? AND "
                    + "verified = false");
            
            pst.setString(1, custid);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                pst = con.prepareStatement("Update Customer set verified = true Where "
                        + "id = ?");
                
                pst.setString(1, custid);
                
                int count = pst.executeUpdate();
                
                if(count > 0)
                    b = true;
            }
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
    
    public static Customer getAllId(Customer c)
    {

        Customer cat = null;
        Connection con = null;
        
        try {
            
            con = DatabaseConnection.getConnection();
            String sql = "select * from Customer where id ='"+ c.getId() +"'";
            
            ResultSet rs = con.prepareStatement(sql).executeQuery();
            
            if(rs.next()){
            
                cat = new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getBoolean(6), rs.getBoolean(7));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        finally{
        
            try {
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        
        }
        return cat;
    }
    
    public boolean updateCustomer(Customer obj)
    {
    boolean b = false;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("update customer set password = ? , firstName = ? , "
                + "lastName = ? , mobileNumber = ? where id = ?");
        
        pst.setString(1, obj.getPassword());
        pst.setString(2, obj.getFirstName());
        pst.setString(3, obj.getLastName());
        pst.setString(4, obj.getMobileNumber());
        pst.setString(5, obj.getId());
        
        int count = pst.executeUpdate();
        
        if(count > 0)
            b = true;
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return b;
}
    
}
