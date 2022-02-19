<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core</title>
    </head>
    <body>
        <h1>JSTL Core</h1>
        <h1>JSTL Core(Jsp Standard Tag Library)</h1>
        <!-- Manipulacion de variables -->
        <!-- Definimos la variable -->
        <c:set var="nombre" value="Ernesto"/>
        <!--  Desplegamos el valor de la variable -->
        Variable nombre: <c:out value="${nombre}"/>
        <br/>
        <br/>
        Variable con codigo html:
        <c:out value="<h4>hola</h4>" escapeXml="false" />
        <br/>
        <br/>
        <!--  Codigo condicionado  uso de if -->
        <c:set var="bandera" value="true"  />
        <c:if test="${bandera}">
            La bandera es Verdadera
        </c:if>
        <br/>
        <br/>
        <!--  Codigo condicionado  usando switch   c:choose simula switch -->
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion == 1}">
                    <br/>
                    Opcion 1 seleccionada
                </c:when>

                <c:when test="${param.opcion == 2}">
                    <br/>
                    Opcion 2 seleccionada
                </c:when>
                <c:otherwise>
                    <br/>Opcion proporcionada desconocida ${param.opcion}
                </c:otherwise>
            </c:choose>
        </c:if>
        <!--  interacion  de un arreglo -->
        <%
            String nombres[] = {"Claudia", "Pedro", "Juan"};
            request.setAttribute("nombrestodo", nombres);
        %>
        <br/>
        Lista de nombres:
        <br/>
        <ul>
            <c:forEach var="persona" items="${nombrestodo}">
                <li> ${persona}</li>
                </c:forEach>

        </ul>
        <br/>   
        <a href="index.jsp">regresamos al inicio</a>

    </body>
</html>
