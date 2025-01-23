package servlet;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import utilitaire.Outil;

@WebServlet("/ListeMaisonServlet")
public class ListeMaisonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HashMap<String, String>[] listeMaison = Outil.getDicoTable("SELECT idMaison,\r\n" + //
                                " (localisation).sdo_point.x AS longitude, \n" + //
                                " (localisation).sdo_point.y AS latitude \n" + //
                                " FROM maison ", null);
            // Utiliser GSON pour convertir la liste en JSON
            Gson gson = new Gson();
            String jsonResponse = gson.toJson(listeMaison);
            resp.getWriter().print(jsonResponse);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            resp.getWriter().print(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }
}
