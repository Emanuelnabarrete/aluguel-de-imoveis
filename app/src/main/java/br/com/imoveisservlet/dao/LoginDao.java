package br.com.imoveisservlet.dao;
import br.com.imoveisservlet.model.Login;
import br.com.imoveisservlet.model.LoginDTO;

import java.sql.*;

public class LoginDao {

    public LoginDTO loginUser(Login login) {
        String SQL = "SELECT * FROM CADASTRO WHERE EMAIL = ? AND SENHA = ?";

        try{
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");


             PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, login.getEmail());

            preparedStatement.setString(2, login.getSenha());

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                boolean acesso = resultSet.next();

               String idUser =  resultSet.getString("ID");
                LoginDTO loginDTO = new LoginDTO(acesso, idUser);

                System.out.println("Login bem-sucedido: " + acesso);
                return loginDTO;
            }

        } catch (SQLException e) {
            System.out.println("Erro no processo: " + e.getMessage());
            LoginDTO loginDTO = new LoginDTO(false, "null");

            return loginDTO;
        }
    }

}
