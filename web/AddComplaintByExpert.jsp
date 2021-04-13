<%-- 
    Document   : AddComplaintByExpert
    Created on : Jun 30, 2020, 4:06:30 PM
    Author     : HP
--%>
<%@page import="dao.ReportedIncidentsByExpertDAO"%>
<%@page import="dao.QuestionDAO"%>
<%@page import="dto.ReportedIncidentsByExpert"%>
<%
    String expertid = (String) session.getAttribute("expertid");
        
    int questionid = Integer.parseInt(request.getParameter("questionid"));
    
    String incDesc = request.getParameter("incDesc");
    
    ReportedIncidentsByExpert obj = new ReportedIncidentsByExpert();
    obj.setExpertID(expertid);
    obj.setIncDesc(incDesc);
    obj.setQuestionID(questionid);
    obj.setCustomerID(new QuestionDAO().getCustomerByQuestion(questionid));
    
    ReportedIncidentsByExpertDAO edao = new ReportedIncidentsByExpertDAO();
    
    boolean b = edao.addIncidentByExpert(obj);
    
    if(b)
    out.print("success");
    else
    out.print("error");
%>
