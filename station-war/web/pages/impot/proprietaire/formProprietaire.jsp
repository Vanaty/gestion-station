<%-- 
    Document   : insertionMaison
    Created on : 22 janv. 2025, 10:55:58
    Author     : ryrab
--%>
<%@page import="impot.maison.Proprietaire"%>
<%
    
    
%>
<div class="content-wrapper" style="padding: 5%">
    <div class="row">
        <div class="col-md-6" style="padding: 1%;background-color: white;">
            <h4>Hetra proprietaire </h4>
            <form action="module.jsp" method="post">
                <div class="row" style="margin-bottom: 1%">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <select class="form-select" name="idProp" aria-label="Default select example">
                                <%
                                    try{
                                        Proprietaire[] proprietaires=Proprietaire.getAll();

                                    
                                        %>
                                        <% for(int i=0;i<proprietaires.length;i++){ %>
                                        <option value="<%=proprietaires[i].getId()  %>"><%= proprietaires[i].getVal() %></option>
                                        <% } 
                                    }
                                    catch(Exception e)
                                    {
                                        out.println(e.getMessage());
                                    }    
                                        
                                        
                                %>
                                    
                            </select>
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <input type="hidden" value="impot/proprietaire/proprietaire.jsp" name="but" class="form-control" placeholder="Annee" aria-label="Username" aria-describedby="basic-addon1">
                            <input type="number" name="annee" class="form-control" placeholder="Annee" aria-label="Username" aria-describedby="basic-addon1" value="2025">
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
