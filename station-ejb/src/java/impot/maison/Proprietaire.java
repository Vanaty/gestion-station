package impot.maison;


import java.sql.Connection;

import bean.CGenUtil;
import impot.FactureMaison;
import impot.Payment;
import bean.ClassMAPTable;

public class Proprietaire extends ClassMAPTable{

    private String id;
    private String val;
    private String desce;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getVal() {
        return val;
    }
    public void setVal(String val) {
        this.val = val;
    }
    public String getDesce() {
        return desce;
    }
    public void setDesce(String desce) {
        this.desce = desce;
    }
    public Maison[] getMaison() throws Exception
    {
             Maison[] maisons=(Maison[])CGenUtil.rechercher(new Maison(), "select * from Maison where idProp = '"+this.getId()+"'");
    
     return maisons;
    }
    public Proprietaire(){
        this.setNomTable("Proprietaire");
    }
    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("PROP", "getseqproprietaire");
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
    public static Proprietaire[] getAll() throws Exception{
        String sql = "select * from Proprietaire ";
        Proprietaire[] proprietaires=(Proprietaire[])CGenUtil.rechercher(new Proprietaire(), sql);
        return proprietaires;
    }

}