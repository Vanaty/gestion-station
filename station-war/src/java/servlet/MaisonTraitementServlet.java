package servlet;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import impot.maison.*;
import impot.Arrondissement;
import utils.Outil;

@WebServlet("/TraitementMaisonServlet")
public class MaisonTraitementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idCommune = req.getParameter("idCommune");
            if (idCommune == null) {
                idCommune = (String) req.getSession().getAttribute("idCommune");
            }

            int mois = Integer.parseInt(req.getParameter("mois"));
            int annee = Integer.parseInt(req.getParameter("annee"));
            Arrondissement arr = new Arrondissement();
            arr.setIdCommune(idCommune);
            Maison [] maisons = arr.getMaisons();
            for (int i = 0; i < maisons.length; i++) {
                maisons [i].setPrixunitaire(idCommune,mois,annee);

                maisons [i].setComposant(mois,annee);
                maisons [i].setSurface(mois,annee);
                System.out.println("surface : "+maisons[i].getSurface());
                System.out.println("coefficient:"+maisons[i].calcuelecoefficient());
                System.out.println("PU:"+maisons[i].getPrixunitaire().getValeur());
                System.out.println(maisons[i].getIdMaison()+"  " + maisons[i].calculerMontantAPayer());
            }
            
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            resp.getWriter().print(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }
}
