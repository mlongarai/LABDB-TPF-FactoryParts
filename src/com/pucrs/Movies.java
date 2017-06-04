package com.pucrs;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Class that has all methods to interact with movies table.
 */
public class Movies {

	/***
	 * Lists all movies available on the database table 'filmes'.
	 * 
	 * @param The database connection.
	 * @throws SQLException
	 */
	public static void selectAll(Connection connection) throws SQLException {
		String sql = "SELECT * " + 
					 "FROM filmes";
		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(sql);

		while (rs.next()) {
			int id_filme = rs.getInt("id_filme");
			String titulo = rs.getString("titulo");
			int ano = rs.getInt("ano");
			String diretor = rs.getString("diretor");
			System.out.println(id_filme + "\t" + titulo + "\t" + ano + "\t" + diretor);
		}
		
		statement.close();
		rs.close();
	}
	
	/***
	 * Selects the movie given by the informed ID.
	 * 
	 * @param The database connection.
	 * @param Movie's ID. 
	 * @throws SQLException
	 */
	public static void select(Connection connection, int movieId) throws SQLException {
		String sql = "SELECT * " + 
					 "FROM filmes " + 
					 "WHERE id_filme = " + movieId;
		
		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(sql);

		while (rs.next()) {
			int id_filme = rs.getInt("id_filme");
			String titulo = rs.getString("titulo");
			int ano = rs.getInt("ano");
			String diretor = rs.getString("diretor");
			System.out.println(id_filme + "\t" + titulo + "\t" + ano + "\t" + diretor);
		}
		
		statement.close();
		rs.close();
	}
	
	/**
	 * Inserts a new movie in the database.
	 * 
	 * @param The database connection.
	 * @param The title of the movie.
	 * @param The year of the movie.
	 * @param The director of the movie.
	 * @return True if the movie was inserted successfully. False otherwise.
	 * @throws SQLException
	 */
	public static boolean insert(Connection connection, String titulo, int ano, String diretor) throws SQLException{
		String sql = "INSERT INTO filmes (id_filme, titulo, ano, diretor) " + 
				   	 "VALUES (seq_filmes.nextval, '" + titulo + "', " + ano + ", '" + diretor + "')";
		
		Statement statement = connection.createStatement();
		int rowCount = statement.executeUpdate(sql);
		
		// Row count is the number of affected registers. In this case, 
		// when equals to one means that a register was succesfully inserted.
		return rowCount == 1;
	}
	
	/**
	 * Deletes an existing movie, identified by the given ID. 
	 * 
	 * @return True if the movie was deleted successfully. False otherwise.
	 * @throws SQLException 
	 */
	public static boolean delete(Connection connection, int idFilme) throws SQLException{
		String sql = "DELETE FROM filmes " +
                	 "WHERE id_filme = " + idFilme;
		
		Statement statement = connection.createStatement();
		int rowCount = statement.executeUpdate(sql);
		
		// Row count is the number of affected registers. In this case, 
		// when equals to one means that a register was succesfully deleted.
		return rowCount == 1;
	}
	
	/**
	 * 
	 * Inserts a new movie in the database.
	 * 
	 * @param The database connection.
	 * @param The ID of the movie to have information updated.
	 * @param The title of the movie.
	 * @param The year of the movie.
	 * @param The director of the movie.
	 * @return True if the movie was updated successfully. False otherwise.
	 * @throws SQLException
	 */
	public static boolean update(Connection connection, int idFilme, String titulo, int ano, String diretor) throws SQLException{
		String sql = "UPDATE filmes " +
					 "SET titulo  = '" + titulo + "'," +
					 "    ano     = " + ano + "," +
					 "    diretor = '" + diretor + "'" +
					 "WHERE id_filme = " + idFilme;
	
		Statement statement = connection.createStatement();
		int rowCount = statement.executeUpdate(sql);
		
		// Row count is the number of affected registers. In this case, 
		// when equals to one means that a register was succesfully updated.
		return rowCount == 1;
	}

}
