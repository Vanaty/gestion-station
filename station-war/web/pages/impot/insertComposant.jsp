<%-- 
    Document   : insertHouse
    Created on : 22 janv. 2025, 11:06:34
    Author     : ryrab
--%>
<%@page import="impot.Maison"%>
<%
    String idMaison=request.getParameter("idMaison");
    String idComposant=request.getParameter("idComposant");
    Maison.insertComposant(idMaison,idComposant);
    response.sendRedirect("../module.jsp?but=impot/formComposant.jsp&idMaison="+idMaison);
%>
