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
import impot.Payment;
import impot.PaymentDetails;

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
            String idMaison = req.getParameter("idMaison");
            Arrondissement arr = new Arrondissement();
            arr.setIdCommune(idCommune);
            Maison [] maisons = arr.getMaisons();
            for (int i = 0; i < maisons.length; i++) {
                if(maisons[i].getIdMaison().compareToIgnoreCase(idMaison)==0){
                    maisons [i].setPrixunitaire(idCommune,mois,annee);
                    maisons [i].setComposant(mois,annee);
                    maisons [i].setSurface(mois,annee);
                    Payment p = new  Payment(idMaison, req.getParameter("mois"), req.getParameter("annee"));
                    p.insertToTable();
                    PaymentDetails pay = new PaymentDetails();
                    pay.setIdProprietaire(maisons[i].getIdProp());
                    pay.setSurface(maisons[i].getSurface());
                    pay.setMois(mois);
                    pay.setIdMaison(maisons[i].getIdMaison());
                    pay.setAnnee(annee);
                    pay.setPrixUnitaire(maisons[i].getPrixunitaire().getValeur());
                    pay.setHetra(maisons[i].calculerMontantAPayer());
                    pay.insertToTable();
                }
                else {
                    throw new Exception("efa paye");
                }
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
