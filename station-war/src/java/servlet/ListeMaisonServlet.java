package servlet;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import utils.Outil;

@WebServlet("/ListeMaisonServlet")
public class ListeMaisonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String idCommune = req.getParameter("idCommune");
            HashMap<String, String>[] listeMaison = Outil.getDicoTable(String.format("select * from v_maison_arr where idArrondissement='%s'", idCommune), null);
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
