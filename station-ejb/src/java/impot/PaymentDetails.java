/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package impot;

import bean.CGenUtil;
import bean.ClassMAPTable;
import impot.maison.Maison;

import java.sql.Connection;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author ryrab
 */
public class PaymentDetails extends ClassMAPTable{
    String id;
    private String idProprietaire;
    public int mois;
    public int annee;
    public String idMaison;
    double surface;
    double prixUnitaire;
    double hetra;
    
    
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
    public PaymentDetails(){
        this.setNomTable("paymentDetails");
    }
    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("PAYD", "getseqpaymentdetails");
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
