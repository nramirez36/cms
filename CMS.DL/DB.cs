using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace CMS.DL
{
    public static class DB
    {
        private static string strConexion = "Data Source=(local)\\sqlexpress;Initial Catalog=nramirez36-CMS;Integrated Security=True";

        public static SqlConnection Conectar()
        {
            SqlConnection con = new SqlConnection(strConexion);
            con.Open();
            return con;
        }

        public static SqlCommand ArmaCommand(string strSQL, List<SqlParameter> param, SqlConnection con)
        {
            SqlCommand com = new SqlCommand(strSQL, con);
            com.CommandType = CommandType.Text;

            foreach (SqlParameter sp in param)
            {
                com.Parameters.Add(sp);
            }
            return com;
        }
        public static SqlDataReader GenerarReader(string strSQL, List<SqlParameter> param, SqlConnection con)
        {
            SqlCommand com = ArmaCommand(strSQL, param, con);
            return com.ExecuteReader();
        }

        public static DataTable GenerarTable(String strSQL, List<SqlParameter> lista, SqlConnection con)
        {
            DataTable dt = new DataTable();
            dt.Load(GenerarReader(strSQL, lista, con));
            return dt;
        }

        public static int EjecutarCommand(String strSQL, List<SqlParameter> lista,
            SqlConnection con)
        {
            SqlCommand com = ArmaCommand(strSQL, lista, con);
            return com.ExecuteNonQuery();
        }
        public static int EjecutarCommand(String strSQL, List<SqlParameter> lista,
            SqlConnection con, SqlTransaction tran)
        {
            SqlCommand com = ArmaCommand(strSQL, lista, con);
            com.Transaction = tran;
            return com.ExecuteNonQuery();
        }

        public static string EjecutarScalar(String strSQL, List<SqlParameter> lista, SqlConnection con, SqlTransaction tran)
        {
            SqlCommand cmd = ArmaCommand(strSQL, lista, con);
            cmd.Transaction = tran;
            return cmd.ExecuteScalar().ToString();
        }

        public static SqlDataReader GenerarReader(string comando, List<SqlParameter> listp, SqlConnection con, SqlTransaction tran)
        {
            SqlCommand com = ArmaCommand(comando, listp, con);
            com.Transaction = tran;
            return com.ExecuteReader();
        }
    }
}
