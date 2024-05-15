<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    List<Estudiante> estudiantes = (List<Estudiante>)request.getAttribute("estudiantes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="border-style: solid; padding-left: 15px;">
            <h5>PRIMER PARCIAL TEM-742</h5>
            <p>Nombre: Marco Antonio Huayhua Huanaco <br>Carnet: 12992567</p>
        </div>
        <h1>Registro Dia del Internet</h1>

        <p><a href="Inicio?action=add">Nuevo</a></p>

        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha inscripcion</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${estudiantes}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombres}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.seminario}</td>
                        <c:if test="${item.confirmado == true}">
                            <td><input type="checkbox" checked="" disabled=""></td>
                        </c:if>
                        <c:if test="${item.confirmado == false}">
                            <td><input type="checkbox" disabled=""></td>
                        </c:if>
                        <td>${item.fecha_inscripcion}</td>
                        <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                        <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro'))">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
