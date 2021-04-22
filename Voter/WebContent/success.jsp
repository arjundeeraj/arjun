<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <style>
 body {
  background-image: url('https://cbsnews1.cbsistatic.com/hub/i/2016/12/14/4b7e3037-b62b-4f21-9e5c-1c181da45a6a/screen-shot-2016-12-14-at-4-25-12-pm.png');
 background-repeat: no-repeat;
}
</style> 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Voted Successfully</title>
</head>
 <body oncontextmenu="return false;">  
<%
String id=session.getAttribute("uID").toString();
String classtype=session.getAttribute("classtype").toString();

String candidate=session.getAttribute("candidateobj").toString();

try{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","root","");
	 String count="select * from candidatelist where Candidate='"+candidate+"'" ;
	 Statement st=con.createStatement();
 	ResultSet rs=st.executeQuery(count);
 	
 	while(rs.next())
 	{
 		String dbcount=rs.getString("Count");
 		int vcount= Integer.parseInt(dbcount);
 		vcount=vcount+1;
 		session.setAttribute("countobj", vcount);
}
 	String ncount=session.getAttribute("countobj").toString();

    String update="update candidatelist set Count='"+ncount+"' where Candidate='"+candidate+"'" ;
    PreparedStatement ps=con.prepareStatement(update);
	int i=ps.executeUpdate();
	if(i!=0)
	 {
		 System.out.println("Updated Count");
	 }else 
		 System.out.println("Not Updated");
}
catch(Exception e) 
{
  System.out.println(e);
}

%>
<a href="register.jsp"><button type="submit">Return Home</button></a>
</body>
</html>