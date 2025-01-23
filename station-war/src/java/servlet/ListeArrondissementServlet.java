package servlet;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import impot.Arrondissement;
import utils.Outil;

@WebServlet("/ListeArrondissementServlet")
public class ListeArrondissementServlet extends HttpServlet {
    /*
    
SELECT id,nom,'['||LISTAGG('['||TO_CHAR(y, '999.9999')||','|| TO_CHAR(x, '999.9999')|| ']', ', ')  WITHIN GROUP (ORDER BY vertex_id) || ']' AS coordinates
                                FROM (
                                    SELECT a.idArrondissement AS id,
                                           a.arrondissement AS nom,
                                           v.X AS x,
                                           v.Y AS y,
                                            ROWNUM AS vertex_id
                                    FROM arrondissement a,
                                         TABLE(SDO_UTIL.GETVERTICES(a.delimitation)) v
                                ) 
                                 GROUP BY id , nom
    */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idCommune = req.getParameter("idCommune");
            String jsonResponse = new Arrondissement().getAllJson(idCommune);
            resp.getWriter().print(jsonResponse);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            resp.getWriter().print(e.getMessage());
        }     
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
        String id = req.getParameter("id");
        HashMap<String,String>[] dico = Outil.getDicoTable("SELECT m.idMaison as id, m.largeur, m.longueur, m.nbEtage as nb_etage, a.arrondissement\r\n" + //
                            "FROM maison m\r\n" + //
                            "JOIN arrondissement a\r\n" + //
                            "ON SDO_RELATE(a.delimitation, m.localisation, 'mask=ANYINTERACT') = 'TRUE'\r\n" + //
                            "WHERE a.idArrondissement = '"+ id +"'",null);
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(dico);
        resp.getWriter().print(jsonResponse);
        System.out.println(jsonResponse);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
