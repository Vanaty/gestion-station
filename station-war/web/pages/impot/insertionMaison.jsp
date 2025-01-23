<%-- 
    Document   : insertionMaison
    Created on : 22 janv. 2025, 10:55:58
    Author     : ryrab
--%>
<%
    double longitude=0;
    double lattitude=0;
    if(request.getParameter("longitude")!=null && request.getParameter("lattitude")!=null){
        longitude = Double.parseDouble(request.getParameter("longitude"));
        lattitude = Double.parseDouble(request.getParameter("lattitude"));
    }
%>
<div class="content-wrapper" style="padding: 5%">
    <div class="row">
        <div class="col-md-6" style="padding: 1%;background-color: white;">
            <h4>Insertion Maison</h4>
            <form action="impot/insertHouse.jsp" method="post">
                <div class="row" style="margin-bottom: 1%">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <input type="number" name="longueur" class="form-control" placeholder="Longueur" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <input type="number" name="largeur" class="form-control" placeholder="Largeur" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 1%">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <input type="number" step="0.0000000001" value="<%= longitude %>" name="longitude" class="form-control" placeholder="Longitude" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <input type="number" step="0.0000000001" name="lattitude" value="<%= lattitude %>" class="form-control" placeholder="Lattitude" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                    </div>
                </div>
                <div class="row mb-3" style="margin-bottom: 1%">
                    <div class="col-md-6">
                        <div class="input-group mb-3">
                            <input type="number" name="nbEtage" class="form-control" placeholder="Nombre d'etage" aria-label="Username" aria-describedby="basic-addon1">
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
