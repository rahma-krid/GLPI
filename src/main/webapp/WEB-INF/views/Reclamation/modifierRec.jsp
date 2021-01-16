<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>   

<html>


<head>.

      
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        
        <title>POSTE</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <!--<link rel="shortcut icon" href="/favicon.ico">-->
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="<c:url value="/resources/dist/css/bootstrap.min.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/dist/css/veneto-admin.min.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/demo/css/demo.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/dist/assets/font-awesome/css/font-awesome.css" />">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css" />
        <link rel="stylesheet" media="print" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css" />
        
        <!-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>   -->
        
       

      
        <link rel="stylesheet" href="<c:url value="/resources/dist/assets/plugins/bootstrap-wysihtml5/css/bootstrap-wysihtml5.css"/>">
       
        
        
   
           
		          
	
    </head>
<style>
.col {
  max-width:12000px;
  margin: auto;
  
}


</style>

<body>

<div class="col">
        <div class="col-md-6">
        
            <form:form  action="editrec?idr=${REC.id_rec}" modelAttribute="rec" class="form-horizontal form-bordered" role="form">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"> Modifier Reclamation</h4>

                      
                        <div class="panel-options">
                            <a href="#" data-rel="collapse"><i class="fa fa-fw fa-minus"></i></a>
                            <a href="#" data-rel="reload"><i class="fa fa-fw fa-refresh"></i></a>
                            <a href="#" data-rel="close"><i class="fa fa-fw fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        
                         <div class="form-group">
                            <label class="control-label" for="exampleInputMessage6">Observation : </label>
                            <form:textarea rows="5"  path="observation" value="${REC.observation }" class="form-control" id="exampleInputMessage6"  placeholder="panne au niveau de la carte reseau ...."></form:textarea>
                        </div>
                        
                        
                      
                      <div class="form-group">
                            <label class="control-label" for="exampleInputText1">Etat</label>
                                 <form:select class="form-control" path="etat">
                            		<option value="Type1"    <c:if test ="${REC.etat=='Non Resolu'}">  selected="selected" </c:if>  >Non resolu</option> 
                            		<option value="Type2"    <c:if test ="${REC.etat=='Resolu'}">  selected="selected" </c:if>  > Resolu</option> 
                        </form:select>
                        </div>
                      
                      
                    </div>
                    <div class="panel-footer">
                        <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-8">
                                <button type="submit" class="btn btn-primary">Valider</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
		
		
		 <script src="dist/assets/libs/jquery/jquery.min.js"></script>
        <script src="dist/assets/bs3/js/bootstrap.min.js"></script>
        <script src="dist/assets/plugins/jquery-navgoco/jquery.navgoco.js"></script>
        <script src="dist/js/main.js"></script>

        <!--[if lt IE 9]>
        <script src="dist/assets/plugins/flot/excanvas.min.js"></script>
        <![endif]-->
        <script src="dist/assets/plugins/jquery-sparkline/jquery.sparkline.js"></script>
        <script src="demo/js/demo.js"></script>



    </body>

<!-- Mirrored from optimisticdesigns.herokuapp.com/veneto/forms-form-layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Feb 2018 08:16:21 GMT -->
</html>
