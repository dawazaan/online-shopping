<div class="container">

	<div class="row">

		<!-- to display side bar -->
		<div class="col-md-3">

			<%@include file="./shared/sidebar.jsp"%>

		</div>
		<!-- end of col-md-3 -->

		<!-- to display the actual products -->
		<div class="col-md-9">
			<!-- Added breadcrumb component -->
			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>

						</ol>
					</c:if>
					
					<c:if test="${userClickCategoryProducts == true}">
						<ol class="breadcrumb">

							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>

						</ol>
					</c:if>

				</div>
				<!-- end of col-lg-12 -->

			</div>
			<!-- end of row inside col-md-9 -->

		</div>
		<!-- end of col-md-9 -->

	</div>
	<!-- End of row -->

</div>
<!-- End of container -->