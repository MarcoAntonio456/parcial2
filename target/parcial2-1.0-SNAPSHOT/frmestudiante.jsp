<%@page import="com.emergentes.modelo.Estudiante"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    Estudiante estudiante = (Estudiante) request.getAttribute("estudiante");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><c:if test="${estudiante.id == 0}">Nuevo</c:if>
            <c:if test="${estudiante.id != 0}">Editar</c:if>
                estudiante
            </h1>
            <form action="Inicio" method="post">
                <input type="hidden" name="id" value="${estudiante.id}" />
            <table>
                <tr>
                    <td>Nombres:</td>
                    <td><input type="text" name="nombres" value="${estudiante.nombres}"/></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="apellidos" value="${estudiante.apellidos}"/></td>
                </tr>
                <tr>
                    <td>Seminario:</td>
                    <td><input type="text" name="seminario" value="${estudiante.seminario}"/></td>
                </tr>
                <tr>
                    <td>confirmado:</td>
                    <c:if test="${estudiante.confirmado == true}">
                        <td><input type="checkbox" name="confirmado" value="${estudiante.confirmado}" checked=""/></td>
                        </c:if>
                    <c:if test="${estudiante.confirmado == false}">
                        <td><input type="checkbox" name="confirmado" value="${estudiante.confirmado}"/></td>
                        </c:if>

                </tr>
                <tr>
                    <td>Fecha inscripcion:</td>
                    <td><input type="date" name="fecha_inscripcion" value="${estudiante.fecha_inscripcion}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
