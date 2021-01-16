
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
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
      
        <!-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>   -->
        
       <script src="<c:url value="/resources/dist/assets/libs/jquery/jquery.min.js" />"></script>
        <script src="<c:url value="/resources/dist/assets/bs3/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/dist/assets/plugins/jquery-navgoco/jquery.navgoco.js" />"></script>
        <script src="<c:url value="/resources/dist/js/main.js" />"></script>        
        

      
        <link rel="stylesheet" href="<c:url value="/resources/dist/assets/plugins/bootstrap-wysihtml5/css/bootstrap-wysihtml5.css"/>">
       
	          
	
    </head>
<style>
.col {
  max-width:12000px;
  margin: auto;
  
}


</style>

<body>

kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk


<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>



<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Pourcentage des reclamations'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: false
            },
            showInLegend: true
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: 'Resolus',
            y: 61.41,
           
        },   {
            name: 'Non Resolus',
            y: 7.05
        }]
    }]
});

</script>











        <!--[if lt IE 9]>
        <script src="dist/assets/plugins/flot/excanvas.min.js"></script>
        <![endif]-->
        <script src="dist/assets/plugins/jquery-sparkline/jquery.sparkline.js"></script>
        <script src="demo/js/demo.js"></script>



    </body>

<!-- Mirrored from optimisticdesigns.herokuapp.com/veneto/forms-form-layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Feb 2018 08:16:21 GMT -->
</html>

