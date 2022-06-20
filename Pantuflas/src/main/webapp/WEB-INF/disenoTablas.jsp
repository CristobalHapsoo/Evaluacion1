<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Pantuflas</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            </head>

            <body>
                <div class="container">

                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Color</th>
                                <th scope="col">nCalzado</th>
                                <th scope="col">Marca</th>
                                <th scope="col">Precio</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="Pantuflas" items="${pantuflasCapturados}">
                                <tr>
                                    <th scope="row">${pantuflas.id}</th>
                                    <td>${pantuflas.color}</td>
                                    <td>${pantuflas.nCalzado}</td>
                                    <td>${pantuflas.Precio</td>
                                    <td>${pantuflas.Acciones}</td>
                                    <td><a class="btn btn-warning" href="pnatuflas/editar/${pantuflas.id}" role="button">Editar</a></td>
                                    <td><a class="btn btn-danger" href="eliminar/${pantuflas.id}" role="button">Eliminar</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>