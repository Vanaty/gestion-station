<%-- 
    Document   : insertPayment
    Created on : 22 janv. 2025, 20:58:25
    Author     : ryrab
--%>
<%@page import="impot.maison.*" %>
<%@page import="impot.Arrondissement" %>
<%@page import="utils.Outil" %>
<%@page import="impot.Payment" %>
<%@page import="impot.PaymentDetails" %>

<%
    String idMaison = request.getParameter("idMaison");
    try {
        String idCommune = request.getParameter("idCommune");
        if (idCommune == null) {
            idCommune = (String) request.getSession().getAttribute("idCommune");
        }

        int mois = Integer.parseInt(request.getParameter("mois"));
        int annee = Integer.parseInt(request.getParameter("annee"));
        
        PaymentDetails pay=new PaymentDetails(idCommune,idMaison,mois,annee);
        pay.insererPayementDetails();

        Payment p = new  Payment(idMaison, request.getParameter("mois"), request.getParameter("annee"));
                p.insertToTable();

        

        
    } catch (Exception e) {
        
        response.sendRedirect("../module.jsp?but=impot/formPayment.jsp&idMaison=" + idMaison + "&erreur=" + java.net.URLEncoder.encode(e.getMessage(), "UTF-8"));
        
        e.printStackTrace();
            
    }
    response.sendRedirect("../module.jsp?but=impot/payment/facture-liste-paye.jsp");
%>
