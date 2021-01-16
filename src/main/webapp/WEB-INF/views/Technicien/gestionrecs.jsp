<%@include file="../Structure/header.jsp"%>
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
					
						<th>Emplacement</th>
						<th>Etat</th>
				     
				        
				        <th>gravite</th>
				        <th>Retard</th>
				       
						<th>Prise en charge</th>
						
						
						
					</tr>
				</thead>
				<tbody>

					
					<c:forEach var="E" items="${RECS}">
							<tr>
							       <td>${E.id_rec}</td>
                                   <td>${E.titre}</td>
			                       <td>${E.date_rec }</td>
			                       <td>${E.emplacement}</td>
			                       
			                      
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
			                      		  
			                      		  
			                      		   <td> 
								<div class="btn-group btn-group-sm btn-group-text-normal">
						                         
                         
 
						
						
					
						   
						   
						   
						   

                         
						          
          <a    class="modal-link"
                role="button"
          
						   
                           var obser="${E.observation}"
                           var desc="${E.description}"
                          
                           var code="${E.id_rec}"
                            var date="${E.date_exec}"
                           var etat="${E.etat}"
                           var nature="${E.nature}"
                           var tech="${E.technicien.id}"
                           
                           
          
          data-toggle="modal"
           data-target="#modal-default1"
            id="open1">
            <i class="glyphicon glyphicon-pencil"></i></a>&nbsp
                     
    


 <div class="modal fade" id="modal-default1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="fa fa-building-o" style="font-size:15px"></i>&nbsp&nbsp Modifier reclamation</h4>
              </div>
              <div class="modal-body">
              
                     <div class="panel-body">
                      <form:form role="form"    modelAttribute="REC" method="post" action="modifrec">
                   
                    <div class="form-group">
                            <label class="control-label" for="exampleInputMessage6">Description : </label>
                            <form:textarea rows="5"  id="desc" name="description" path="description" value="" class="form-control" disabled="disabled"></form:textarea>
                        </div>
                        
                         <div class="form-group">
                            <label class="control-label" for="exampleInputMessage6">Observation : </label>
                            <form:textarea rows="5"  id="obser1" name="observation" path="observation" value="" class="form-control"></form:textarea>
                        </div>
                        
                        
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">Nature</label>
                                 <form:select class="form-control" path="nature" id="nature1">
                            		<option value="materielle">Materiélle</option> 
                            		<option value="commerciale">Commerciale </option> 
                            		<option value="systeme">Systéme </option> 
                            		
                        </form:select>
                        </div>
                        
                      
                       <div class="form-group">
                            <label class="control-label" for="exampleInputText1">Etat</label>
                                 <form:select class="form-control" path="etat" id="etat1">
                            		<option value="Resolu">Resolu</option> 
                            		<option value="Nonresolu">Non Resolu </option> 
                        </form:select>
                        </div>
                        
                 
                      
                       
       <form:input type="hidden" path="id_rec"  id="id" />
       <form:input type="hidden" path="technicien.id"  id="tech" />
       
                    
                    
                      <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-8">
                                <button type="submit" class="btn btn-primary">Valider</button>
                            </div>
                        </div>
                        
                 </form:form>
                          
                        
                    </div>
                    
                </div>
             <div class="panel-footer">
                        
                    </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        
        
        
						
						
							 	
							
                            
                            </div>
							</td>
							
							
							
							
                            </tr>
							</c:forEach>



				</tbody>
			</table>

			
        <script type="text/javascript"  >
        
        
        $(".modal-link").click(function(){
		
        	$("#id").prop('value',$(this).attr('code'));
        	$("#obser1").prop('value',$(this).attr('obser'));
        	$("#desc").prop('value',$(this).attr('desc'));
        	
        	document.getElementById("desc").disabled = true;

        	
        	document.getElementById("nature1").value = $(this).attr('nature');

        	document.getElementById("etat1").value = $(this).attr('etat');
        	document.getElementById("date").value = $(this).attr('date');
        	
        	document.getElementById("tech").value = $(this).attr('tech');    	
        });
        
      
        
  
		</script>


	</div>
</div>
        <%@include file="../Structure/footer.jsp" %>		