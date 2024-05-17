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

@WebServlet("/HomeNaoLogada")
public class HomeNaoLogada extends HttpServlet {
         @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            List<CadastroImovel> imoveis = new CadastroImovelDao().ListadeImoveis();
            req.setAttribute("imoveis", imoveis);

            req.getRequestDispatcher("homenaoLogada.jsp").forward(req, resp);


        }




}
