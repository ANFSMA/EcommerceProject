<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Andres Sanchez y Sergio Serrano">

<title>SANCHEZ SOPORTES</title>

<!-- Relations-->
<link href="../assets/brand/logo.ico" rel="icon" type="image/x-icon" />
<link href="https://getbootstrap.com/docs/5.1/examples/navbars/" rel="canonical">

<!-- CSS Core-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link href="../css/navigationH.css" rel="stylesheet" />
<link href="../css/navbarH.css" rel="stylesheet" />
<link href="../css/home.css" rel="stylesheet" />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>

<body>
	<main>
		<!-- Navigation-->
		<jsp:include page="../portal/navigation.jsp"/>

		<!-- Header-->
		<jsp:include page="../util/header.jsp"/>

		<!-- Section-->
		<jsp:include page="../portal/products.jsp"/>

		<!-- Footer-->
		<jsp:include page="../util/footer.jsp"/>

	</main>

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="../js/bootstrap.bundle.min.js"></script>
	<script src="../js/portal.js"></script>
	<script src="../js/portal.js"></script>
 	<script type="text/javascript">
 		getCategories(1);
 		getProducts(1);
 	</script>
	

</body>

</html>