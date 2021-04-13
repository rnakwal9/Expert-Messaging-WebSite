package dao;

import java.sql.*;
import dbcon.DatabaseConnection;
import dto.QuestionCategory;
import java.util.ArrayList;

public class QuestionCategoryDAO {
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public ArrayList<QuestionCategory> getAllQuestionCategories()
    {
        
        ArrayList<QuestionCategory> lst = null;
        
        try {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("Select * from QuestionCategory");
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst()){
            
                lst = new ArrayList<>();
                while(rs.next()){
                
                    QuestionCategory obj = new QuestionCategory();
                    obj.setId(rs.getInt(1));
                    obj.setCategoryName(rs.getString(2));
                    lst.add(obj);
                
                }
            
            }
            
            con.close();
        } catch (Exception e) 
        {
            e.printStackTrace();
        }
    return lst;
    }
    
}
