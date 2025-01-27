<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.Locale"%>
<%@page import="java.util.ResourceBundle"%>
<%@page import="javax.ejb.ConcurrentAccessTimeoutException"%>
<%@page import="menu.MenuDynamique"%>
<%@page import="java.util.ArrayList"%>
<%@page import="utilisateur.UserMenu"%>
<%@page import="bean.CGenUtil"%>
<%@page import="mg.cnaps.utilisateur.CNAPSUser"%>
<%@page import="user.UserEJB"%>

    
<%
     HttpSession sess = request.getSession();
  String lang = "fr"; 
  if(sess.getAttribute("lang")!=null){
      lang = String.valueOf(sess.getAttribute("lang"));
  }
  ResourceBundle RB = ResourceBundle.getBundle("text", new Locale(lang));
  
    try{

    if(request.getParameter("currentMenu")!=null && request.getParameter("currentMenu")!=""){
        session.setAttribute("currentMenu", request.getParameter("currentMenu"));
    }
    String  currentMenu =(String) request.getSession().getAttribute("currentMenu");  
    UserEJB u = (UserEJB) session.getAttribute("u");
    CNAPSUser cnapsUser = u.getCnapsUser();
    ArrayList<ArrayList<MenuDynamique>> arbre =null;
    if(session.getAttribute("MENU")==null){
        arbre = MenuDynamique.getElementMenu(request, u.getUser(), cnapsUser);
        session.setAttribute("MENU", arbre);
    }else{
        arbre = (ArrayList<ArrayList<MenuDynamique>>) session.getAttribute("MENU");
    }
    MenuDynamique[] tabMenu = null;
    if(request.getServletContext().getAttribute("tabMenu")!=null){
        tabMenu=(MenuDynamique[])request.getServletContext().getAttribute("tabMenu");
    }
 %>
 <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" id="menuslider">
            <li class="header">Menu</li>
            <%=MenuDynamique.renderMenu(arbre,currentMenu,tabMenu,RB) %>         
            <div class="dropdown">
                <li>
                    <a style="display: block;padding: 8px;" href="#" class=" " onclick="window.location.href='#'">
                        <i style="margin-right: 3.6px;" class="fa fa fa-usd"></i> <span>Impot</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu  ">
                        <li>
                            <a href="module.jsp?but=impot/carte.jsp" class=""><i class="fa fa-list"></i>Carte</a>
                            <a href="module.jsp?but=impot/liste.jsp&annee=2025" class=""><i class="fa fa-list"></i>Liste paye & non paye</a>
                            <a href="module.jsp?but=impot/facture/formFacture.jsp" class=""><i class="fa fa-list"></i>Facture</a>
                            <a href="module.jsp?but=impot/proprietaire/formProprietaire.jsp" class=""><i class="fa fa-list"></i>Proprietaire</a>
                            <a href="module.jsp?but=impot/payment/facture-liste-paye.jsp" class=""><i class="fa fa-list"></i>Facture paye</a>

                        </li>
                    </ul>
                </li>
            </div>
           
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
  <% }
  catch(ConcurrentAccessTimeoutException e){
        out.println("<script language='JavaScript'> document.location.replace('/cnaps-war/');</script>");
    }
  %>