package impot;

import java.sql.Connection;

import bean.ClassMAPTable;

public class ImpotUser extends ClassMAPTable {
    String id;
    String idUtilisateur;
    String idCommune;

    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdCommune() {
        return idCommune;
    }

    public void setIdCommune(String idCommune) {
        this.idCommune = idCommune;
    }

    public ImpotUser() {
        setNomTable("impotuser");
    }

    

    @Override
    public void construirePK(Connection c) throws Exception {
        preparePk("IUSER", "getSeqImpotUser");
        super.construirePK(c);
    }

    @Override
    public String getAttributIDName() {
        // TODO Auto-generated method stub
        return "id";
    }

    @Override
    public String getTuppleID() {
        // TODO Auto-generated method stub
        return getId();
    }

    public String getIdUtilisateur() {
        return idUtilisateur;
    }

    public void setIdUtilisateur(String idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }
    
}
