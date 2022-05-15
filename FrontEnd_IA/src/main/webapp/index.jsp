<%@page import="com.IA" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Interruption Alerts</title>

      <link rel="stylesheet" href="Views/bootstrap.min.css">
      <script src="Components/jquery-3.6.0.min.js"></script>
      <script src="Components/main.js"></script>

</head>
<body style="background-color:#e3ebea;">
   
   
    <br/>   
    <div class="container" style="background-color:#ffffff; width:60%">
    <br/> 
    
     <h3 class="text-body" style="text-align:center;">Interruption Alerts </h3>             
     
    <br/>  
   <div class="container" style=" width:50%">
    <form id="formPayment" name="formPayment">

      <div class="form-group" >
        <label> Alert ID </label>  <input type="text" name="alertID" id="alertID" class="form-control"  placeholder="1" >
      </div>  
     <div class="row"> 
       <div class="col"> 
         <div class="form-group" >
            <label> Description </label> <input type="text"  name="alertDescription" id="alertDescription" class="form-control"  placeholder="1 hour power cut for colombo" >
         </div>   
       </div>  
       <div class="col">
         <div class="form-group" >
            <label>Schedule Time</label> <input type="text"  name="scheduleTime" id="scheduleTime" class="form-control"  placeholder="00:00" >  
         </div>
       </div>
     </div>         
       
     
     <div class="row"> 
       <div class="col"> 
        <div class="form-group" >
          <label>Date</label> <input type="text" name="scheduleDate" id="scheduleDate" class="form-control"  placeholder="0000-00-00">
        </div>
      </div>
    </div>    
     
   <br/>  
   
    <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-warning" style="width:100%">
    <input type="hidden" id="hidalertID" name="hidalertID" value="">
    
   
</form>
     <br/>
    <div id="alertSuccess" class="alert alert-success"></div>
    <div id="alertError" class="alert alert-danger"></div>
     <br/> 
 </div> 
 </div>  
 <div class="container" style="background-color:#ffffff; width:60%">
   <br/> 
	<center> <div id="divUsersGrid">
       <%
           IA iaobj = new IA();
           out.print(iaobj.readAlerts());
       %>
    </div>
   </center> 
     <br>
    <br>
   
   </div>
   <br/> <br/>
   <br/>
</body>
</html>