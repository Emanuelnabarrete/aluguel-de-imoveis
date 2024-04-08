package br.com.imoveisservlet.servelet;
import br.com.imoveisservlet.dao.ImovelDao;
import br.com.imoveisservlet.model.Imovel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-imovel")

public class CreateAlugueldImoveis extends HttpServlet {
    @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



            String imovel = req.getParameter("imovel-name");
            String proprietario = req.getParameter("proprietario-name");

        Imovel i = new Imovel(imovel,proprietario);


            System.out.println(proprietario);

            System.out.println(imovel);

        ImovelDao imoveldao = new ImovelDao();
        imoveldao.createImovel(i);


            req.getRequestDispatcher("index.html").forward(req,resp);


        }
    }
