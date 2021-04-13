package dao;

import dto.QuestionSubCategory;
import dbcon.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;

public class QuestionSubCategoryDAO {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public ArrayList<QuestionSubCategory> getQuestionSubCategoriesByQuestionCategoryID(
int catid)
{
    ArrayList<QuestionSubCategory> lst = null;
    
//    int questionCategoryID = 
//            new QuestionCategoryDAO().getCategoryID(questionCategoryName);
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from QuestionSubCategory"
                + " where categoryID = ?");
        
        pst.setInt(1, catid);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            lst = new ArrayList<>();
            
            while(rs.next())
            {
                QuestionSubCategory obj = new QuestionSubCategory();
                obj.setId(rs.getInt(1));
                obj.setSubCategoryName(rs.getString(2));
                obj.setCategoryID(rs.getInt(3));
                lst.add(obj);
            }
        }
        
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return lst;
}
    
}
