package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Produto;

public class ProdutoDAO {
	private Connection conn;
	private PreparedStatement stmn;
	private ResultSet rs;
	private List<Produto> lista = new ArrayList<Produto>();

	public ProdutoDAO() {
		conn = new ConnectionManager().getConnection();
	}

	public void inserir(Produto p) {
		String sql = "INSERT INTO produto (descricao, preco) VALUES (?,?)";
		try {
			stmn = conn.prepareStatement(sql);
			stmn.setString(1, p.getDescP());
			stmn.setDouble(2, p.getPrecoP());
			stmn.execute();
			stmn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void alterar(Produto p) {
		String sql = "UPDATE produto SET descricao = ?, preco = ? WHERE id = ?";
		try {
			stmn = conn.prepareStatement(sql);
			stmn.setString(1, p.getDescP());
			stmn.setDouble(2, p.getPrecoP());
			stmn.setInt(3, p.getIdP());
			stmn.execute();
			stmn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deletar(int idP) {
		String sql = "DELETE FROM produto WHERE id = ?";
		try {
			stmn = conn.prepareStatement(sql);
			stmn.setInt(1, idP);
			stmn.execute();
			stmn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Produto> recebeTudo() {
		String sql = "SELECT * FROM produto";
		try {
			stmn = conn.prepareStatement(sql);
			rs = stmn.executeQuery();
			while (rs.next()) {
				Produto p = new Produto();
				p.setIdP(rs.getInt("id"));
				p.setDescP(rs.getString("descricao"));
				p.setPrecoP(rs.getDouble("preco"));
				lista.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	public List<Produto> recebeTudo(String d){
		String sql = "SELECT * FROM produto WHERE descricao LIKE '%"+d+"%'";
		try { 
			stmn = conn.prepareStatement(sql);
			rs = stmn.executeQuery();
			while (rs.next()) {
				Produto p = new Produto();
				p.setIdP(rs.getInt("id"));
				p.setDescP(rs.getString("descricao"));
				p.setPrecoP(rs.getDouble("preco"));
				lista.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	public void showDouble(int i) {
		System.out.println(i*2);
	}

}
