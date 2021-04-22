<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
 String name=request.getParameter("name");
 String phoneno=request.getParameter("phoneno");
 String email=request.getParameter("email");
 session.setAttribute("emailobj",email);
 
	
 try{
    	 Class.forName("com.mysql.jdbc.Driver");
    	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","root","");
    	 String admin="select * from user where Email='"+email+"' and Phone='"+phoneno+"'";
		 Statement sta=con.createStatement();
		ResultSet rs=sta.executeQuery(admin);
		
		while(rs.next())
		{
		
		if(rs.getString("Admin").equals("1"))
		response.sendRedirect("adminhome.jsp");
		}
		
    	 Statement st=con.createStatement();
    	 String add="insert into user (Name,Email,Phone) values('"+name+"','"+email+"','"+phoneno+"')" ;
    	 int i=st.executeUpdate(add);
    	 if(i!=0)
    	 {
    		 response.sendRedirect("register2db.jsp");
    	 }else 
    		 System.out.println("Not Inserted");
		}
    
   catch(Exception e) 
    {
	   System.out.println(e);
	   //response.sendRedirect("register.jsp");
    }
    
    %>
    