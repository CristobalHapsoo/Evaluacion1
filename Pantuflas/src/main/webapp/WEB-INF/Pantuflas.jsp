<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pantuflas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <div>
        <c:if test="${msgError!= null }">
            <c:out value="${msgError }"></c:out>
        </c:if>
        <form:form action="/pantuflas/guardar" method="post" modelAttribute="auto">
            <form:label path="color">Color:</form:label>
            <form:input path="color" />
            <br>
            <form:label path="nCalzado">NCalzado:</form:label>
            <form:input type="number" path="nCalzado" />
            <br>
            <form:label path="marca">Marca:</form:label>
            <form:input path="marca" />
            <br>

            <form:label path="precio">Precio:</form:label>
            <form:input type="number" path="precio" />
            <br>





            <input type="submit" value="Guardar zapato">
        </form:form>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <body>

    </body>

    </html>