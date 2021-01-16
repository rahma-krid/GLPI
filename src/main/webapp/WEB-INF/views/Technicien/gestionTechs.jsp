
<%@include file="../StructAd/header.jsp" %>

<div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">Techniciens </h4>
                  </div>
                            
                             <div class="panel-body">
							 <table class="table table-striped">
                                 <thead>

                        <a   data-toggle="modal" data-target="#modal-default1"class="btn btn-mini btn-flat btn-info">+ Nouveau Technicien</a>
					
		<div class="modal fade" id="modal-default1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
            
    
              
                <div class="panel-body">
							 <form:form role="form"    modelAttribute="Technicien" method="post" action="addTechnicien">
                    
						
							<div class="form-group">
                            <label class="control-label" for="exampleInputText1">Nom </label>
                                <form:input type="text" path="nom" class="form-control" id="exampleInputText1" required="required" oninvalid="setCustomValidity('ce champs est incomplet')"  oninput="setCustomValidity('')"/>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">prenom </label>
                                <form:input type="text" path="prenom" class="form-control" id="exampleInputText1" required="required" oninvalid="setCustomValidity('ce champs est incomplet')"  oninput="setCustomValidity('')"/>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">login </label>
                                <form:input type="text" path="login" class="form-control" id="exampleInputText1" required="required" oninvalid="setCustomValidity('ce champs est incomplet')"  oninput="setCustomValidity('')"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">password </label>
                                <form:input type="text" path="password" class="form-control" id="exampleInputText1" required="required" oninvalid="setCustomValidity('ce champs est incomplet')"  oninput="setCustomValidity('')"/>
                        </div>
                      
                      
                      <div class="form-group">
                            <label class="control-label" for="exampleInputText1">Adresse </label>
                                <form:input type="text" path="adresse" class="form-control" id="exampleInputText1" required="required" oninvalid="setCustomValidity('ce champs est incomplet')"  oninput="setCustomValidity('')" />
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">Email </label>
                                <form:input type="email" path="email" class="form-control" id="exampleInputText1" required="required" placeholder="john@example.com" oninvalid="setCustomValidity('Email invalide SVP SUIVRE CETTE FORMAT Exemple:john@example.com ')"  oninput="setCustomValidity('')" />
                        </div>
						
						<div class="form-group">
                            <label class="control-label" for="12">Télephone </label>
                        
                            <form:input class="form-control"  id="12" path="tel" type="text" pattern="[0-9]{8}"  oninvalid="setCustomValidity('SVP le numero de telephone doit etre composer de 8 chiffres')" 
   oninput="setCustomValidity('')" />
                                
                       
                        </div>
                      
                      
                        
                        <button class="btn btn-primary" type="submit">Ajouter</button>
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
        </div>
        <!-- /.modal -->
        			<c:if test="${not empty msg}">
        		    <div class="alert alert-success">
                        <strong>${msg }</strong>.
                    </div>
                    </c:if>
                  
						
						<!-- affichage liste des climatiseurs  -->
						
                        <tr>
							
								  <th>#</th>
								  <th>Nom</th>
								  <th>prenom</th>
								  <th>login</th>
								  <th>password</th>
								   <th>email</th> 
								   <th>adresse</th>
								  <th>Télephone</th>
								 
								 <th>Action </th>
                        </tr>
                        </thead>
                        <tbody>
                           
							<c:forEach var="E" items="${LstTech }">
							<tr>
                                   <td>${E.id}</td>
			                       <td>${E.nom }</td>
			                       <td>${E.prenom }</td>
			                       <td>${E.login }</td>
			                       <td>${E.password }</td>
			                       <td>${E.email }</td>
			                       <td>${E.adresse }</td>
			           			   <td>${E.tel}</td>
			                     
								   <td> 
								   
								   
								   
								   <div class="btn-group btn-group-sm btn-group-text-normal">
								
                         
                         
                         
                            <a 
						   
                           class="modal-link"
                           role="button"
						   
                           var id="${E.id}"
                           var nom="${E.nom}"
                            var prenom="${E.prenom}"
                        var login="${E.login }"
                        var password="${E.password }"
                           var adresse="${E.adresse }"
                           var email= "${E.email}"
                           var tel="${E.tel}"
                          

                           data-toggle="modal" 
                           data-target="#modal-default"
                            id="open1" ><i class="glyphicon glyphicon-pencil"></i></a> &nbsp
                            
                         
                         
                 
						
						 <a  
						 class="modal-link2"
						  href="#modal-default2" 
						  data-toggle="modal" 
						  rel="${E.id}" 
						  role="button"><i class="glyphicon glyphicon-trash" ></i></a> &nbsp
							 	
							
                            </div>
							</td>
                            </tr>
							</c:forEach>
							
							
                          
                        </tbody>
                    </table>
                </div>
                            
       
                </div>
           
        </div>

        
       

        <script type="text/javascript"  >
        
        
        $(".modal-link").click(function(){
		
        	$("#id").prop('value',$(this).attr('id'));
        	$("#nom").prop('value',$(this).attr('nom'));  
        	$("#prenom").prop('value',$(this).attr('prenom'));    
        	$("#login").prop('value',$(this).attr('login'));    
        	$("#password").prop('value',$(this).attr('password'));    

        	$("#adresse").prop('value',$(this).attr('adresse'));
			$("#email").prop('value',$(this).attr('email'));
			$("#tel").prop('value',$(this).attr('tel'));
			
        	
        
        });
        
      
               
        
     $(".modal-link2").click(function(){
            $("#submit-link").attr('href','deleteTech?idt='+$(this).attr('rel'));
             
         });
		</script>
		
		
		
		
		 <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
              
              
              
                <div class="panel-body">
							 <form:form role="form"    modelAttribute="Technicien" method="post" action="editTech">
                     
              
						
							
						
							<div class="form-group">
                            <label class="control-label" for="exampleInputText1">nom</label>
                                <form:input value="" type="text" path="nom" class="form-control" id="nom" required=""/>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">prenom</label>
                                <form:input value="" type="text" path="prenom" class="form-control" id="prenom" required=""/>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">login</label>
                                <form:input value="" type="text" path="login" class="form-control" id="login" required=""/>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label" for="exampleInputText1">password</label>
                                <form:input value="" type="text" path="password" class="form-control" id="password" required=""/>
                        </div>
						
						
			<div class="form-group">
                            <label class="control-label" for="exampleInputText1">adresse</label>
                                <form:input value="" type="text" path="adresse" class="form-control" id="adresse" required=""/>
                        </div>
						
											
			<div class="form-group">
                            <label class="control-label" for="exampleInputText1">Email</label>
                                <form:input value="" type="text" path="email" class="form-control" id="email" required=""/>
                        </div>
						
											
			<div class="form-group">
                            <label class="control-label" for="exampleInputText1">Telephone</label>
                                <form:input value="" type="text" path="tel" class="form-control" id="tel" required=""/>
                        </div>
						
						
						<form:input value="" type="hidden" path="id" class="form-control" id="id" required=""/>
                        
                      
                        
                        <button class="btn btn-primary" type="submit">Modifier</button>
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
        </div>
		
		
		
		
		
       
    
                                              <!-- modal de suppression d'un climatiseur -->
    		
        <div class="modal fade" id="modal-default2">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Supprimer un technicien</h4>
              </div>
              <div class="modal-body">
              
              Voulez vous vraiment supprimer ce technicien?
              
                <div class="panel-body">
							
                </div>
             
              
              </div>
              <div class="modal-footer">
                <a href="#" id="submit-link" ><button class="btn btn-default">Supprimer</button></a>
                <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    
    
    
  
            
        <%@include file="../Structure/footer.jsp" %>		