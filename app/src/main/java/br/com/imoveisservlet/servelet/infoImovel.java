package br.com.imoveisservlet.servelet;

import br.com.imoveisservlet.dao.CadastroImovelDao;
import br.com.imoveisservlet.model.CadastroImovel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/infoImovel")
public class infoImovel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        CadastroImovelDao cadastroImovelDao = new CadastroImovelDao();
        String id= req.getParameter("id");

        CadastroImovel imovelbyID = cadastroImovelDao.findImovelbyIDInfo(id);

        req.setAttribute("imovel" , imovelbyID);



        req.getRequestDispatcher("infoImovel.jsp").forward(req, resp);

    }
}
