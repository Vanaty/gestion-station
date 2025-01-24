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
        
        Arrondissement arr = new Arrondissement();
        arr.setIdCommune(idCommune);
        Maison [] maisons = arr.getMaisons();
        for (int i = 0; i < maisons.length; i++) {
            if(maisons[i].getIdMaison().compareToIgnoreCase(idMaison)==0){
                if(maisons[i].getPayment(annee,mois).length > 0){
                    throw new Exception("efa paye");
                }
                maisons [i].setPrixunitaire(idCommune,mois,annee);
                maisons [i].setComposant(mois,annee);
                maisons [i].setSurface(mois,annee);
                Payment p = new  Payment(idMaison, request.getParameter("mois"), request.getParameter("annee"));
                p.insertToTable();
                PaymentDetails pay = new PaymentDetails();
                pay.setIdProprietaire(maisons[i].getIdProp());
                pay.setSurface(maisons[i].getSurface());
                pay.setMois(mois);
                pay.setIdMaison(maisons[i].getIdMaison());
                pay.setAnnee(annee);
                pay.setPrixUnitaire(maisons[i].getPrixunitaire().getValeur());
                pay.setHetra(maisons[i].calculerMontantAPayer());
                pay.insertToTable();
            }
        }

        
    } catch (Exception e) {
        
        response.sendRedirect("../module.jsp?but=impot/formPayment.jsp&idMaison=" + idMaison + "&erreur=" + java.net.URLEncoder.encode(e.getMessage(), "UTF-8"));
        
        e.printStackTrace();
            
    }
    response.sendRedirect("../module.jsp?but=impot/facture-liste.jsp");
%>
