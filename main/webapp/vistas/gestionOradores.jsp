<%@page import="dao.OradoresDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Orador"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gestión de Oradores</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <h2>Gestión de Oradores</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tema</th>
                        <th>Fecha Alta</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        OradoresDAO oradoresDAO = new OradoresDAO();
                        List<Orador> oradores = oradoresDAO.obtenerTodos();

                        if (oradores != null && !oradores.isEmpty()) {
                            for (Orador orador : oradores) {
                    %>
                    <tr>
                        <td><%= orador.getIdOrador()%></td>
                        <td><%= orador.getNombre()%></td>
                        <td><%= orador.getApellido()%></td>
                        <td><%= orador.getTema()%></td>
                        <td><%= orador.getFechaAlta()%></td>
                        <td>
                            <div class="d-flex">
                                <!-- Formulario para actualizar -->
                                <form action="GestionOradorServlet" method="post" class="mr-2">
                                    <input type="hidden" name="accion" value="actualizar">
                                    <input type="hidden" name="id" value="<%= orador.getIdOrador()%>">
                                    <button type="submit" class="btn btn-warning btn-block">Actualizar</button>
                                </form>

                                <!-- Formulario para eliminar -->
                                <form action="GestionOradorServlet" method="post">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <input type="hidden" name="id" value="<%= orador.getIdOrador()%>">
                                   
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-danger btn-block" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        Eliminar
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                 ¿Eliminar Orador?
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                    <button type="submit" class="btn btn-primary">Eliminar</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="6">No hay oradores registrados.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <a href="../" class="btn btn-success">Volver</a>   
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>

