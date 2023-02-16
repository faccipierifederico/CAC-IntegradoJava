<html>
	<head>
		<%@include file="head.jsp" %>
	</head>
	
	<body>
		<main>
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			
			<div class="container">
				<section>
					<h1 class="title">Dar de alta en la lista de productos</h1>
					<!--  JSP -->
					<form method="post"
						action="<%=request.getContextPath()%>/CreateController">
						<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">Nombre</label>
						  <input name="nombre"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Precio</label>
						  <input name="precio" type="number" class="form-control" placeholder="Precio" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Im&aacute;gen</label>
						  <input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">C&oacute;digo</label>
						  <input name="codigo" type="text" class="form-control" placeholder="C&oacute;digo" id="exampleFormControlTextarea1" maxlength="7">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">Categor&iacute;a</label>
							<input name="categoria" type="text" class="form-control" placeholder="Categor&iacute;a" id="exampleFormControlTextarea1" maxlength="50">
						  </div>
						<button class="btn btn-success">
							Dar de alta
						</button>
					</form>
				</section>
			</div>
		</main>
	</body>	
</html>