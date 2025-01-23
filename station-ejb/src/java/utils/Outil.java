package utilitaire;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Vector;
import utilitaire.UtilDB;

public class Outil {
    //Fonction généralisé

    //Juste mi-afficher table
    // public static String affTable(String table) throws Exception { // Package + nom Class(table)
    //     String sql = "Select * from "+table.split("[.]")[1];
    //     ConnectionPost con = new ConnectionPost("postgres", "root");
    //     ResultSet result = con.getStatement().executeQuery(sql);
    //     String tableau="";
    //     Class c = Class.forName(table);
    //     Field[] attributs = c.getDeclaredFields();
    //     String enTete = "<tr>";
    //     for (int i = 0; i < attributs.length; i++) {
    //         enTete+="<th>"+attributs[i].getName() +"</th>";
    //     }
    //     enTete+="</tr>";
    //     String tbody ="";
    //     while (result.next()) {
    //         tbody+="<tr>";
    //         for (int i = 0; i < attributs.length; i++) {
    //             tbody+="<td>"+ result.getString(attributs[i].getName()) +"</td>";
    //         }
    //         tbody+="</tr>";
    //     }
    //     result.close();
    //     con.closeConnection();
    //     tableau=enTete+tbody;
    //     return tableau;
    // }
    
    public static HashMap<String,String>[] getDicoTable(String sql,Connection con) throws Exception { //HashMap<nomCOlonne,Valeur>
        Vector v = new Vector<HashMap>();
        boolean close=false;
        //ConnectionPost con = new ConnectionPost("postgres", "root");
        if (con==null) {
            close=true;
            con = new UtilDB().GetConn();
        }
        ResultSet result = con.createStatement().executeQuery(sql);
        ResultSetMetaData metaData = result.getMetaData();
        int columnCount = metaData.getColumnCount();
        String[] nomColonne = new String[columnCount];
        for (int i = 1; i <= columnCount; i++) {
            nomColonne[i-1] = metaData.getColumnName(i);
        }
        while (result.next()) {
            HashMap<String,String> dico = new HashMap<String,String>();
            for (int i = 0; i < nomColonne.length; i++) {
                dico.put(nomColonne[i], result.getString(nomColonne[i]));    
            }
            v.add(dico);
        }
        result.close();
        if(close){
            con.close();
        }
        HashMap<String,String>[] liste =  new HashMap[v.size()];
        
        for (int i = 0; i < v.size(); i++) {
            liste[i] = (HashMap) v.get(i);    
        }

        return liste;
    }

    // public static String affTableRequete(String sql) throws Exception { 
    //     ConnectionPost con = new ConnectionPost("postgres", "root");
    //     ResultSet result = con.getStatement().executeQuery(sql);
    //     ResultSetMetaData metaData = result.getMetaData();
    //     int columnCount = metaData.getColumnCount();
    //     String[] nomColonne = new String[columnCount];
    //     for (int i = 1; i <= columnCount; i++) {
    //         nomColonne[i-1] = metaData.getColumnName(i);
    //     }
    //     String tableau="";
        
    //     String enTete = "<tr>";
    //     for (int i = 0; i < nomColonne.length; i++) {
    //         enTete+="<th>"+nomColonne[i] +"</th>";
    //     }
    //     enTete+="</tr>";
    //     String tbody ="";
    //     while (result.next()) {
    //         tbody+="<tr>";
    //         for (int i = 0; i < nomColonne.length; i++) {
    //             tbody+="<td>"+ result.getString(nomColonne[i]) +"</td>";
    //         }
    //         tbody+="</tr>";
    //     }
    //     result.close();
    //     con.closeConnection();
        
    //     tableau=enTete+tbody;
    //     return tableau;
    // }

    public static String getHtmlInsert(String nomClass ) throws Exception{
        
        String formulaire = "";    
        Class c = Class.forName(nomClass);
        Object o = c.getDeclaredConstructor().newInstance();
        Field[] attribut = o.getClass().getDeclaredFields();

        for(int i=0;i< attribut.length ; i++){ 
            String temp1 ="  <tr> "; 
            String temp2 = "   <td><label for= " + attribut[i].getName() +">"+ attribut[i].getName() +" :  </label> </td> ";
            String temp3 = "";

            String value="";
            if (attribut[i].getType()==int.class || attribut[i].getType() == double.class) {
                
                temp3 ="    <td> <input type=\"number\"  name = "+ attribut[i].getName() +" > </td>  ";   
            }
            else if (attribut[i].getType()==String.class) {
                
                temp3 ="  <td> <input type=\"text\"  name = "+ attribut[i].getName() +" id= "+ attribut[i].getName() + "> </td> ";
            }
            else if (attribut[i].getType()==LocalDate.class) {
                
                temp3 ="  <td> <input type=\"date\"  name = "+ attribut[i].getName() +" value="+LocalDate.now()+" > </td>  ";
            }   
               
            String temp4 =  "</tr>";
            formulaire+=temp1 + temp2 +temp3 + temp4;
                    
        }
          
        return formulaire;
    }
   
}
