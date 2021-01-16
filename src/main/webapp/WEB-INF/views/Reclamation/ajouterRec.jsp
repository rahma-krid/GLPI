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



<div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">Historique d'aide</h4>

            <div class="panel-options">
                <a href="#" data-rel="collapse"><i class="fa fa-fw fa-minus"></i></a>
                <a href="#" data-rel="reload"><i class="fa fa-fw fa-refresh"></i></a>
                <a href="#" data-rel="close"><i class="fa fa-fw fa-times"></i></a>
            </div>
        </div>
    
       <div class="panel-body">
		
			<table class="table table-striped">

				<thead>

                        <tr style="background-color:#FFFFE0;">
							
								  
								  <th>Titre</th>
								  <th>Gravite</th>
								  <th>description</th>
								 <th>observation</th>
								 <th>nature</th>
                        </tr>
				</thead>
				<tbody>
				
				<c:forEach var="E1" items="${RECS1}">
						
					    <tr style="background-color:#9BE1B9">
                                   <td>${E1.titre}</td>
			                       <td>${E1.gravite}</td>
			                       <td>${E1.description}</td>
			                       <td>${E1.observation}</td>
			                       <td>${E1.nature}</td>
			                      
			             </tr>
			    </c:forEach>
			    
			    <c:forEach var="E2" items="${RECS2}">
						
					    <tr style="background-color:#F0AFAD">
                                   <td>${E2.titre}</td>
			                       <td>${E2.gravite}</td>
			                       <td>${E2.description}</td>
			                       <td>${E2.observation}</td>
			                       <td>${E2.nature}</td>
			                      
			             </tr>
			    </c:forEach>
			    
			    <c:forEach var="E3" items="${RECS3}">
						
					    <tr style="background-color:#EFEDB4">
                                   <td>${E3.titre}</td>
			                       <td>${E3.gravite}</td>
			                       <td>${E3.description}</td>
			                       <td>${E3.observation}</td>
			                       <td>${E3.nature}</td>
			                       
			                      
			             </tr>
			    </c:forEach>
			    
			    
			    
			             
			             
			             

			             
			             </tbody>
			</table>
			</div>
			</div>

	



    </body>

<!-- Mirrored from optimisticdesigns.herokuapp.com/veneto/forms-form-layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Feb 2018 08:16:21 GMT -->
</html>
