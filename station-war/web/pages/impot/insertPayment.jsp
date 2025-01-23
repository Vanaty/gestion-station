<%-- 
    Document   : insertPayment
    Created on : 22 janv. 2025, 20:58:25
    Author     : ryrab
--%>
<%@page import="impot.Payment"%>
<%
    Payment payment=new Payment(request.getParameter("idMaison"),request.getParameter("mois"),request.getParameter("annee"));
    payment.insertToTable();
    response.sendRedirect("../module.jsp?but=impot/liste.jsp&annee=2025");
%>
