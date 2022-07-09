package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class ConexaoDAO {

    public Connection conectaBD() throws ClassNotFoundException {

        Connection conexao = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/cadastro?user=root&password=1234";
            conexao = DriverManager.getConnection(url);

        } catch (SQLException erro) {
            JOptionPane.showMessageDialog(null, "ConexaoDAO" + erro.getMessage());
        }
        return conexao;

    }

}
