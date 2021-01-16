<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>


<%@include file="../StructAd/header.jsp"%>
 
 
 
 <div id="container5" style="min-width: 700px; height: 400px; margin: 0 auto"></div>

<table id="datatable1" class="table table-striped">
  <thead>
     <tr>
      <th></th>
      <th>EN ATTENTE</th>
      <th>RESOLUS </th>
      <th>NON RESOLUS </th>
  
    </tr>
  </thead>
  <tbody>


    <tr>
      <th></th>
      <td>${rec1}</td>
      <td>${rec2}</td>
      <td>${rec3}</td>
      
    </tr>
  </tbody>
</table>


<script type="text/javascript">

Highcharts.chart('container5', {
		  data: {
		    table: 'datatable1'
		  },
		  chart: {
		    type: 'column'
		  },
		  title: {
		    text: 'TAUX DES RECLAMATIONS PAR JOUR '
		  },
		  yAxis: {
		    allowDecimals: false,
		    title: {
		      text: 'Units'
		    }
		  },
		  tooltip: {
		    formatter: function () {
		      return '<b>' + this.series.name + '<b></b><br/>' + '</br>'
		        this.point.y + ' ' + this.point.name.toLowerCase();
		    }
		  }
		});
</script>

<%@include file="../Structure/footer.jsp"%>
