package impot.maison;
import java.sql.Connection;

import bean.*;
import maison.Maison;

public class MaisonFille extends ClassFille {
    String id;
    double longueur,largeur;
    double nbEtage;
    String idMaison;
    int mois;
    int annee;

    public MaisonFille() throws Exception{
        setNomTable("MaisonFille");
        this.setLiaisonMere("idMaison");
        this.setNomClasseMere("impot.maison.MaisonFille");
    }
    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("MASF", "GETSEQMAISONFILLE");
        this.setId(makePK(c));
    }

    @Override
    public String getTuppleID() {
        return id;
    }

    @Override
    public String getAttributIDName() {
        return "id";
    }
    
    @Override
    public void setLiaisonMere(String liaisonMere) {
        super.setLiaisonMere("idMere");
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public double getLongueur() {
        return longueur;
    }
    public void setLongueur(double longueur) {
        this.longueur = longueur;
    }
    public double getLargeur() {
        return largeur;
    }
    public void setLargeur(double largeur) {
        this.largeur = largeur;
    }
    public double getNbEtage() {
        return nbEtage;
    }
    public void setNbEtage(double nbEtage) {
        this.nbEtage = nbEtage;
    }
    public String getIdMaison() {
        return idMaison;
    }
    public void setIdMaison(String idMaison) {
        this.idMaison = idMaison;
    }
    public int getMois() {
        return mois;
    }
    public void setMois(int mois) {
        this.mois = mois;
    }
    public int getAnnee() {
        return annee;
    }
    public void setAnnee(int annee) {
        this.annee = annee;
    }
                   
}
