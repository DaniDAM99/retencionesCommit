<%-- 
    Document   : retencion
    Created on : 18-ene-2021, 20:12:10
    Author     : Cristian
--%>

<%@page import="clases.Retencion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cálculo retenciones</h1>
        
        <%
            String salarioBruto = request.getParameter("salario");
            Retencion re = new Retencion(salarioBruto);
        %>
        
        <h4>Salario bruto: <%= re.getSalarioBruto() %></h4>
        <h4>Retencion: <%= re.getRetencion()%></h4>
        <h4>Salario neto: <%= re.getSalarioNeto()%></h4>
    </body>
</html>
