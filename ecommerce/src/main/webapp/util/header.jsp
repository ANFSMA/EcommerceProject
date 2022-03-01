<%@ page import="java.util.*" %>

<%
    Locale currentLocale = request.getLocale();


    String language = currentLocale.getLanguage();
    String country = currentLocale.getCountry();


    ResourceBundle messages;

    currentLocale = new Locale(language, country);
    messages = ResourceBundle.getBundle("MessageBundle", currentLocale);
    String soporta = messages.getString("SOPORTA");


%>

<header class="bg-dark py-2">
	<div class="container px-4 px-lg-5 my-5">
		<div class="d-flex flex-wrap align-items-center justify-content-center">
			<a href="index.jsp"
				class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-dark text-decoration-none">
				<img src="../fotos/logo.png" width="200" height="200" class="d-inline-block align-top" alt="">
			</a>
			<div class="text-center text-white">
				<h1 class="display-1 fw-bolder">SANCHEZ SOPORTES</h1>
				<p class="display-5 lead fw-normal text-white-50 mb-0"><% out.println(soporta); %></p>
			</div>
		</div>
	</div>
</header>
