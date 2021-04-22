<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type = "text/javascript" >  
        function preventBack() { window.history.forward(); }  
        setTimeout("preventBack()", 0);  
        window.onunload = function () { null };  
    </script> 
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
<style>
body {  max-width: 1500px;
  margin-left: auto;
  margin-right: auto;
  }
.panel-body:not(.two-col) { padding:0px }
.glyphicon { margin-right:5px; }
.glyphicon-new-window { margin-left:5px; }
.panel-body .radio,.panel-body .checkbox {margin-top: 0px;margin-bottom: 0px;}
.panel-body .list-group {margin-bottom: 0;}
.margin-bottom-none { margin-bottom: 0; }
.panel-body .radio label,.panel-body .checkbox label { display:block; }      
</style>
<title>Voting Poll</title>
</head>
<body>
 
        <div class="col-md-6"name="vote">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-circle-arrow-right"></span>Vote your Candidate</h3>
                </div>
                <form action="updatestatus.jsp" name="candidate">
                <div class="panel-body two-col">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="well well-sm">
                                <div class="radio">
                                    <label >
                                        <input type="radio" value="pyari"name="candidate">
                                        Pyari
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="well well-sm">
                                <div class="radio">
                                    <label>
                                        <input type="radio" value="vikram" name="candidate">
                                       D M Vikram
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="well well-sm margin-bottom-none">
                                <div class="radio">
                                    <label>
                                        <input type="radio" value="manavalan"name="candidate">
                                        Manavalan
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="well well-sm margin-bottom-none">
                                <div class="radio">
                                    <label>
                                        <input type="radio" value="nota" name="candidate" >
                                        None of the above
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <button type="submit" class="btn btn-success btn-sm">
                        <span class="glyphicon glyphicon-ok"></span>Vote</button>
            
                </div>
                </form>
            </div>
        </div>
  
</body>
</html>