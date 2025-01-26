package impot;

import bean.CGenUtil;
import bean.ClassMAPTable;
import impot.Arrondissement;
import impot.maison.Maison;

import java.sql.Connection;
import java.sql.Date;
import java.util.List;


public class FactureMaison extends ClassMAPTable {

    private String id;
    private String idProprietaire;
    private String idCommune; 
    private int mois;
    private int annee;
    private String idMaison;
    private double surface;
    private double prixUnitaire;
    private double hetra;
    private double coeff;
    

    public String getIdCommune() {
        return idCommune;
    }

    public void setIdCommune(String idCommune) {
        this.idCommune = idCommune;
    }
    public double getCoeff() {
        return coeff;
    }

    public void setCoeff(double coeff) {
        this.coeff = coeff;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdProprietaire() {
        return idProprietaire;
    }

    public void setIdProprietaire(String idProprietaire) {
        this.idProprietaire = idProprietaire;
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

    public String getIdMaison() {
        return idMaison;
    }

    public void setIdMaison(String idMaison) {
        this.idMaison = idMaison;
    }

    public double getSurface() {
        return surface;
    }

    public void setSurface(double surface) {
        this.surface = surface;
    }

    

    public double getPrixUnitaire() {
        return prixUnitaire;
    }

    public void setPrixUnitaire(double prixUnitaire) {
        this.prixUnitaire = prixUnitaire;
    }

    public double getHetra() {
        return hetra;
    }

    public void setHetra(double hetra) {
        this.hetra = hetra;
    }
    public FactureMaison(){
        this.setNomTable("FactureMaison");
    }
    public FactureMaison(String idCommune,int mois,int annee){
        this.setNomTable("FactureMaison");
        this.idCommune=idCommune;
        this.mois=mois;
        this.annee=annee;
    }
    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("FCM", "getseqpaymentfacturemaison");
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
    public FactureMaison getFacture() throws Exception
    {
        FactureMaison valiny=null;
        String sql = "select * from FactureMaison where mois=" + mois + " AND annee=" + annee + " AND idMaison='"
                + idMaison + "'";
        FactureMaison[] fm=(FactureMaison[])CGenUtil.rechercher(new FactureMaison(), sql);
        if (fm.length>0) {
            valiny=fm[0];
        }
        
        return valiny;
    }
    public void insererFactureMaison() throws Exception{
        Maison maison=Maison.getMaison(this.getIdMaison())[0];
        FactureMaison factureMaison=this.getFacture();
        if(factureMaison !=null){
             return;
        }
        maison.getMaison(this.getIdCommune(), this.getAnnee(), this.getMois());
        
        this.setSurface(maison.getSurface());
        this.setCoeff(maison.calcuelecoefficient());
        this.setIdProprietaire(maison.getIdProp());
        this.setPrixUnitaire(maison.getPrixunitaire().getValeur());
        this.setHetra(maison.calculerMontantAPayer());
        this.insertToTable();
    }
    public static void insererAllFactureMaison(Maison[] maisons,String idCommune,int mois,int annee) throws Exception{
        for (Maison maison : maisons) {
            
            FactureMaison factureMaison=new FactureMaison(idCommune,mois,annee);
            factureMaison.setIdMaison(maison.getIdMaison());
            factureMaison.insererFactureMaison();

            
        }

    }
    public static void insererAllFactureMaison(String idCommune,int mois,int annee) throws Exception{
        Arrondissement arrondissement=new Arrondissement(idCommune);
        Maison[] maisons=arrondissement.getMaisons();
        for (Maison maison : maisons) {
            
            FactureMaison factureMaison=new FactureMaison(idCommune,mois,annee);
            factureMaison.setIdMaison(maison.getIdMaison());
            factureMaison.insererFactureMaison();

            
        }

    }
    


    
}
