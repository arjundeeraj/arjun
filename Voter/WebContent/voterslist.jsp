<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <html>
<head>
<title>Voter's List</title>
<style>
</style>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<h1>Class A</h1>           
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
      </tr>
    </thead>
	 
    <%
    try
    {
   	 Class.forName("com.mysql.jdbc.Driver");
   	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","root","");
   	 String showa="select * from user where Class='A'";
   	 Statement sta=con.createStatement();
   	ResultSet rsa=sta.executeQuery(showa);
   	
   	while(rsa.next())
   	{
   	String dbnamea=rsa.getString("Name");
   	String dbida=rsa.getString("ID");
	String dbemail=rsa.getString("Email");
	String dbphone=rsa.getString("Phone");
    int uida= Integer.parseInt(dbida);
	uida=uida+1000;
	if(rsa.getString("Status").equals("1"))
	{
	%>
	   <tbody>
      <tr>
        <td><%=uida%></td>
        <td><%=dbnamea%></td>
        <td><%=dbemail%></td>
        <td><%=dbphone%></td>
      </tr>
      </tbody>
      <%} }%>
      </table>
      </div>
     <div class="container">
	<h1>Class B</h1>           
  <table class="table">
    <thead>
      <tr>
       <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
      </tr>
    </thead>
	 
    <%
   	 String showb="select * from user where Class='B'";
   	 Statement stb=con.createStatement();
   	ResultSet rsb=stb.executeQuery(showb);
   	
   	while(rsb.next())
   	{
   		String dbnameb=rsb.getString("Name");
   		String dbemail=rsb.getString("Email");
   		String dbphone=rsb.getString("Phone");
     	String dbidb=rsb.getString("ID");
    int uidb= Integer.parseInt(dbidb);
	uidb=uidb+1000;
	
	if(rsb.getString("Status").equals("1"))
	{
	%>
	
	   <tbody>
      <tr>
        <td><%=uidb%></td>
        <td><%=dbnameb%></td>
        <td><%=dbemail%></td>
        <td><%=dbphone%></td>
      </tr>
      </tbody>
      <%} }%>
      </table>
      </div>
     </body>
     </html>
      
  <% 	
    } 
    catch(Exception e) 
    {
	   System.out.println(e);
    }
    %>
