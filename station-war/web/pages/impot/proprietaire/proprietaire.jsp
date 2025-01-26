<%-- 
    Document   : liste
    Created on : 21 janv. 2025, 21:37:55
    Author     : ryrab
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="impot.BilanMensuel"%>
<%
    String idCommune = request.getParameter("idCommune");
    if (idCommune == null) {
        idCommune = (String) request.getSession().getAttribute("idCommune");
    }
    int annee=Integer.parseInt(request.getParameter("annee"));
    String idProp=request.getParameter("idProp");
    BilanMensuel[] bilansPaye=null;
    
        bilansPaye=BilanMensuel.getBilanAnnuelMaisonProprietaire(annee,idCommune,idProp);
    
    DecimalFormat decimalFormat = new DecimalFormat("#");
%>
<div class="content-wrapper" style="padding: 5%">
    <div class="row">
        <div class="col-md-6" style="padding: 1%;background-color: white;">
            <h4>Bilan impot annuel proprietaire</h4>    
            <table class="table table-striped">
                <tr>
                    <th>Mois</th>
                    <th>Montant paye</th>
                    <th>Montant reste a payer</th>
                </tr>
                <% for(BilanMensuel bilan:bilansPaye){ %>
                <tr>
                    <th><%= bilan.getMois() %></th>
                    <th><%= decimalFormat.format(bilan.getMontantPaye()) %></th>
                    <th><%= decimalFormat.format(bilan.getMontantNonPaye()) %></th>
                </tr>
                <%}%>
            </table>
        </div>
    </div>
</div>