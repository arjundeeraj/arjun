<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
img {width:100%;}
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Form 2</title>
</head>
<body>
<%     
String email=session.getAttribute("emailobj").toString();
 
try{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/voter","root","");
	 String show="select * from user where Email='"+email+"'";
	 Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(show);
	
	while(rs.next())
	{
	String dname=rs.getString("Name");
	String dphone=rs.getString("Phone");
	String did=rs.getString("ID");
	session.setAttribute("uID",did);
	int uid= Integer.parseInt(did);
	
	uid=uid+1000;
	
%> 
<section class="testimonial py-5" id="testimonial">
    <div class="container">
        <div class="row ">
            <div class="col-md-4 py-5 bg-primary text-white text-center ">
                <div class=" ">
                    <div class="card-body">
                        <img src="http://www.ansonika.com/mavia/img/registration_bg.svg" style="width:30%">
                        <h2 class="py-3">Registration</h2>
                        <p>Choose your class to submit your vote
                        
</p>
                    </div>
                </div>
            </div>
            <div class="col-md-8 py-5 border">
                <h4 class="pb-4">Registration Form</h4>
                <form action="typeclass.jsp">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                        <label id="Full Name">Name</label>
                          <input id="Full Name" name="Full Name" placeholder="Full Name" class="form-control" type="text" value="<%=dname%>">
                        </div>
                        <div class="form-group col-md-6">
                        <label id="inputEmail4">Email</label>
                          <input type="text" class="form-control" id="inputEmail4" placeholder="Email" value="<%=email%>">
                          
                        </div>
                      </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label id="Mobile No.">Phone Number</label>
                            <input id="Mobile No." name="Mobile No." placeholder="Mobile No." class="form-control" required="required" type="text" value="<%=dphone%>">
                        </div>
                        <div class="form-row">
                        <div class="form-group col-md-8">
                        <label id="ID">User ID</label>
                          <input id="ID" name="UserID" placeholder="User ID" class="form-control" type="text" value="<%=uid%>">
                        </div>
                        <div class="form-group col-md-8" name="classtype">
                                 
                        <div class="row">
                            <div class="col-sm-6">
                                <label class="radio-inline">
                                    <input type="radio" id="classa" value="A" name="classtype">Class A
                                </label>
                            </div>
                            <div class="col-sm-6">
                                <label class="radio-inline">
                                    <input type="radio" id="classb" value="B" name="classtype">Class B
                                </label>
                            </div>
                        </div>
                    
                        </div>
                     
                    </div>
                  <div>
                    	<br>
                    	</div>
                    <div class="form-row col-sm-6">
               
                        <input type="submit" class="btn btn-success" value="submit">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

</body>
</html>
<%	
}
}
catch(Exception e) 
{
  System.out.println(e);
}
 
%> 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 