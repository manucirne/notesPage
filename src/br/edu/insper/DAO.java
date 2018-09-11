package br.edu.insper;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


public class DAO {
	
	private Connection connection = null;
	
	public DAO() {
		
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			 connection = DriverManager.getConnection(
					 "jdbc:mysql://localhost/infinitynote", "root", "Ratoeira9804"); // MUDAR!!!!!!!!!!
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Não rolou o try1 class");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Não rolou o try1 SQL");
		}
	}
	public List<Notas> getLista() {
		
		List<Notas> notas = new ArrayList<Notas>();
		
		try {
			PreparedStatement stmt = connection.
					prepareStatement("SELECT * FROM Notas");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				Notas nota = new Notas();
				nota.setId(rs.getInt("id"));
				nota.setTitulo(rs.getString("titulo"));
				nota.setNota(rs.getString("nota"));
				nota.setCor(rs.getString("cor"));
				notas.add(nota);
			}
			
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return notas;
	}
	public void altera(Notas nota) {
		try {
			String sql = "UPDATE Notas SET " +
					"titulo=?, nota=? WHERE id=?";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, nota.getTitulo());
			stmt.setString(2, nota.getNota());
			stmt.setInt(3, nota.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void adiciona(Notas nota) {
		try {
			String sql = "INSERT INTO Notas" +
			"(titulo,nota) values(?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1,nota.getTitulo());
			stmt.setString(2,nota.getNota());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void remove(Integer id) {
		try {
			PreparedStatement stmt = connection
			 .prepareStatement("DELETE FROM Notas WHERE id=?");
			stmt.setLong(1, id);
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void close() {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
}