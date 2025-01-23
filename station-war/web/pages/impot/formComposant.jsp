<%-- 
    Document   : insertionMaison
    Created on : 22 janv. 2025, 10:55:58
    Author     : ryrab
--%>
<%@page import="impot.Composant"%>
<%@page import="bean.CGenUtil"%>
<%
    String idMaison=request.getParameter("idMaison");
    Composant[] composants=(Composant[])CGenUtil.rechercher(new Composant(),"select * from composant");
%>
<div class="content-wrapper" style="padding: 5%">
    <div class="row">
        <div class="col-md-6" style="padding: 1%;background-color: white;">
            <h4>Insertion Composant</h4>
            <form action="impot/insertComposant.jsp" method="post">
                <div class="row" style="margin-bottom: 1%">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <select class="form-select" name="mois" aria-label="Default select example">
                                <option selected>Composant</option>
                                <% for(int i=0;i<composants.length;i++){ %>
                                <option value="<%= composants[i].getIdComposant() %>"><%= composants[i].composant %></option>
                                <% } %>
                            </select>
                            <input type="hidden" name="idMaison" value="<%= idMaison %>">
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
