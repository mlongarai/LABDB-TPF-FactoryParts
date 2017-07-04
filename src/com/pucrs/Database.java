package com.pucrs;

import oracle.jdbc.pool.OracleDataSource;

import java.sql.Connection;
import java.sql.SQLException;

import static java.sql.SQLException.*;

/***
 * Class that has methods to connect to an existing Oracle Database.
 */
public class Database {

	/***
	 * Database Oracle On-Premises PUCRS camburi
	 */
	//private static String mJdbcUrl = "jdbc:oracle:thin:@camburi.pucrs.br:1521:facin11g";
	//private static String mUser = "ba201786";
	//private static String mPassword = "";

	/***
	 * Database Oracle on Azure
	 */
	private static String mJdbcUrl = "jdbc:oracle:thin:@oracle12c.westeurope.cloudapp.azure.com:1521:orcl";
	private static String mUser = "system";
	private static String mPassword = "Alpha!@#oracle";

	private static OracleDataSource mDataSource = null;

	/**
	 * Gets a new database connection.
	 * 
	 * @return Connection New connection.
	 * @throws SQLException.
	 */
	public static Connection getConnection() throws SQLException {
		if (mDataSource == null) {
			initialize();
		}

		return mDataSource.getConnection(mUser, mPassword);
	}

	/**
	 * Initializes the database, creating a new Data Source and set its Jdbc
	 * URL.
	 * 
	 * @throws SQLException
	 */
	public static void initialize() throws SQLException {
		mDataSource = new OracleDataSource();
		mDataSource.setURL(mJdbcUrl);
	}
}
