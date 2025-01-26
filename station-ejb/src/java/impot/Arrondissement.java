package impot;

import java.sql.Connection;
import java.util.HashMap;

import com.google.gson.Gson;

import bean.CGenUtil;
import impot.maison.Maison;
import utilitaire.UtilDB;
import utils.Outil;

public class Arrondissement  {
    private String idCommune;
    private String idArrondissement;

    public Arrondissement(String idCommune) {
        this.setIdCommune(idCommune);
    }

    public Arrondissement() {
    }

    public String getAllJson() throws Exception {
        HashMap<String, String>[] listeArrondissement = Outil.getDicoTable("SELECT id,\r\n" + //
                            "       nom,\r\n" + //
                            "        '['||LISTAGG('['||TO_CHAR(y, '999.9999')||','|| TO_CHAR(x, '999.9999')|| ']', ', ')  WITHIN GROUP (ORDER BY vertex_id) || ']'AS coordinates\r\n " + //
                            " FROM (\r\n" + //
                            "    SELECT a.idcommune,"+
                            "           a.idArrondissement AS id,\r\n" + //
                            "           a.arrondissement AS nom,\r\n" + //
                            "           v.X AS x,\r\n" + //
                            "           v.Y AS y,\r\n" + //
                            "           ROWNUM AS vertex_id\r\n" + //
                            "    FROM arrondissement a,\r\n" + //
                            "         TABLE(SDO_UTIL.GETVERTICES(a.delimitation)) v\r\n" + //
                            ") WHERE IDCOMMUNE='"+ idCommune +"'" + //
                            " GROUP BY id , nom\r\n", null);
        // Utiliser GSON pour convertir la liste en JSON
        Gson gson = new Gson();
        return gson.toJson(listeArrondissement);

    }
    public String getAllJsonPost() throws Exception{
        HashMap<String,String>[] dico = Outil.getDicoTable("SELECT m.idMaison as id,m.nomProprietaire, a.arrondissement\r\n" + //
                            "FROM v_maison_proprietaire m\r\n" + //
                            "JOIN arrondissement a\r\n" + //
                            "ON SDO_RELATE(a.delimitation, m.localisation, 'mask=ANYINTERACT') = 'TRUE'\r\n" + //
                            "WHERE a.idArrondissement = '"+ idArrondissement +"'",null);
        Gson gson = new Gson();
        return gson.toJson(dico);
    }
    public Maison[] getMaisonsid() throws Exception {
        String sql = String.format("select * from v_maison_arr where idArrondissement='%s' and idCommune='%s'",getIdArrondissement(), getIdCommune());
        return (Maison[])CGenUtil.rechercher(new Maison(), sql);
    }
    public Maison[] getMaisons() throws Exception {
        String sql = String.format("select * from v_maison_arr where idCommune='%s'", getIdCommune());
        return (Maison[])CGenUtil.rechercher(new Maison(), sql);
    }


    public String getIdCommune() {
        return idCommune;
    }
    public void setIdCommune(String idCommune) {
        this.idCommune = idCommune;
    }

    public String getIdArrondissement() {
        return idArrondissement;
    }

    public void setIdArrondissement(String idArrondissement) {
        this.idArrondissement = idArrondissement;
    }
    
}
