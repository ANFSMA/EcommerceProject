<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    
	<head>
	
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<meta name="description" content="">
    	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    	<meta name="generator" content="Hugo 0.88.1">
    	<title>CATEGORY ADMIN</title>
    	
		<!-- Relations-->
    	<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">
    	
    	<!-- Bootstrap CSS -->
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>
		<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet"/>		 
		<link href="https://cdn.datatables.net/select/1.3.0/css/select.dataTables.min.css" rel="stylesheet"/>
			
    	<style>
      		.bd-placeholder-img {
        		font-size: 1.125rem;
        		text-anchor: middle;
        		-webkit-user-select: none;
        		-moz-user-select: none;
        		user-select: none;
      		}

      		@media (min-width: 768px) {
        	.bd-placeholder-img-lg {
          		font-size: 3.5rem;
        		}
      		}
    	</style>

    	<!-- Custom styles for this template -->
    	<link href="../css/navigationA.css" rel="stylesheet">

  	</head>

	<body>
	
		<main>

    	<!-- Navigation-->
   		<jsp:include page="navigation.jsp"/>
		
		<!-- Page Content -->
		<div class="container">
			<h3>GESTION DE CATEGORIAS</h3>
			<jsp:include page="../util/menu.jsp" />
			<jsp:include page="table.jsp" />
			<jsp:include page="form.jsp" />
			<br /> <br />	
		</div>
		
		</main>
		<!-- /.container -->
		<!-- Footer -->
		<!-- jsp:include page="../portal/footer.jsp" / -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->			
		
        <!-- Header-->
		
        <!-- Section-->
        
        <!-- Footer-->
    	
        <!-- Bootstrap JavaScript-->
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>        
        <script src="../js/bootstrap.bundle.min.js"></script>
        <script src="../js/navigation.js"></script>
        
        <!-- DataTables JavaScript-->        
        
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
		<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
		<script src="https://cdn.datatables.net/select/1.3.0/js/dataTables.select.min.js"></script>

		<!-- Category JavaScript-->  
		<script src="../js/category.js"></script>
    
    </body>
            
</html>