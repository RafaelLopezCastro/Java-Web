<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Clases.Encuesta,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todas las encuestas</title>
<style>

	body{
		background-color: grey;
	}
	
	p{
		background-color: white;
		border-color: black;
		border-width: 5px;
		border-radius: 5px;
		padding: 5px;
	}

</style>
</head>
<body>

	<h1>Todas las encuestas de baja puntuación:</h1>

	
	<%
		var encuestasString = "";
		ArrayList<Encuesta> encuestas = (ArrayList<Encuesta>) application.getAttribute("encuestas");
	    for (Encuesta encuestaArry : encuestas){
	    	if(encuestaArry.calcularMedia() < 5 ){
	        	encuestasString = encuestaArry.toString();
	    	
	
	    
	    
	    
	%>
		<p id = linea ><%= encuestasString %></p>
	<%
	    	}
	    }
	%>

</body>
</html>