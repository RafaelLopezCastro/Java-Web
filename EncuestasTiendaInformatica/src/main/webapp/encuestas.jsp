<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Encuestas sobre televisión</title>
<style type="text/css">
body{
	 background-color: grey;
}
ul {
  background: lightgray;
  padding: 20px;
   border-radius: 5px;
}

ul li {
  background: grey;
  color: black;
  margin: 5px;
  border-radius: 5px;
 
}

a:link {
  text-decoration: none;
  color: white;
  padding: 5px;
}

a:visited {
  text-decoration: none;
  color: white;
  padding: 5px;
}

</style>
 <link rel="stylesheet" href="style.css">
</head>
<body>

	 <h1>Encuestas sobre Modelo de Televisión</h1>
	
	 <ul>
	    <!-- Enlace para añadir nueva encuesta -->
	    <li><a href="formulario.jsp">Añadir nueva encuesta</a></li>
	
	    <!-- Enlace para mostrar todas las encuestas -->
	    <li><a href="tabla.jsp">Mostrar encuestas</a></li>
	    
	        <!-- Enlace para mostrar la media de las puntuaciones por aspecto -->
	    <li><a href="mediaCat.jsp">Mostrar media de puntuaciones por aspecto</a></li>
	    
	    <!-- Enlace para listar encuestas con baja puntuación -->
	    <li><a href="allEncuestas.jsp">Mostrar todas las encuestas con baja puntuación</a></li>
    
    </ul>
</body>
</html>