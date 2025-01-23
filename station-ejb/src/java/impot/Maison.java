/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package impot;

import bean.CGenUtil;
import bean.ClassMAPTable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.Statement;
import java.util.HashMap;
import utils.Outil;
import utilitaire.UtilDB;

/**
 *
 * @author ryrab
 */
public class Maison extends ClassMAPTable{
    String idMaison;
    private double longueur;
    private double largeur;
    private int nbEtage;
    public double longitude;
    public double lattitude;
    private double surfaceHabitable;
    private double prixMensuel;
    private Composant[] composants;
    
    public static void insertComposant(String idMaison,String idComposant)throws Exception{
        Connection connection=new UtilDB().GetConn();
        Statement st=null;
        try{
            st=connection.createStatement();
            System.out.println("INSERT INTO composant_maison (idMaison, idComposant) VALUES ('"+idMaison+"', '"+idComposant+"')");
            st.execute("INSERT INTO composant_maison (idMaison, idComposant) VALUES ('"+idMaison+"', '"+idComposant+"')");
        }
        catch(Exception ex){
            throw ex;
        }
        finally{
            if(st!=null){
                st.close();
            }
            if(connection!=null){
                connection.close();
            }
        }
    }

    public double getLongueur() {
        return longueur;
    }

    public double getLargeur() {
        return largeur;
    }

    public int getNbEtage() {
        return nbEtage;
    }

    public double getLongitude() {
        return longitude;
    }

    public double getLattitude() {
        return lattitude;
    }

    public void setIdMaison(String idMaison) {
        this.idMaison = idMaison;
    }

    public void setLongueur(double longueur) {
        this.longueur = longueur;
        if(this.largeur!=0 && this.nbEtage!=0){
            this.setSurfaceHabitable();
        }
    }

    public void setLargeur(double largeur) {
        this.largeur = largeur;
        if(this.longueur!=0 && this.nbEtage!=0){
            this.setSurfaceHabitable();
        }
    }

    public void setNbEtage(int nbEtage) {
        this.nbEtage = nbEtage;
        if(this.largeur!=0 && this.longueur!=0){
            this.setSurfaceHabitable();
        }
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public void setLattitude(double lattitude) {
        this.lattitude = lattitude;
    }
    
    public static Maison[] getMaisonByIdArrondissement(String idArrondissement,Connection connection) throws Exception{
        HashMap<String,String>[] dico = Outil.getDicoTable("SELECT m.idMaison as id, m.largeur, m.longueur, m.nbEtage as nb_etage, a.arrondissement\r\n" + //
                            "FROM maison m\r\n" + //
                            "JOIN arrondissement a\r\n" + //
                            "ON SDO_RELATE(a.delimitation, m.localisation, 'mask=ANYINTERACT') = 'TRUE'\r\n" + //
                            "WHERE a.idArrondissement = '"+ idArrondissement +"'",connection);
        Maison[] maisons=new Maison[dico.length];
        for(int i=0;i<dico.length;i++){
            maisons[i]=new Maison(
                    dico[i].get("ID"),
                    Double.parseDouble(dico[i].get("LONGUEUR")),
                    Double.parseDouble(dico[i].get("LARGEUR")),
                    Integer.parseInt(dico[i].get("NB_ETAGE")));
        }
        return maisons;
    }
    
    private void setSurfaceHabitable(){
        this.surfaceHabitable=this.longueur*this.largeur*this.nbEtage;
    }
    
    public Composant[] getComposants() throws Exception{
        if(composants==null){
            composants=(Composant[]) CGenUtil.rechercher(new Composant(), "select c.idComposant,composant,coefficient from composant_maison cm join composant c on c.idComposant = cm.idComposant where idMaison = '"+this.idMaison+"'");
        }
        return composants;
    }
    
    private void setPrixMensuel(double prixConfig){
        this.prixMensuel=prixConfig*this.surfaceHabitable;
        try{
            for(int i=0;i<this.getComposants().length;i++){
                this.prixMensuel*=this.getComposants()[i].coefficient;
            }
        }
        catch(Exception ex){
            
        }
    }
    
    public Maison(){
        super.setNomTable("maison");
    }
    
    public Payment[] getPayment(int annee,Connection connection) throws Exception{
        Payment[] payments=new Payment[12];
        for(int i=0;i<12;i++){
            System.out.println("select * from payment where idMaison = '"+this.getIdMaison()+"' and mois="+(i+1)+" and annee="+annee);
            Payment[] payment=(Payment[])CGenUtil.rechercher(new Payment(), "select * from payment where idMaison = '"+this.getIdMaison()+"' and mois="+(i+1)+" and annee="+annee,connection);
            if(payment.length==0){
               payments[i]=new Payment(this,i+1,annee,false);
               continue;
            }
            payments[i]=payment[0].setPaye(true);
        }
        return payments;
    }
    
    public Maison(double longueur,double largeur,double longitude,double lattitude,int nbEtage){
        super.setNomTable("maison");
        this.longueur=longueur;
        this.largeur=largeur;
        this.nbEtage=nbEtage;
        this.longitude=longitude;
        this.lattitude=lattitude;
        this.setSurfaceHabitable();
        this.setPrixMensuel(5000);
    }
    
    public Maison insertMaison()throws Exception{
        Connection connection=new UtilDB().GetConn();
        Maison maison=null;
        try{
            maison=(Maison)this.createObject("880677", connection);
        }
        catch(Exception ex){
            throw ex;
        }
        return maison;
    }
    
    public Maison(String idMaison,double longueur,double largeur,int nbEtage){
        super.setNomTable("maison");
        this.idMaison=idMaison;
        this.longueur=longueur;
        this.largeur=largeur;
        this.nbEtage=nbEtage;
        this.setSurfaceHabitable();
        this.setPrixMensuel(5000);
    }

    public String getIdMaison() {
        return idMaison;
    }

    public double getSurfaceHabitable() {
        return surfaceHabitable;
    }

    public double getPrixMensuel() {
        if(this.prixMensuel==0){
            this.setPrixMensuel(5000);
        }
        return prixMensuel;
    }
    
    
    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("MSN", "getseqmaison");
        this.setIdMaison(makePK(c));
    }

    @Override
    public String getTuppleID() {
        return idMaison;// Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getAttributIDName() {
        return "idMaison";// Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    /*
    SELECT constraint_name, constraint_type, table_name
FROM user_constraints
WHERE constraint_name = 'SYS_C007429';*/
}
