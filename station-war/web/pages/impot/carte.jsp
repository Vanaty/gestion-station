<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<stlye>
    #map{
        height:500px;
    }
</stlye>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"></link>
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
        <% try { %>
            <div class="content-wrapper">
                <!-- Ato ny contenu -->
                <div id="map" style="height:500px"></div>
            
            </div>
            
        <% } catch (Exception e) {%>
        <script language="JavaScript"> alert('<%=e.getMessage().toUpperCase()%>');
            history.back();</script>
            <%
                }
            %>
<script src="impot/carte.js"></script>
