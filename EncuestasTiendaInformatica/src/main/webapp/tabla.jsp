<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Clases.Encuesta,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todas las reseñas</title>
<link rel="stylesheet" href="style.css">
<style>

	body{
		background-color: grey;
	}
	
	table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
	
	

</style>
</head>
<body>
	<h1>Listado de Encuestas</h1>
   			 <table>
        <tr>
            <th>Sonido</th>
            <th>Imagen</th>
            <th>Facilidad de Uso</th>
            <th>Media</th>
        </tr>
		
		<%
           double mSonido = 0, mImagen = 0, mFacilidad = 0;
		 
			ArrayList<Encuesta> encuestas = (ArrayList<Encuesta>) application.getAttribute("encuestas");
			for (Encuesta encuestaArry : encuestas){
			     mSonido += encuestaArry.getSonido();
                 mImagen += encuestaArry.getImagen();
                 mFacilidad += encuestaArry.getFacilidad();
			
		
		%>
		  <tr>
            <td><%= encuestaArry.getSonido() %></td>
            <td><%= encuestaArry.getImagen() %></td>
            <td><%= encuestaArry.getFacilidad() %></td>
            <td><%= String.format("%.2f", encuestaArry.calcularMedia()) %></td>
        </tr>
		<%
			}
		%>
			
		
            </table>
            	
</body>
</html>