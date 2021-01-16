<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <script src="https://code.highcharts.com/highcharts.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
           <script src="https://code.highcharts.com/modules/exporting.js"></script>
<%@include file="../StructAd/header.jsp" %>

                    <h4 class="panel-title"> Technicien</h4>

          <div id="container5" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
       
 
<script type="text/javascript">


		$.getJSON("http://localhost:8090/rec/service7", function(result){
			console.log(result);
			

Highcharts.chart('container5', {


  chart: {
    type: 'column'
  },
  title: {
    text: 'Taux de reclamation par technicien'
  },
  subtitle: {
    text: ''
  },
  xAxis: {
    type: 'category'
  },
  yAxis: {
    title: {
      text: 'Nombre des taches effectuées'
    }

  },
  legend: {
    enabled: false
  },
  plotOptions: {
    series: {
      borderWidth: 0,
      dataLabels: {
        enabled: true,
        format: '{point.y:.1f}'
      }
    }
  },

  tooltip: {
    headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
    pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y}</b> taches<br/>'
  },

  "series": [
    {
      "name": "Technicien",
      "colorByPoint": true,
      "data": result
    }
  ],
});

		});


</script>
        
             
        
        
        
        
<%@include file="../Structure/footer.jsp" %>


        