<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="includes/cabecera.jsp" %>
 	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 	
 	
<jsp:useBean id="producto" scope="request"
 class="ProductosTipos.Producto" />
 
 	
	
		
<style>
 	
ul{

margin-left: 370px;
margin-top: 0px;

}

li{
background-color: #EFEFEF;
width:100px;
border:solid #EFEFEF;
-webkit-border-radius: 19px;
-moz-border-radius: 19px;
border-radius: 19px;
color:blue;
text-align:center;
display: inline-block;

}

li a:hover {
	color:red;
}

li a{
text-decoration: none;
}

fieldset{

border: none;}

form{


margin-left: 560px;
margin-top: 50px;}

.errores{

margin-top:20px;
width: 200px;
}

input:FOCUS{

padding:10px;

}


input:hover{

font-weight: bold;
}





</style>

<form action="productoform" method="post">

<ul>
 	
 		
 	</ul>
		<fieldset>

			<label for="id">Id</label> 
			<input id="id" name="id" required="required" value="${producto.id}"
			 
			<c:if test="${param.op=='modificar' or param.op == 'borrar'}">
			
			 
readonly="readonly"
			  </c:if>
>
		</fieldset>
<fieldset>

			<label for="nombre">Nombre</label>
			<input id="nombre" name="nombre" type="text" value="${producto.nombre}">

		</fieldset>
		<fieldset>

			<label for="descripcion">Descripcion</label>
			<input id="descripcion" name="descripcion" type="text" value="${producto.descripcion}">

		</fieldset>
		<fieldset>

			<label for="precio">Precio</label>
			<input id="precio" name="precio" value="${producto.precio}">

		</fieldset>
		<fieldset>

			<input type="submit" value="${fn:toUpperCase(param.op) }">
			<p class="errores">${producto.errores }</p>
			
			<input type="hidden" name="opform" value="${param.op }">

		</fieldset>
	</form>
	
	<c:if test="${param.op == 'borrar'}">
		<script>
			document.forms[0].onsubmit = confirmarBorrado;
		</script>
	</c:if>
	<%@ include file="includes/pie.jsp" %>



