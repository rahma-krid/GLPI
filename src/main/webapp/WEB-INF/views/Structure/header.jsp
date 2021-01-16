<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!doctype html>
<head>


        <!-- Meta, title, CSS, favicons, etc. -->
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
       
        
        
     <!--        <script src="<c:url value="/resources/dist/jquery-3.3.1.min.js" />"></script> -->
          <script src="https://code.highcharts.com/highcharts.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
           <script src="https://code.highcharts.com/modules/exporting.js"></script>
	     	<!--  <script src="https://fullcalendar.io/js/fullcalendar-2.1.1/lib/moment.min.js"></script>
	    	<script src="https://fullcalendar.io/js/fullcalendar-2.1.1/fullcalendar.min.js"></script>
	    	<script src="https://fullcalendar.io/js/fullcalendar-2.1.1/jquery-ui.min.js"></script> -->   
				
     
		
       
				
        
          <script src="<c:url value="/resources/dist/assets/libs/jquery/jquery.min.js" />"></script>
        <script src="<c:url value="/resources/dist/assets/bs3/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/dist/assets/plugins/jquery-navgoco/jquery.navgoco.js" />"></script>
        <script src="<c:url value="/resources/dist/js/main.js" />"></script> 
	 
        <!--[if lt IE 9]>
        <script src="dist/assets/plugins/flot/excanvas.min.js"></script>
        <![endif]-->
        
        
       
				
        
        <script src="<c:url value="/resources/dist/assets/plugins/jquery-sparkline/jquery.sparkline.js" />"></script>
        <script src="<c:url value="/resources/demo/js/demo.js" />"></script>
        
        
       
           
		          
		
		
     <!--  [if lt IE 9]
        <script src="dist/assets/libs/html5shiv/html5shiv.min.js"></script>
        <script src="dist/assets/libs/respond/respond.min.js"></script>
        <![endif]-->
        
<style>

h4 {
   text-shadow: 2px 2px 8px #0000FF;

}

h1 {
color:blue;
font-weight: bold;
font-size: 17px;
}


h5 {
color:blue;
font-weight: bold;
margin-left: 50px;

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

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #85aee7;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #85aee7;
    color: white;
}


</style>


      

    </head>
    <body onload=display_ct(); class="">
        <header>
            <nav class="navbar navbar-default navbar-static-top no-margin" role="navigation">
                <div class="navbar-brand-group">
                
                    <a class="navbar-sidebar-toggle navbar-link" data-sidebar-toggle>
                    
                        <i class="fa fa-lg fa-fw fa-bars" ></i>
                    </a>
                    
                    
                    <a class="navbar-brand hidden-xxs" href="https://www.tunisietelecom.tn/Fr" target=_blank>
                        <span class="sc-visible">
                            TT
                        </span>
                        <span class="sc-hidden">
                 <img class="img-circle" src="<c:url value="/resources/demo/images/poste2.gif" />">
                        </span>
                    </a>
                  
                </div>
                <ul class="nav navbar-nav navbar-nav-expanded pull-right margin-md-right">
                
             
                    <li class="hidden-xs">
                        
			  <h1>Poste Regionale de Sousse</h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		
		                             
<h4 id='ct' ></h4>
		
		
				

                     
                        
                       
                    </li> 
                       
                       <li class="dropdown">
                       
                       
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle navbar-user" href="javascript:;">
                           
                            <h5><span>${useer}</span></h5>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu pull-right-xs">
                            <li class="arrow"></li> 
                            <li class="divider"></li>
                            <li><a href="<c:url value ="j_spring_security_logout"/>">Déconnecter</a></li>
                     
                        </ul>
                    </li>
                    
                </ul>
                
            </nav>
        </header>
       
        
        <div class="page-wrapper">
            <aside class="sidebar sidebar-default">
                <div class="sidebar-profile">
                   <div id="mini-chart-sidebar-1" class="chart pull-right"></div>
                            
                           <div id="mini-chart-sidebar-2" class="chart pull-right"></div>
                                 <div id="mini-chart-sidebar-3" class="chart pull-right"></div>
                </div>
                <nav>
                 
                                 
                                 
                   
                    <ul class="nav nav-pills nav-stacked">
                    

                    
                     
                      <li class="#">
                       
                            <a href="menu" title="Dashboards">
                                <i class="fa fa-lg fa-fw fa-home"></i> Accueil
                            </a> 
                       
                       </li>  
                   
                         </ul>
                         
               


                          <ul class="nav nav-pills nav-stacked">
                         
                             <li class="#">
                             
                            <a href="help" title="Users">
                               <i class="fa fa-cog" style="font-size:22px"></i> Historique d'aide
                            </a>
                           
                        </li>
            </ul>
                      
                      
                     
                                          
                    
                               
                    
                       

 
                      <ul class="nav nav-pills nav-stacked">
                         
                             <li class="nav-dropdown">
                             
                            <a href="" title="Users">
                               <i class="fa fa-cog" style="font-size:22px"></i> Tableaux de bords
                            </a>
                            <ul class="nav-sub">
                            
                        
                                
                               
                                
                             
                                
                                <li>
                                    <a href="chart8" title="Profile">
                                        <i class="fa fa-fw fa-caret-right"></i> Taux de  Reclamations
                                    </a>
                                </li>
                                
                                
                                
                                
                                
                              
                                
                                
                                
                                
                            </ul>
                        </li>
            </ul>      
                                           
                    
                            </nav>
            </aside>

            <div class="page-content">
                <div class="page-subheading page-subheading-md">
 
</div>




<div class="container-fluid-md">
    <div class="row">
        <div class="col-md-12">
        
        
        <script type="text/javascript"> 
function display_c(){
var refresh=1000; // Refresh rate in milli seconds
mytime=setTimeout('display_ct()',refresh)
}

function display_ct() {
	var x = new Date()
	var x1=x.toLocaleString();// changing the display to UTC string
	document.getElementById('ct').innerHTML = x1;
	tt=display_c();
	 }
</script>
		