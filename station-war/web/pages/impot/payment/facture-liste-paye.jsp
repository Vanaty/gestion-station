<%-- 
    Document   : vente-liste
    Created on : 25 mars 2024, 09:57:03
    Author     : Angela
--%>

<%@page import="impot.PaymentDetails"%>
<%@page import="utilitaire.Utilitaire"%>
<%@page import="affichage.PageRecherche"%>

<% try{ 
    PaymentDetails bc = new PaymentDetails();
    bc.setNomTable("paymentdetails");
    
    String listeCrt[] = {"id", "idMaison","mois","annee"};
    String listeInt[] = {};
    String libEntete[] = {"id", "idProprietaire","mois","annee","idMaison","surface","prixUnitaire", "hetra"};
    String libEnteteAffiche[] = {"id", "idProprietaire","mois","annee","idMaison","surface","prixUnitaire", "hetra"};
    PageRecherche pr = new PageRecherche(bc, request, listeCrt, listeInt, 3, libEntete, libEntete.length);
    pr.setTitre("Liste des ventes ");
    pr.setUtilisateur((user.UserEJB) session.getValue("u"));
    pr.setLien((String) session.getValue("lien"));
    pr.setApres("impot/payment/facture-liste-paye.jsp");
    String[] colSomme = { "surface", "prixUnitaire"};
    pr.creerObjetPage(libEntete, colSomme);
    pr.getFormu().getChamp("id").setLibelle("ID");
    pr.getFormu().getChamp("idMaison").setLibelle("idMaison");
    
    //Definition des lienTableau et des colonnes de lien
    String lienTableau[] = {pr.getLien() + "?but=impot/payment/formPayment.jsp"};
    String colonneLien[] = {"id"};
    pr.getTableau().setLien(lienTableau);
    pr.getTableau().setColonneLien(colonneLien);
    pr.getTableau().setLibelleAffiche(libEnteteAffiche);
%>
<script>
     function changerDesignation() {
        document.vente.submit();
    }
</script>
<div class="content-wrapper">
    <section class="content-header">
        <h1><%= pr.getTitre() %></h1>
    </section>
    <section class="content">
        <form action="<%=pr.getLien()%>?but=<%= pr.getApres() %>" method="post" name="vente" id="vente">
            <%
                out.println(pr.getFormu().getHtmlEnsemble());
            %>
        </form>
        <%
            out.println(pr.getTableauRecap().getHtml());%>
        <br>
        <%
            out.println(pr.getTableau().getHtml());
            out.println(pr.getBasPage());
        %>
    </section>
</div>
    <%
    }catch(Exception e){

        e.printStackTrace();
    }
%>




