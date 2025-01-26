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
 * @author edodrandria
 */
public class PaymentDetails extends FactureMaison{
    
    public PaymentDetails(){
        this.setNomTable("paymentDetails");
    }
    public PaymentDetails(String idCommune,String idMaison,int mois,int annee){
        this.setIdCommune(idCommune);
        this.setIdMaison(idMaison);
        this.setMois(mois);
        this.setAnnee(annee);
        this.setNomTable("paymentDetails");
    }
    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("PAYD", "getseqpaymentdetails");
        this.setId(makePK(c));
    }
    public void insererPayementDetails() throws Exception{
        Maison maison=Maison.getMaison(this.getIdMaison())[0];
        
        if(maison.getPayment(this.getAnnee(),this.getMois()).length > 0){
            throw new Exception("efa paye");
        }
        maison.getMaison(this.getIdCommune(), this.getAnnee(), this.getMois());
        
        this.setSurface(maison.getSurface());
        this.setCoeff(maison.calcuelecoefficient());
        this.setIdProprietaire(maison.getIdProp());
        this.setPrixUnitaire(maison.getPrixunitaire().getValeur());
        this.setHetra(maison.calculerMontantAPayer());
        this.insertToTable();
    } 
    
    
    
}
