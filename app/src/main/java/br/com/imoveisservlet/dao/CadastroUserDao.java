package br.com.imoveisservlet.dao;

import br.com.imoveisservlet.model.CadastroUser;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
public class CadastroUserDao {
    public void createCadastroUser(CadastroUser cadastroUser){


        String SQL = "INSERT INTO CADASTRO (NOME_COMPLETO, EMAIL, CPF, TELEFONE, SENHA, REPETE_SENHA) VALUES (?,?,?,?,?,?)";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, cadastroUser.getNomeCompleto());
            preparedStatement.setString(2, cadastroUser.getEmail());
            preparedStatement.setString(3, cadastroUser.getCpf());
            preparedStatement.setString(4, cadastroUser.getTelefone());
            preparedStatement.setString(5, cadastroUser.getSenha());
            preparedStatement.setString(6, cadastroUser.getRepeteSenha());

            preparedStatement.execute();

            System.out.println("Succeso ao se cadastrar");

            connection.close();

        } catch (Exception e){
            System.out.println("Erro no processamento" + e.getMessage());
        }
    }

}

