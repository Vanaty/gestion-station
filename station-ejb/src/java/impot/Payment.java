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
public class Payment extends ClassMAPTable{
    private String idPayment;
    public Date datePayment;
    public int mois;
    public int annee;
    public String idMaison;
    private boolean paye;
    private Maison maison;

    public int getMois() {
        return mois;
    }

    public int getAnnee() {
        return annee;
    }

    public String getIdMaison() {
        return idMaison;
    }

    public String getIdPayment() {
        return idPayment;
    }

    public void setIdPayment(String idPayment) {
        this.idPayment = idPayment;
    }
    
    public Payment(Maison maison,int mois,int annee,boolean paye){
        super.setNomTable("payment");
        this.annee=annee;
        this.mois=mois;
        this.maison=maison;
        this.paye=paye;
    }
    
    public Payment(String idMaison,String mois,String annee){
        super.setNomTable("payment");
        this.idMaison=idMaison;
        this.mois=Integer.parseInt(mois);
        this.annee=Integer.parseInt(annee);
    }
    
    public Payment setMaison(Maison maison){
        this.maison=maison;
        return this;
    }

    public void setMois(int mois) {
        this.mois = mois;
    }

    public void setAnnee(int annee) {
        this.annee = annee;
    }
    
    

    public void setDatePayment(Date datePayment) {
        this.datePayment = datePayment;
    }

    public void setIdMaison(String idMaison) {
        this.idMaison = idMaison;
    }
    
    
    
    public boolean isPaye(){
        return this.paye;
    }
    
    public Payment(){
        this.setNomTable("payment");
    }
    
    public Maison getMaison(){
        return this.maison;
    }
    
    public Payment setPaye(boolean paye){
        this.paye=paye;
        return this;
    }
    
    public Payment(Date datePayment,String idMaison){
        this.setNomTable("payment");
        this.datePayment=datePayment;
        this.idMaison=idMaison;
    }
    
    // public static Payment[] getAllPayments(int annee,Connection connection,String idArrondissement) throws Exception{
    //     Maison[] maisons=Maison.getMaisonByIdArrondissement(idArrondissement, connection);
    //     Payment[] payments=new Payment[maisons.length*12];
    //     int count=0;
    //     System.out.println(maisons.length+" maison");
    //     for(Maison maison : maisons){
    //         for(Payment payment : maison.getPayment(annee, connection)){
    //             payment.maison=maison;
    //             payments[count]=payment;
    //             count++;
    //         }
    //     }
    //     return payments;
    // }
    
    // public static Payment[] getAllPayments(int annee,Connection connection) throws Exception{
    //     Maison[] maisons=(Maison[]) CGenUtil.rechercher(new Maison(), "select * from maison", connection);
    //     Payment[] payments=new Payment[maisons.length*12];
    //     int count=0;
    //     System.out.println(maisons.length+" maison");
    //     for(Maison maison : maisons){
    //         for(Payment payment : maison.getPayment(annee, connection)){
    //             payment.maison=maison;
    //             payments[count]=payment;
    //             count++;
    //         }
    //     }
    //     return payments;
    // }
    
    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("PAY", "getseqpayment");
        this.setIdPayment(makePK(c));
    }
    
    @Override
    public String getTuppleID() {
        return idPayment;// Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getAttributIDName() {
        return "idPayment";// Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
