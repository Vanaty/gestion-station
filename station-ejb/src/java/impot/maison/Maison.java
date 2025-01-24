package impot.maison;

import java.sql.Connection;

import bean.*;
import impot.Composant;
import impot.Payment;
import impot.Prix;

public class Maison extends ClassMere {
    String idMaison;
    String idProp;
    double longitude;
    double latitude;
    Prix prixunitaire;
    Composant [] composant;
    double surface;
    

    public Maison() throws Exception {
        this.setNomTable("maison");
        this.setNomClasseFille("impot.maison.MaisonMere");
        this.setLiaisonFille("idMaison");
    }

    public String getIdMaison() {
        return idMaison;
    }

    public void setIdMaison(String idMaison) {
        this.idMaison = idMaison;
    }

    public String getIdProp() {
        return idProp;
    }

    public void setIdProp(String idProp) {
        this.idProp = idProp;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("MSN", "getseqmaison");
        this.setIdMaison(makePK(c));
    }

    @Override
    public String getTuppleID() {
        return idMaison;// Generated from
                        // nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getAttributIDName() {
        return "idMaison";// Generated from
                          // nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Prix getPrix( String idCommune, int mois, int annee) throws Exception {
        String sql = "select * from prix where mois<=" + mois + " AND annee<=" + annee + " ORDER BY annee,mois desc";
        Prix[] liste = (Prix[]) CGenUtil.rechercher(new Prix(), sql);
        return liste[0];
    }

    public double calculeSurface(int longueur, int large, int nbetage) {
        return longueur * large * nbetage;
    }

    public MaisonFille getMaisonFille( int mois, int annee) throws Exception {
        String sql = "select * from maisonfille where mois<=" + mois + " AND annee<=" + annee
                + " ORDER BY annee,mois desc";
        return (MaisonFille) CGenUtil.rechercher(new Prix(), sql)[0];
    }

    public double getSurface( int mois, int annee) throws Exception {
        MaisonFille mf = getMaisonFille( mois, annee);
        return mf.largeur * mf.longueur * mf.nbEtage;
    }

    public Composant[] getComposant( int mois, int annee) throws Exception {
        String sql = "select * from composant where mois<=" + mois + " AND annee<=" + annee
                + " ORDER BY annee,mois desc";
        return (Composant[]) CGenUtil.rechercher(new Composant(), sql)[0];
    }
    public Prix getPrixunitaire() {
        return prixunitaire;
    }

    public void setPrixunitaire(String idCommune,int mois,int annee) throws Exception{
        this.prixunitaire =    getPrix(  idCommune,  mois, annee);
    }

    public Composant[] getComposant() {
        return composant;
    }

    public void setComposant(int mois,int annee)throws Exception {
        this.composant = getComposant( mois, annee);
    }

    public double getSurface() {
        return surface;
    }

    public void setSurface(int mois,int annee)throws Exception {
        this.surface = getSurface(mois, annee);
    }
    public double calcuelecoefficient()throws Exception{
        double result = 1;
        for (int i = 0; i < this.composant.length; i++) {
            result = result * composant[i].getCoefficient();            
        }
        return result;
    }
    public double calculerMontantAPayer() throws Exception{
        return calcuelecoefficient()*getSurface()*getPrixunitaire().getValeur();
    }
    public Payment[] getPayment(int annee,Connection connection) throws Exception{
        Payment[] payments=new Payment[12];
        for(int i=0;i<12;i++){
            Payment[] payment=(Payment[])CGenUtil.rechercher(new Payment(), "select * from payment where idMaison = '"+this.getIdMaison()+"' and mois="+(i+1)+" and annee="+annee,connection);
            if(payment.length==0){
               payments[i]=new Payment(this,i+1,annee,false);
               continue;
            }
            payments[i]=payment[0].setPaye(true);
        }
        return payments;
    }
    


}
