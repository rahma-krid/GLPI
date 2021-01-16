<%@include file="../StructAd/header.jsp"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<div class="panel panel-default">
	<div class="panel-heading">
		<h4 class="panel-title">Liste des Reclamations a faire</h4>
		</br> </br> 
		
		<div class="panel-options">
			<a href="#" data-rel="collapse"><i class="fa fa-fw fa-minus"></i></a>
			<a href="#" data-rel="reload"><i class="fa fa-fw fa-refresh"></i></a>
			<a href="#" data-rel="close"><i class="fa fa-fw fa-times"></i></a>
		</div>

	</div>



	<div class="panel-body">
		
			<table class="table table-striped">
				<thead>

					<tr>

						<th></th>
						<th>Titre</th>
						
						<th>date_Rec</th>
					
						
						<th>Etat</th>
				       
				        
				        <th>gravite</th>
				        <th>Retard</th>
				       
						
						
						
						
					</tr>
				</thead>
				<tbody>

					
					<c:forEach var="E" items="${RECS}">
							<tr>
							       <td>${E.id_rec}</td>
                                   <td>${E.titre}</td>
			                       <td>${E.date_rec }</td>
			                      
			                       <c:if test="${E.etat =='Nonresolu'}">
			                        <td style="color:red">${E.etat }</td>
			                        </c:if>
			                        <c:if test="${E.etat =='en attente'}">
			                        <td>${E.etat }</td>
			                        </c:if>
			                        
			                        
			                       <td>${E.gravite }</td>
			                       <c:if test="${E.retard ==0}">
			                       <td>--</td>
			                      		  </c:if>
			                      		  <c:if test="${E.retard !=0}">
			                      <td style="color:red">${E.retard }</td>
			                      		  </c:if>
			                
							
							
                            </tr>
							</c:forEach>



				</tbody>
			</table>

			
        


	</div>
</div>
        <%@include file="../Structure/footer.jsp" %>		