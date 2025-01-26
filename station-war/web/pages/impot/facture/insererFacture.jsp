<%-- 
    Document   : insertPayment
    Created on : 22 janv. 2025, 20:58:25
    Author     : ryrab
--%>
<%@page import="impot.maison.*" %>
<%@page import="impot.Arrondissement" %>
<%@page import="utils.Outil" %>
<%@page import="impot.Payment" %>
<%@page import="impot.FactureMaison" %>

<%
    String idMaison = request.getParameter("idMaison");
    try {
        String idCommune = request.getParameter("idCommune");
        if (idCommune == null) {
            idCommune = (String) request.getSession().getAttribute("idCommune");
        }

        int mois = Integer.parseInt(request.getParameter("mois"));
        int annee = Integer.parseInt(request.getParameter("annee"));
        
        
        FactureMaison.insererAllFactureMaison(idCommune,mois,annee);
        

        
    } catch (Exception e) {
        
        response.sendRedirect("../module.jsp?but=impot/facture/formFacture.jsp/&erreur=" + java.net.URLEncoder.encode(e.getMessage(), "UTF-8"));
        
        e.printStackTrace();
            
    }
    response.sendRedirect("../module.jsp?but=impot/facture/facture.jsp");
%>
