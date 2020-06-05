/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller.servlet;

import controller.Controller_IMC;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Model_IMC;

/**
 *
 * @author victo
 */
@WebServlet(name = "controlerServlet", urlPatterns = {"/controlerServlet"})

public class controlerServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            
        
        Model_IMC d = new Model_IMC();
       
        String RePeso = req.getParameter("RePeso");
        d.setPeso(Float.parseFloat(RePeso));
        
        String ReAltura = req.getParameter("ReAltura");
         d.setAltura(Float.parseFloat(ReAltura));
    
        Controller_IMC C_IMC = new Controller_IMC();
   
        float retCalcIMC = C_IMC.calculo(d.getPeso(),d.getAltura());

        String retCompara = C_IMC.comparacaodeIMC(retCalcIMC);
        
       
        
        if(retCalcIMC<18.5){
              resp.sendRedirect("abaixodopeso.jsp?RePeso="+ RePeso + "&ReAltura="+ReAltura +"&ReIMC="+retCalcIMC+"&ReRespst="+retCompara);           

         } else if(retCalcIMC<25){
              resp.sendRedirect("Saudavel.jsp?RePeso="+ RePeso + "&ReAltura="+ReAltura +"&ReIMC="+retCalcIMC+"&ReRespst="+retCompara);           
         }else{
              resp.sendRedirect("acimadopeso.jsp?RePeso="+ RePeso + "&ReAltura="+ReAltura +"&ReIMC="+retCalcIMC+"&ReRespst="+retCompara);           

        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Model_IMC d = new Model_IMC();
        
        String RePeso = req.getParameter("RePeso");
        d.setPeso(Float.parseFloat(RePeso));
        
        String ReAltura = req.getParameter("ReAltura");
         d.setAltura(Float.parseFloat(ReAltura));
    
        Controller_IMC C_IMC = new Controller_IMC();
   
        float retCalcIMC = C_IMC.calculo(d.getPeso(),d.getAltura());

        String retCompara = C_IMC.comparacaodeIMC(retCalcIMC);
        
        if(retCalcIMC<18.5){
              resp.sendRedirect("abaixodopeso.jsp?RePeso="+ RePeso + "&ReAltura="+ReAltura +"&ReIMC="+retCalcIMC+"&ReRespst="+retCompara);           

         } else if(retCalcIMC<25){
              resp.sendRedirect("Saudavel.jsp?RePeso="+ RePeso + "&ReAltura="+ReAltura +"&ReIMC="+retCalcIMC+"&ReRespst="+retCompara);           
         }else{
              resp.sendRedirect("acimadopeso.jsp?RePeso="+ RePeso + "&ReAltura="+ReAltura +"&ReIMC="+retCalcIMC+"&ReRespst="+retCompara);           

        }
       
      
    }
    
    
}
