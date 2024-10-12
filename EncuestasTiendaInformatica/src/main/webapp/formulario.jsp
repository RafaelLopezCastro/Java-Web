<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Clases.Encuesta,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tabla encuestas</title>
<style>

body{
 background-color: grey;
 color: white;
}

#input{
 border-radius: 5px;
 border-color: black;
}

#boton{
	background-color: black;
	color: white;
	border-radius: 5px;
}

</style>
</head>
<body>
	<h1>Encuesta:</h1>
		<fieldset><legend>Valoración:</legend>
	    <form action="NewEncuestas" method ="post">
			<p>
			<label for="sonido">Sonido: </label>
			<input id ="input" type="number" name="sonido" min = "0" max = "10">
			</p>
			
			<p>
			<label for="calidad">Calidad: </label>
			<input id ="input" type="number" name="calidad" min = "0" max = "10">
			</p>
			
			<p>
			<label for="facilidad">Facilidad de uso: </label>
			<input id ="input" type="number" name="facilidad" min = "0" max = "10">
			</p>
			
			<p>
				<input id="boton" type = "submit" value="Nueva encuesta">
			</p>
		</form>
		</fieldset>
		
		
</body>
</html>