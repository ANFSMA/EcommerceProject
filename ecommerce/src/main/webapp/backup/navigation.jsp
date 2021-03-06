<%@ page import="java.util.*" %>

<%
    Locale currentLocale = request.getLocale();


    String language = currentLocale.getLanguage();
    String country = currentLocale.getCountry();



    ResourceBundle messages;

    currentLocale = new Locale(language, country);
    messages = ResourceBundle.getBundle("MessageBundle", currentLocale);

    String usuario = messages.getString("USUARIO");
    String clave = messages.getString("PASSWORD");
    String ingresar = messages.getString("LOGIN");
    String categoria = messages.getString("CATEGORIA");
    String carrito =  messages.getString("CARRITO");
    String micuenta = messages.getString("MICUENTA");
    String inicio = messages.getString("INICIO");
%>

	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="logo" viewBox="0 0 118 94">
            <path fill-rule="evenodd" clip-rule="evenodd"
		d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
        </symbol>
        <symbol id="home" viewBox="0 0 16 16">
            <path
		d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
        </symbol>
        <symbol id="category" viewBox="0 0 16 16">
          	<path
		d="M3 2v4.586l7 7L14.586 9l-7-7H3zM2 2a1 1 0 0 1 1-1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 2 6.586V2z" />
  			<path
		d="M5.5 5a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm0 1a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zM1 7.086a1 1 0 0 0 .293.707L8.75 15.25l-.043.043a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 0 7.586V3a1 1 0 0 1 1-1v5.086z" />
        </symbol>
        <symbol id="cart" viewBox="0 0 16 16">
            <path
		d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
        </symbol>
        <symbol id="people-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
            <path fill-rule="evenodd"
		d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
        </symbol>
        <symbol id="grid" viewBox="0 0 16 16">
            <path
		d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
        </symbol>
    </svg>

<!-- Navigation-->
<nav>
	<div class="px-3 py-2 bg-light text-dark">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="index.jsp"
					class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-dark text-decoration-none">
					<img src="../fotos/logo.svg" width="50" height="50"
					class="display-2 d-inline-block align-top" alt=""> SANCHEZ SOPORTES
				</a>

				<ul
					class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
					<li><a href="index.jsp" class="nav-link text-secondary"> <svg
								class="bi d-block mx-auto mb-1" width="24" height="24">
								<use xlink:href="#home" /></svg> <% out.println(inicio); %>
					</a></li>
					<li class="nav-item dropdown"><a href="#"
						class="nav-link text-dark dropdown-toggle" id="dropdown01"
						data-bs-toggle="dropdown" aria-expanded="false"> <svg
								class="bi d-block mx-auto mb-1" width="24" height="24">
								<use xlink:href="#category" /></svg> <% out.println(categoria); %>
					</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown01">
							<li><a class="dropdown-item" href="#">FIJOS</a></li>
							<li><a class="dropdown-item" href="#">GIRATORIOS</a></li>
							<li><a class="dropdown-item" href="#">ESTACIONES</a></li>
							<li><a class="dropdown-item" href="#">OTROS</a></li>
						</ul></li>
					<li><a href="#" class="nav-link text-dark"> <svg
								class="bi d-block mx-auto mb-1" width="24" height="24">
								<use xlink:href="#cart" /></svg> <% out.println(carrito); %>
					</a></li>
					<li class="nav-item dropdown"><a href="#"
						class="nav-link text-dark dropdown-toggle" id="dropdown01"
						data-bs-toggle="dropdown" aria-expanded="false"> <svg
								class="bi d-block mx-auto mb-1" width="24" height="24">
								<use xlink:href="#people-circle" /></svg> <% out.println(micuenta); %>
					</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown01">
							<li><a class="dropdown-item" href="../user">INICIAR SESION</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
</nav>