package com.pucrs;

import java.sql.Connection;
import java.sql.SQLException;

/***
 * Main program class.
 */
public class Main {

	public static void main(String[] args) throws SQLException {
		
		//Open the connection
		Connection conn = Database.getConnection();

		// -- 1 - Cidades da região SUL:
		// SELECT * FROM FILIAL WHERE regiao LIKE 'SUL' ORDER BY regiao ASC;
		//Factory.selectCidadesSul(conn);

		//-- 2 - Quantidade de filiais:
		//SELECT count(*) FROM FILIAL;
		Factory.selectQtdFilial(conn);

		// Close the connection.
		conn.close();
	}

}
