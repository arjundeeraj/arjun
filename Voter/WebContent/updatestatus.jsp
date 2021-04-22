<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
   
<% 
String classtype=request.getParameter("classtype");
String id=session.getAttribute("uID").toString();
String candidate=request.getParameter("candidate");
session.setAttribute("candidateobj",candidate);
 try{
    Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","root","");
                     
                      String update="update user set Status='1' where ID='"+id+"'" ;
                      PreparedStatement ps=con.prepareStatement(update);
                     
                  	int i=ps.executeUpdate();
                  	if(i!=0)
                  	{
                  		response.sendRedirect("success.jsp");
                  	}else
                  		System.out.println("Status not updated");
                  	
                  	}
                  	catch(Exception e) 
                    {
                	   System.out.println(e);
                    }
     
                      %>