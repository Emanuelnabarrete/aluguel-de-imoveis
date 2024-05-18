package br.com.imoveisservlet.servelet;

import br.com.imoveisservlet.dao.LoginDao;
import br.com.imoveisservlet.model.Login;
import br.com.imoveisservlet.model.LoginDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/login")
public class CreateLogin extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("Login.jsp").forward(req, resp);

    }

    private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("emailLogin");
        String senha = req.getParameter("senhaLogin");

        Login login = new Login(email, senha);

        LoginDao loginDao = new LoginDao();


        LoginDTO loginDTO = loginDao.loginUser(login);

        if (loginDTO.isLogged()) {
            System.out.println("Login bem-sucedido para o usuário: " + email);
            req.getSession().setAttribute("idUser", loginDTO.getIdentificacao());
            resp.sendRedirect(req.getContextPath() +"/HomeLogada");


        } else {
            System.out.println("Falha no login para o usuário: " + email);
            resp.sendRedirect("/login");
        }

    }



}
