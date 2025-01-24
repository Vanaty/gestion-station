/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package impot;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import utilitaire.UtilDB;

public class BilanMensuel {
    private String mois;
    private double montantPaye;
    private double montantNonPaye;
    List<Maison> notPayer;
    List<Maison> aPayer;  
    public static String[] months;

    
    public BilanMensuel(Payment[] payments,int mois){
        this.notPayer = new ArrayList<>();
        this.aPayer = new ArrayList<>();
        for(Payment payment:payments){
            if(payment.mois==mois){
                if(payment.isPaye()){
                    montantPaye+=payment.getMaison().getPrixMensuel();
                    this.aPayer.add(payment.getMaison());
                }
                else{
                    montantNonPaye+=payment.getMaison().getPrixMensuel();
                    this.notPayer.add(payment.getMaison());
                }
            }
        }
        this.mois=getMonths()[mois-1];
    }
    
    public static BilanMensuel[] getBilanAnnuel(int annee)throws Exception{
        BilanMensuel[] bilans=new BilanMensuel[12];
        Connection connection=null;
        try{
            connection=new UtilDB().GetConn();
            Payment[] payments=Payment.getAllPayments(annee, connection);
            for(int i=0;i<12;i++){
                bilans[i]=new BilanMensuel(payments,i+1);
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            if(connection!=null){
                connection.close();
            }
        }
        return bilans;
    }

    
    public static BilanMensuel[] getBilanAnnuelArrondissement(int annee,String listeId)throws Exception{
        BilanMensuel[] bilans=new BilanMensuel[12];
        Connection connection=null;
        try{
            connection=new UtilDB().GetConn();
            Payment[] payments=Payment.getAllPaymentsArrondissement(annee,listeId,connection);
            for(int i=0;i<12;i++){
                bilans[i]=new BilanMensuel(payments,i+1);
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            if(connection!=null){
                connection.close();
            }
        }
        return bilans;
    }
    
    public String getMois(){
        return this.mois;
    }
    
    public double getMontantPaye(){
        return this.montantPaye;
    }
    
    public double getMontantNonPaye(){
        return this.montantNonPaye;
    }
    public List<Maison> getNotPayer() {
        return notPayer;
    }

    public void setNotPayer(List<Maison> notPayer) {
        this.notPayer = notPayer;
    }

    public List<Maison> getaPayer() {
        return aPayer;
    }

    public void setaPayer(List<Maison> aPayer) {
        this.aPayer = aPayer;
    }
    
    public static String[] getMonths(){
        if(months==null){
            BilanMensuel.months=new String[12];
            BilanMensuel.months[0]="Janvier";
            BilanMensuel.months[1]="Fevier";
            BilanMensuel.months[2]="Mars";
            BilanMensuel.months[3]="Avril";
            BilanMensuel.months[4]="Mai";
            BilanMensuel.months[5]="Juin";
            BilanMensuel.months[6]="Juillet";
            BilanMensuel.months[7]="Aout";
            BilanMensuel.months[8]="Septembre";
            BilanMensuel.months[9]="Octobre";
            BilanMensuel.months[10]="Novembre";
            BilanMensuel.months[11]="Decembre";
        }
        
        return months;
    }
}
