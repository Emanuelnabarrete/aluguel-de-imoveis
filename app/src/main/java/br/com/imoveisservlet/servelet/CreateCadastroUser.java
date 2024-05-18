package br.com.imoveisservlet.servelet;
import br.com.imoveisservlet.dao.CadastroUserDao;
import br.com.imoveisservlet.model.CadastroUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/cadastrouser")
public class CreateCadastroUser extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nomeCompleto = req.getParameter("nomeCompleto-cadastro");
        String email = req.getParameter("email-cadastro");
        String cpf = req.getParameter("cpf-cadastro");
        String telefone = req.getParameter("telefone-cadastro");
        String senha = req.getParameter("senha-cadastro");
        String repetirSenha = req.getParameter("repetirSenha-cadastro");

        CadastroUser cadastroUser = new CadastroUser(nomeCompleto, cpf, telefone, email, senha, repetirSenha);

        CadastroUserDao cadastroUserDao = new CadastroUserDao();
        cadastroUserDao.createCadastroUser(cadastroUser);

        resp.sendRedirect( "/login");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("index.jsp").forward(req, resp);

    }


}
