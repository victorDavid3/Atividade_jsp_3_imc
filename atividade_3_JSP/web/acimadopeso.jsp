<%-- 
    Document   : jspIndex
    Created on : 16/05/2020, 10:09:34
    Author     : victo
--%>


<%@page import="controller.Controller_IMC"%>
<%@page import="model.Model_IMC"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
      
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina JSP 1</title>
        
        <link rel="stylesheet" type="text/css" href="CSS/corIndex.css">
        
     </head>
    
  <body>
      
      <%@include file="cabecalho.jsp" %>
      
      

    <% 
   
   //Captura os valores do formulário   
   String p = (request.getParameter("RePeso"));
  
   String a = (request.getParameter("ReAltura"));
   
   String imc = (request.getParameter("ReIMC"));
   
   String respst = (request.getParameter("ReRespst"));
   
     %>
      
       
   <br>
   <div class="quad">
       
    <br>
    <center>
  
   
   <p>Peso: <%=p%></p>
   <p>Altura: <%=a%> </p>
   <p>IMC: <%=imc%></p>
   <p>Situação: <%=respst%></p>
   
   <br>
   <h2>Perder peso de forma saudável</h2>
   
   <iframe width="90%" height="auto" src="https://www.youtube.com/embed/S5duVnrUC3w" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  
   </center>
   <br>
</div>
   

   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
         
   
    </body>
</html>
