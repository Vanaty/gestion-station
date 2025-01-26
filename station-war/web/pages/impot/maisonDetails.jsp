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
    String idMaison=request.getParameter("idMaison");
    BilanMensuel[] bilansPaye=null;
    
        bilansPaye=BilanMensuel.getBilanAnnuelMaison(annee,idCommune,idMaison);
    
    DecimalFormat decimalFormat = new DecimalFormat("#");
%>
<div class="content-wrapper" style="padding: 5%">
    <div class="row" style="border: solid 1px;padding: 1%;width:50%;background-color: white;">
        <div class="row">
            <form action="module.jsp" method="get">
                <div class="col-md-6">
                    <div class="input-group mb-3">
                        <input type="number" name="annee" value="<%= annee %>" class="form-control" placeholder="Annee" aria-label="Username" aria-describedby="basic-addon1">
                        <input type="hidden" value="impot/maisonDetails.jsp" name="but" class="form-control" placeholder="Annee" aria-label="Username" aria-describedby="basic-addon1">
                        <input type="hidden" value="<%= idMaison %>" name="idMaison">

                    </div>
                </div>
                <div>                    
                    <button type="submit" class="btn btn-primary">
                        <i class="fa fa-search"></i> Valider
                    </button>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6" style="padding: 1%;background-color: white;">
            <h4>Bilan impot annuel</h4>    
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