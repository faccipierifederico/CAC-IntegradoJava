<%@page import="ar.com.codoacodo.dto.Producto"%>
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
					<% 
					  	Producto producto = (Producto)request.getAttribute("producto");
				  	%>
					<h1 style="padding-top: 3%; padding-bottom: 3%; text-align:center; color:#1d5270; font-size: 29px; font-family: 'Tahoma';">
						Editar caracater&iacute;sticas del producto con ID = <%=producto.getIdProducto()%>
					</h1>
					<!--  JSP -->
					<form method="POST"
						action="<%=request.getContextPath()%>/api/EditarController">
						<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">Nombre</label>
						  <input name="nombre"
						  	value="<%=producto.getNombre()%>"  
						  	type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Precio</label>
						  <input name="precio"
						  	value="<%=producto.getPrecio()%>" 
						  	type="number" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Categor&iacute;a</label>
							<input name="categoria"
								value="<%=producto.getCategoria()%>"  
								type="text" class="form-control" id="exampleFormControlInput1" placeholder="Categor&iacute;a" maxlength="50">
						  </div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Imagen</label>
						  <input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">C&oacute;digo</label>
						  <input name="codigo"
						  	readonly="readonly"
						  	value="<%=producto.getCodigo()%>" 
						  	type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
						</div>
						<button class="btn btn-success">
							Guardar cambios
						</button>
					</form>
				</section>
			</div>
		</main>
	</body>	
</html>