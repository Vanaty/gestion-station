<%@page import="impot.maison.Maison"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="impot.BilanMensuel"%>
<%@page import="impot.maison.Proprietaire"%>
<%
    String idCommune = request.getParameter("idCommune");
    if (idCommune == null) {
        idCommune = (String) request.getSession().getAttribute("idCommune");
    }
    int annee = Integer.parseInt(request.getParameter("annee"));
    String idProp = request.getParameter("idProp");
    
    BilanMensuel[] bilansPaye = BilanMensuel.getBilanAnnuelMaisonProprietaire(annee, idCommune, idProp);
    DecimalFormat decimalFormat = new DecimalFormat("#");

    Proprietaire proprietaire = new Proprietaire();
    proprietaire.setId(idProp);
    Maison[] maisons = proprietaire.getMaison(); // Récupération des maisons
%>

<div class="content-wrapper" style="padding: 5%">
    <div class="row">
        <div class="col-md-6" style="padding: 1%; background-color: white;">
            <h4>Bilan impôt annuel du propriétaire</h4>    
            <table class="table table-striped">
                <tr>
                    <th>Mois</th>
                    <th>Montant payé</th>
                    <th>Montant restant à payer</th>
                </tr>
                <% for(BilanMensuel bilan : bilansPaye) { %>
                <tr>
                    <td><%= bilan.getMois() %></td>
                    <td><%= decimalFormat.format(bilan.getMontantPaye()) %></td>
                    <td><%= decimalFormat.format(bilan.getMontantNonPaye()) %></td>
                </tr>
                <% } %>
            </table>
        </div>

        <!-- Section affichage des maisons du propriétaire -->
        <div class="col-md-6" style="padding: 1%; background-color: white;">
            <h4>Maisons du propriétaire</h4>    
            <table class="table table-bordered">
                <tr>
                    <th>ID Maison</th>

                </tr>
                <% 
                    if (maisons != null && maisons.length > 0) { 
                        for (Maison maison : maisons) { 
                %>
                <tr>
                    <td><a href="module.jsp?but=impot/maisonDetails.jsp&idMaison=<%= maison.getIdMaison() %>&annee=2025"><%= maison.getIdMaison() %></a> </td>


                </tr>
                <% 
                        } 
                    } else { 
                %>
                <tr>
                    <td colspan="4" class="text-center">Aucune maison trouvée</td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
</div>
