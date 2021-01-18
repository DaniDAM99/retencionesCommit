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
        
        <jsp:useBean id="retencion" class="clases.Retencion"/>
        
        <%
            float salarioBruto = Float.parseFloat(request.getParameter("salario"));
        %>
        
        <jsp:setProperty name="retencion" property="salarioBruto" value="<%=salarioBruto%>"/>
        
        <h4>Salario bruto: <jsp:getProperty name="retencion" property="salarioBruto"/></h4>
        <h4>Retencion: <jsp:getProperty name="retencion" property="retencion"/></h4>
        <h4>Salario neto: <jsp:getProperty name="retencion" property="salarioNeto"/></h4>
    </body>
</html>
