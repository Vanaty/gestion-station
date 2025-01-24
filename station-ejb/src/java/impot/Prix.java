package impot;

import java.sql.Connection;

import bean.ClassMAPTable;

public class Prix extends ClassMAPTable{
    String id ;
    double valeur ;
    int mois ;
    int annee ;
    String idCommune ;
    public Prix() throws Exception {
        this.setNomTable("prix");
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public double getValeur() {
        return valeur;
    }
    public void setValeur(double valeur) {
        this.valeur = valeur;
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
    public String getIdCommune() {
        return idCommune;
    }
    public void setIdCommune(String idCommune) {
        this.idCommune = idCommune;
    }
@Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("PRX", "getseqprix");
        this.setId(makePK(c));
    }

    @Override
    public String getTuppleID() {
        return id;// Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getAttributIDName() {
        return "id";// Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }    
       
}
