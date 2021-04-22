<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
 <% String classtype=request.getParameter("classtype");
String id=session.getAttribute("uID").toString();
 try{
    Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","root","");
                     
                      String update="update user set Class='"+classtype+"' where ID='"+id+"'" ;
                      PreparedStatement ps=con.prepareStatement(update);
                  	int i=ps.executeUpdate();
                  	String redirect="select * from user where ID='"+id+"'";
                  	Statement st=con.createStatement();
                	ResultSet rs=st.executeQuery(redirect);
                	session.setAttribute("classtype",classtype);
                	while(rs.next())
                		if(rs.getString("Class").equals("A"))
                	{
                			response.sendRedirect("voterforma.jsp");
                	}
                  	else if(rs.getString("Class").equals("B"))
                  	{
                  		response.sendRedirect("voterformb.jsp");
                  		
                  	}
                  	else System.out.println("Updation Unsuccessfull");
                  	}
                  	catch(Exception e) 
                    {
                	   System.out.println(e);
                    }
                    
                      %>