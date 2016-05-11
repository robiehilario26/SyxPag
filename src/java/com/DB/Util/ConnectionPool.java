package com.DB.Util;

import java.sql.*;
import javax.sql.DataSource;
import javax.naming.InitialContext;

public class ConnectionPool
{
    private static ConnectionPool connpool = null;
    private static DataSource dataSource = null;
 
    public synchronized static ConnectionPool getInstance()
    {
        if (connpool == null)
        {
            connpool = new ConnectionPool();
        }
        return connpool;
    }

    private ConnectionPool()
    {
        try
        {
            InitialContext ic = new InitialContext();
            dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/basher_db");
        }
        catch(Exception e)
        {
        }
    }

    public Connection getConnection()
    {
        try
        {
            return dataSource.getConnection();
        }
        catch (SQLException sqle)
        {
            return null;
        }
    }
    
    public void freeConnection(Connection c)
    {
        try
        {
            c.close();
        }
        catch (SQLException sqle)
        {
        }
    }
}