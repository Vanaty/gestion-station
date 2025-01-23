package impot.maison;
import java.sql.Connection;

import bean.*;
public class MaisonMere extends ClassMere {
    String idMaison;
    String idProp;
    double longitude;
    double latitude;
    public ArrondissementMere() throws Exception {
        this.setNomTable("maison");
        this.setNomClasseFille("impot.maison.MaisonMere");
        this.setLiaisonFille("idMaison");
    }
    @Override
    public String getTuppleID() {
        return idMaison;
    }

    @Override
    public String getAttributIDName() {
        return "idMaison";
    }

    @Override
    public void construirePK(Connection c) throws Exception {
        this.preparePk("MASF", "GETSEQMAISONMERE");
        this.setId(makePK(c));
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
    

}
