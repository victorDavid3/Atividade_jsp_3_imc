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
   
   
 <h2>O que é peso saudável?</h2>,
 </center>
   <div id="textos">
 <p>
  O conceito de peso saudável é mais interessante porque é aquele que você conquista com equilíbrio, gradativamente, não de forma repentina, assustando o corpo. Peso saudável é aquele que você consegue manter sem grandes sacrifícios e constantes oscilações na balança, com uma vida tranquila e comendo sem neura.
 <br><br>
 Peso saudável se conquista a partir da mudança de hábitos, de uma reconstrução da relação com a comida. Porque dessa forma não tem sofrimento, e sim, uma reavaliação de valores e comportamentos ligados à comida – ou seja, é algo para a vida inteira.
<br><br>
 Mas aí você me pergunta: sim, mas qual é o meu peso saudável então? Entendo que as pessoas precisam de parâmetros para poder avaliar a própria saúde. E o peso é um referencial importante nesse sentido, mas ele não é o único.
<br><br>
 Por isso, para manter um peso saudável é interessante ter os exames em dia, manter o corpo ativo e se alimentar de forma equilibrada, com uma variedade de alimentos – priorizando os in natura, deixando entrar com menor frequência os ultraprocessados.
<br><br>
 Quando se fala em padrão, o IMC (Índice de Massa Corporal) ainda é a referência mais utilizada pelos especialistas. O cálculo é simples: IMC = P(peso em quilos)/A² (altura x altura, em metros). Exemplo: para uma mulher de 1,60 m que pesa 63 kg, o IMC é de = 63 /(1,6×1,6) = 24,6 kg/m².
<br><br>
 Se o resultado estiver entre 18,5 e 25 o peso está “adequado”, segundo o Ministério da Saúde. Claro que manter-se dentro de um peso saudável é importante porque diminui as chances de se desenvolver doenças ligadas à obesidade, como diabetes do tipo 2, hipertensão e colesterol alto.
<br><br>
 Mas, repito: o peso é só um dos parâmetros. É preciso manter o check-up em ordem para poder avaliar se outros fatores importantes estão indo bem. Consulte seu médico ou seu nutricionista! E se você quer saber mais sobre peso saudável, não deixe de ver este artigo.
</p>
   </div>
  
   <br>
</div>
   

   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
         
   
    </body>
</html>
