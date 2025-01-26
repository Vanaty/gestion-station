<%-- 
    Document   : insertionMaison
    Created on : 22 janv. 2025, 10:55:58
    Author     : ryrab
--%>
<%@page import="impot.BilanMensuel"%>
<%
    String idMaison=request.getParameter("idMaison");
    String[] months=BilanMensuel.getMonths();
%>
<div class="content-wrapper" style="padding: 5%">
    <div class="row">
        <div class="col-md-6" style="padding: 1%;background-color: white;">
            <h4>Payer impot </h4>
            <form action="impot/payment/insertPayment.jsp" method="post">
                <div class="row" style="margin-bottom: 1%">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <select class="form-select" name="mois" aria-label="Default select example">
                                <option selected>Mois</option>
                                <% for(int i=0;i<months.length;i++){ %>
                                <option value="<%= (i+1) %>"><%= months[i] %></option>
                                <% } %>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <input type="hidden" name="idMaison" value="<%= idMaison %>" class="form-control" placeholder="Largeur" aria-label="Username" aria-describedby="basic-addon1">
                            <input type="number" name="annee" class="form-control" placeholder="Annee" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-9">
                        
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="btn btn-primary"> Valider
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
