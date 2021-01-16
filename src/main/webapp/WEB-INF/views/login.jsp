<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!doctype html>
<html class="no-js">

<!-- Mirrored from optimisticdesigns.herokuapp.com/veneto/pages-sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Feb 2018 08:16:14 GMT -->
<head>

        <!-- Meta, title, CSS, favicons, etc. -->
                <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>La Poste Tunisienne</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <!--<link rel="shortcut icon" href="/favicon.ico">-->
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="<c:url value="/resources/dist/css/bootstrap.min.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/dist/css/veneto-admin.min.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/demo/css/demo.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/dist/assets/font-awesome/css/font-awesome.css" />">


 <script src="<c:url value="/resources/dist/assets/libs/jquery/jquery.min.js" />"></script>
        <script src="<c:url value="/resources/dist/assets/bs3/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/dist/assets/plugins/jquery-navgoco/jquery.navgoco.js" />"></script>
        <script src="<c:url value="/resources/dist/js/main.js" />"></script>        
        

    </head>
    
    <style>
    
  label{
  color:black;
font-weight: bold;
font-size: 13px;
  
  }  
h4 {
   text-shadow: 2px 2px 8px #0000FF;
   color:red;
font-weight: bold;
font-size: 17px;

}

h1 {
color:blue;
font-weight: bold;
font-size: 17px;
}
    
    /* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 80%;
    box-shadow: 0 4px 8px 0 rgba(0,0,255,0.5),0 6px 20px 0 rgba(0,0,255,0.5);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}
    
    </style>
    <body class="body-sign-in">
    
        
        
    <div class="container">
        <div class="panel panel-default form-container">
       			 
            <div class="panel-body">
                <form role="form" action='j_spring_security_check' method="post">
                    <h3 class="text-center margin-xl-bottom">AUTHENTIFICATION</h3>
					<c:if test="${not empty msg}">
         			<div class="alert alert-block alert-success">
                        <button data-dismiss="alert" class="close" type="button">×</button>
                        <p>${msg }</p>
                    </div>
                   </c:if> 
                   <c:if test="${not empty error}">
                    <div class="alert alert-block alert-danger">
                        <button data-dismiss="alert" class="close" type="button">×</button>
                         <p>${error }</p>
                    </div>
                    </c:if>
                    <div class="form-group text-center">
                        <label class="sr-only" for="email">Email Address</label>
                        <input type="text" name="j_username" class="form-control input-lg" id="login" placeholder="Login" required="">
                    </div>
                    <div class="form-group text-center">
                        <label class="sr-only" for="password">Password</label>
                        <input type="password" name="j_password"  class="form-control input-lg" id="password" placeholder="Password" required="">
                    </div>

                    <input type="submit" class="btn btn-primary btn-block btn-lg"  value="Connecter">  
                </form>
            </div>
       
        </div>
        
    </div>
    
      <br/>
                   
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		
             
        
        

        
        
        
        
        
        
        
        
        
        
        
                     
                     
                   
</body>


        
<a   data-toggle="modal" data-target="#modal-default1"class="modal-link"><i class="btn btn-flat btn-danger">Déclarer une panne !</i></a>
                     
 

 <div class="modal fade" id="modal-default1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title"><i class="fa fa-building-o" style="font-size:15px"></i>&nbsp&nbsp Declarer une panne</h3>
              </div>
              <div class="modal-body">
              
                      <div class="panel-body">
							 <form:form role="form"  modelAttribute="Reclamation" method="post" action="addReclamation" >
                     
                     
                     
                     
                     <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label" for="exampleInputName6">Titre : </label>
                                    <form:input type="text" path="titre" class="form-control" id="exampleInputName6"  placeholder="Panne du Pc num ......"/>
                                </div>
                            </div>
                           
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                
                                
                                
                                 <div class="form-group">
                            <label class="control-label" for="exampleInputText1">Emplacement</label>
                        <form:select class="form-control" path="emplacement" id="aa">
                            		<option value="kalaa sghira">Poste kalaa sghira</option> 
                            		<option value="akouda ">Poste akouda  </option> 
                            		<option value="kalaa kbira ">Poste kalaa kbira </option>
                            		<option value="Msaken ">Poste Msaken  </option> 
                            		
                            		
                        </form:select>
                        </div>
                        
                        
                            </div>
                            </div>
                            
                             
                            
                            
                             <div class="row">
                            <div class="col-sm-7">
                            
                            <div class="form-group">
                            <label class="control-label"  for="exampleInputText1">Gravite</label><br>
                            
                                 <form:radiobutton  value="normale"  path="gravite"/> <label style="color:yellow">normale</label>  &nbsp;&nbsp;
                                   <form:radiobutton value="moyenne" path="gravite"/><label style="color:orange"> moyenne</label>   &nbsp;&nbsp;
                                 <form:radiobutton value="grave" path="gravite"/> <label style="color:red">Grave </label>
                                
                            	   <form:errors path="gravite" cssClass="error" />
                      
                      </div>
                      </div>
                      </div>
                      
                      
                      
                      
                      
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="exampleInputMessage6">Description Detaillee : </label>
                            <form:textarea rows="6" path="description" class="form-control" id="exampleInputMessage6" style="resize:vertical"  placeholder="panne au niveau de la carte reseau ....
							"></form:textarea>
                        </div>
                        
                        
                        
                        
                        <button class="btn btn-primary" type="submit">envoyer</button>
						 <button class="btn btn-primary" type="reset">Annuler</button>
                    </form:form>
                </div>
                </div>
              <div class="modal-footer">
                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        
        <!-- /.modal -->

<!-- Mirrored from optimisticdesigns.herokuapp.com/veneto/pages-sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Feb 2018 08:16:14 GMT -->
</html>
