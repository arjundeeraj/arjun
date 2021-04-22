<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

String redirect=request.getParameter("toggle_option");


                  
               
               		if(redirect.equals("candidatelist"))
               	{
               			response.sendRedirect("candidatelist.jsp");
               	}
                 	else if(redirect.equals("voterslist"))
                 	{
                 		response.sendRedirect("voterslist.jsp");
                 		
                 	}
                 	else if(redirect.equals("result"))
                 	{
                 		response.sendRedirect("result.jsp");
                 		
                 	}else
                 		System.out.println("Error occured");
               	
                    

%>