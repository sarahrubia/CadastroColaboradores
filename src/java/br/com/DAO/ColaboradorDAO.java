package br.com.DAO;

import br.com.DTO.ColaboradorDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ColaboradorDAO {
    
    Connection conexao;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ColaboradorDTO> lista = new ArrayList<>();

    public void cadastrarColaborador(ColaboradorDTO objcolaboradorDTO) throws ClassNotFoundException {
        String sql = "insert into colaboradores "
                + "(nome, cpf, cnpj, email, cep, endereco, logradouro, bairro, cidade, estado, tipoPessoa) "
                + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        conexao = new ConexaoDAO().conectaBD();

        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, objcolaboradorDTO.getNome());
            pstm.setString(2, objcolaboradorDTO.getCpf());
            pstm.setString(3, objcolaboradorDTO.getCnpj());
            pstm.setString(4, objcolaboradorDTO.getEmail());
            pstm.setString(5, objcolaboradorDTO.getCep());
            pstm.setString(6, objcolaboradorDTO.getEndereco());
            pstm.setString(7, objcolaboradorDTO.getLogradouro());
            pstm.setString(8, objcolaboradorDTO.getBairro());
            pstm.setString(9, objcolaboradorDTO.getCidade());
            pstm.setString(10, objcolaboradorDTO.getUf());
            pstm.setString(11, objcolaboradorDTO.getTipoPessoa());

            pstm.execute();
            pstm.close();
        } catch (SQLException erro) {
        }
    }

    public ArrayList<ColaboradorDTO> PesquisarColaborador() throws ClassNotFoundException {
        
        String sql = "select * from colaboradores";
        conexao = new ConexaoDAO().conectaBD();

        try {
            pstm = conexao.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                ColaboradorDTO objcolaboradorDTO = new ColaboradorDTO();
                objcolaboradorDTO.setId(rs.getInt("id"));
                objcolaboradorDTO.setNome(rs.getString("nome"));
                objcolaboradorDTO.setCpf(rs.getString("cpf"));
                objcolaboradorDTO.setCnpj(rs.getString("cnpj"));
                objcolaboradorDTO.setEmail(rs.getString("email"));
                objcolaboradorDTO.setCep(rs.getString("cep"));
                objcolaboradorDTO.setEndereco(rs.getString("endereco"));
                objcolaboradorDTO.setLogradouro(rs.getString("logradouro"));
                objcolaboradorDTO.setBairro(rs.getString("bairro"));
                objcolaboradorDTO.setCidade(rs.getString("cidade"));
                objcolaboradorDTO.setUf(rs.getString("estado"));
                objcolaboradorDTO.setTipoPessoa(rs.getString("tipoPessoa"));

                lista.add(objcolaboradorDTO);
            }

        } catch (SQLException erro) {
        }

        return lista;
    }
    
    public void EditarColaborador(ColaboradorDTO objcolaboradorDTO) throws ClassNotFoundException {
        
        String sql = "update colaboradores set nome = ?, cpf = ?, cnpj = ?, email = ?, cep = ?, endereco = ?, logradouro = ?, bairro = ?, cidade = ?, estado = ?, tipoPessoa = ? where id = ?";
        
        conexao = new ConexaoDAO().conectaBD();
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, objcolaboradorDTO.getNome());
            pstm.setString(2, objcolaboradorDTO.getCpf());
            pstm.setString(3, objcolaboradorDTO.getCnpj());
            pstm.setString(4, objcolaboradorDTO.getEmail());
            pstm.setString(5, objcolaboradorDTO.getCep());
            pstm.setString(6, objcolaboradorDTO.getEndereco());
            pstm.setString(7, objcolaboradorDTO.getLogradouro());
            pstm.setString(8, objcolaboradorDTO.getBairro());
            pstm.setString(9, objcolaboradorDTO.getCidade());
            pstm.setString(10, objcolaboradorDTO.getUf());
            pstm.setString(11, objcolaboradorDTO.getTipoPessoa());
            pstm.setInt(12, objcolaboradorDTO.getId());

            pstm.execute();
            pstm.close();
        } catch (SQLException erro) {
        }
    }
    
    public void ExcluirColaborador(ColaboradorDTO objcolaboradorDTO) throws ClassNotFoundException {
        String sql = "delete from colaboradores where id = ?";
        
        conexao = new ConexaoDAO().conectaBD();
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setInt(1, objcolaboradorDTO.getId());

            pstm.execute();
            pstm.close();
            
        } catch (SQLException erro) {
        }
    }

    
}
