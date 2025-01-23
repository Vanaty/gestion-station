<%-- 
    Document   : insertHouse
    Created on : 22 janv. 2025, 11:06:34
    Author     : ryrab
--%>
<%@page import="impot.Maison"%>
<%
    double longueur=Double.parseDouble(request.getParameter("longueur"));
    double largeur=Double.parseDouble(request.getParameter("largeur"));
    double longitude=Double.parseDouble(request.getParameter("longitude"));
    double lattitude=Double.parseDouble(request.getParameter("lattitude"));
    int nbEtage=Integer.parseInt(request.getParameter("nbEtage"));
    Maison maison=new Maison(longueur,largeur,longitude,lattitude,nbEtage);
    //maison.insertToTable();
    maison=maison.insertMaison();
    System.out.println("maison inserer");
    response.sendRedirect("../module.jsp?but=impot/formComposant.jsp&idMaison="+maison.getIdMaison());
%>
