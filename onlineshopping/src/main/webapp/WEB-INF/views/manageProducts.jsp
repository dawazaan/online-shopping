
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="container">

	<div class="row">
	
	<!-- Display when there is no empty message -->
	<c:if test="${not empty message}">
		
		<div class="col-xs-12">
		
			<div class="alert alert-success alert-dismissible">
			
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				${message}
			
			</div><!-- end of alert -->
		
		</div><!-- end of col-xs-12 -->
	
	</c:if>
	
		<div class="col-md-offset-2 col-md-8">
		
			<div class="panel panel-primary">
			
				<div class="panel-heading">
				
					<h4>Product Management</h4>
				
				</div><!-- panel-heading -->
				
				<div class="panel-body">
				
					<!-- FORM ELEMENTS -->
					<sf:form class="form-horizontal" modelAttribute="product" 
						action="${contextRoot}/manage/products"
						method="POST"
					>
						
						<!-- Enter Product Name -->
						<div class="form-group">
							
							<label class="control-label col-md-4" for="name">Enter Product Name:</label>
							
							<div class="col-md-8">
							
								<sf:input type="text" path="name" id="name" placeholder="Product Name" class="form-control" />
								<sf:errors path="name" cssClass="help-block" element="em" />
								
							
							</div><!-- end of col-md-8 -->
						
						</div><!-- end of form-group -->
						
						<!-- Enter Brand Name -->
						<div class="form-group">
							
							<label class="control-label col-md-4" for="brand">Enter Brand Name:</label>
							
							<div class="col-md-8">
							
								<sf:input type="text" path="brand" id="brand" placeholder="Brand Name" class="form-control" />
								<sf:errors path="brand" cssClass="help-block" element="em" />
								
							
							</div><!-- end of col-md-8 -->
						
						</div><!-- end of form-group -->
						
						<!-- Enter PRODUCT DESCRIPTION -->
						<div class="form-group">
							
							<label class="control-label col-md-4" for="description">Product Description:</label>
							
							<div class="col-md-8">
							
								<sf:textarea path="description" id="description" rows="4" placeholder="Write a description" class="form-control" />
								<sf:errors path="description" cssClass="help-block" element="em" />
								
							
							</div><!-- end of col-md-8 -->
						
						</div><!-- end of form-group -->
						
						<!-- Enter UNIT PRICE -->
						<div class="form-group">
							
							<label class="control-label col-md-4" for="unitPrice">Enter Unit Price:</label>
							
							<div class="col-md-8">
							
								<sf:input type="number" path="unitPrice" id="unitPrice"  placeholder="Unit Price in Nu." class="form-control" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em" />
							
							</div><!-- end of col-md-8 -->
						
						</div><!-- end of form-group -->
						
						<!-- Enter QUANTITY AVAILABLE -->
						<div class="form-group">
							
							<label class="control-label col-md-4" for="quantity">Quantity Available:</label>
							
							<div class="col-md-8">
							
								<sf:input type="number" path="quantity" id="quantity"  placeholder="Quantity Available" class="form-control" />
								
							
							</div><!-- end of col-md-8 -->
						
						</div><!-- end of form-group -->
						
						<!-- SELECT CATEGORY ID-->
						<div class="form-group">
							
							<label class="control-label col-md-4" for="categoryId">Select category:</label>
							
							<div class="col-md-8">
							
								<sf:select class="form-control" id="categoryId" path="categoryId" style="height:100%;"
									items="${categories}"
									itemLabel="name"
									itemValue="id"
								
								/>
									
							
							</div><!-- end of col-md-8 -->
						
						</div><!-- end of form-group -->
						
						<!-- For BUTTON -->
						<div class="form-group">
												
							<div class="col-md-offset-4 col-md-8">
							
								<input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary" />
								
								<!-- Hidden fields for product -->
								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="active" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />
								
							</div><!-- end of col-md-8 -->
						
						</div><!-- end of form-group -->
					
					</sf:form>
				
				</div><!-- end of panel-body -->
			
			</div><!-- end of panel -->
		
		</div><!-- end of col-md-offset-2 col-md-8 -->
	
	
	</div><!-- End of row -->

</div><!-- end of container -->