/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package impot;

import bean.ClassMAPTable;

/**
 *
 * @author ryrab
 */
public class Composant extends ClassMAPTable {
    private String idComposant;
    public String composant;
    public String idMatiere;
    public double coefficient;

    public String getIdComposant() {
        return idComposant;
    }
    
    public void setIdComposant(String idComposant) {
        this.idComposant = idComposant;
    }

    public void setComposant(String composant) {
        this.composant = composant;
    }

    public void setIdMatiere(String idMatiere) {
        this.idMatiere = idMatiere;
    }

    public void setCoefficient(double coefficient) throws Exception{
        if(coefficient<=0){
            throw new Exception("Coefficient negatif");
        }
        this.coefficient = coefficient;
    }
    
    
    
    public Composant(){
        this.setNomTable("composant");
    }
    
    public Composant(String composant){
        this.setNomTable("composant");
        this.composant=composant;
    }
    
    @Override
    public String getTuppleID() {
        return "idComposant"; // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getAttributIDName() {
        return "idComposant"; // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
