<%-- 
    Document   : GetSubCategoryJson
    Created on : Jun 17, 2020, 6:28:20 PM
    Author     : HP
--%>
<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="dto.QuestionSubCategory"%>
<%@page import="dao.QuestionSubCategoryDAO"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="application/json" %>
<%
           int catid = Integer.parseInt(request.getParameter("catid"));
           
           QuestionSubCategoryDAO obj = new QuestionSubCategoryDAO();
           
           ArrayList<QuestionSubCategory> lst = obj.getQuestionSubCategoriesByQuestionCategoryID(catid);
           
           Gson g = new Gson();
           
           HashMap<String,ArrayList<QuestionSubCategory>> hmap = new HashMap<String,ArrayList<QuestionSubCategory>>();
           
           hmap.put("subcat",lst);
           
           out.print(g.toJson(hmap));
           

%>