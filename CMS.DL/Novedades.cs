using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CMS.Entities;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.Practices.EnterpriseLibrary.Common;
using System.Data.SqlClient;
using System.Data.Common;
//using Microsoft.Practices.EnterpriseLibrary.Data.Configuration;
namespace CMS.DL
{
    public class Novedades
    {
        public static Novedad Load(int id)
        {
            Novedad novedad = new Novedad();
            SqlConnection conexion = DB.Conectar();
            try
            {
                string sql = "SELECT nov_identificador, mensaje, fechaAlta, fechaBaja, fechaModificacion, archivo, mensaje_web, titulo, idUsuAlta, idUsuMod, idUsuBaja, tipo, archivo_ext, archivo_nombre, archivo_tam_kb, descripcion_breve, es_imagen, es_historica FROM novedad WHERE (nov_identificador = " + id + ")";
                SqlCommand sqlcmd = new SqlCommand(sql, conexion);
                SqlDataReader dr = sqlcmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (dr.Read())
                        return novedad = FillNovedadDataReader(dr, false);
                }
                else
                    return null;
            }
            catch (Exception ex)
            {
                return null;
            }
            return null;
        }
        public static List<Novedad> LoadAll()
        {
            SqlConnection conexion = DB.Conectar();
            Novedad novedad = null;
            List<Novedad> lstNovedades = new List<Novedad>();
            try
            {
                string sql = "SELECT nov_identificador, mensaje, fechaAlta, fechaBaja, fechaModificacion, archivo, mensaje_web, titulo, idUsuAlta, idUsuMod, idUsuBaja, tipo, archivo_ext, archivo_nombre, archivo_tam_kb, descripcion_breve, es_imagen, es_historica FROM novedad WHERE (fechaBaja IS NULL)";
                sql += " order by fechaAlta";
                SqlCommand sqlcmd = new SqlCommand(sql, conexion);
                SqlDataReader dr = sqlcmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        novedad = FillNovedadDataReader(dr, false);
                        lstNovedades.Add(novedad);
                    }
                }

                return lstNovedades;
            }
            catch (Exception ex)
            {
                return null;
            }

        }
        public static List<Novedad> NovedadLoadAllByDescripcion(string descripcion)
        {
            Novedad novedad = null;
            SqlConnection conexion = DB.Conectar();
            List<Novedad> lstNovedades = new List<Novedad>();
            try
            {
                string sql = "SELECT nov_identificador, mensaje, fechaAlta, fechaBaja, fechaModificacion, archivo, mensaje_web, titulo, idUsuAlta, idUsuMod, idUsuBaja, tipo, archivo_ext, archivo_nombre, archivo_tam_kb, descripcion_breve, es_imagen, es_historica FROM novedad WHERE (fechaBaja IS NULL) AND (UPPER(mensaje_web) like '%" + descripcion + "%') AND (UPPER(titulo) like '%" + descripcion + "%') ";
                sql += " order by fechaAlta";
                SqlCommand sqlcmd = new SqlCommand(sql, conexion);
                List<SqlParameter> listp = new List<SqlParameter>();
                //SqlDataReader dr = sqlcmd.ExecuteReader();
                SqlDataReader dr = DB.GenerarReader(sql, listp, conexion);
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        novedad = FillNovedadDataReader(dr, false);
                        lstNovedades.Add(novedad);
                    }
                }
                return lstNovedades;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public static byte[] LoadArchivo(int id)
        {
            try
            {
                string sql = "SELECT archivo FROM novedad WHERE (nov_identificador = " + id + ")";
                return ConvertBlobToByte(sql);
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        private static Novedad FillNovedad(DataRow row, bool traerArchivo)
        {
            try
            {
                Novedad novedad = new Novedad();
                novedad.nov_identificador = Convert.ToInt32(row["nov_identificador"].ToString());
                novedad.mensaje = Convert.ToString(row["mensaje"].ToString());
                novedad.fechaAlta = Convert.ToDateTime(row["fechaAlta"]);
                if (row["fechaBaja"] != DBNull.Value)
                    novedad.fechaBaja = Convert.ToDateTime(row["fechaBaja"]);
                if (row["fechaModificacion"] != DBNull.Value)
                    novedad.fechaModificacion = Convert.ToDateTime(row["fechaModificacion"]);
                novedad.mensaje_web = Convert.ToString(row["mensaje_web"].ToString());
                novedad.titulo = Convert.ToString(row["titulo"].ToString());
                novedad.idUsuAlta = Convert.ToInt32(row["idUsuAlta"].ToString());
                if (row["idUsuMod"] != DBNull.Value)
                    novedad.idUsuMod = Convert.ToInt32(row["idUsuMod"].ToString());
                if (row["idUsuBaja"] != DBNull.Value)
                    novedad.idUsuBaja = Convert.ToInt32(row["idUsuBaja"].ToString());
                if (row["tipo"] != DBNull.Value)
                    novedad.tipo = Convert.ToInt32(row["tipo"].ToString());
                if (traerArchivo)
                    novedad.archivo = LoadArchivo(novedad.nov_identificador);
                //if (row["es_html"].ToString() == "S")
                //    novedad.es_html = true;
                //else
                //    novedad.es_html = false;
                if (row["es_historica"].ToString() == "S")
                    novedad.es_historica = true;
                else
                    novedad.es_historica = false;
                if (row["tipo"] != DBNull.Value)
                    novedad.archivo_ext = row["archivo_ext"].ToString();
                if (row["tipo"] != DBNull.Value)
                    novedad.archivo_nombre = row["archivo_nombre"].ToString();
                if (row["tipo"] != DBNull.Value)
                    novedad.archivo_tam_kb = Convert.ToInt32(row["archivo_tam_kb"].ToString());
                if (row["descripcion_breve"] != DBNull.Value)
                    novedad.descripcion_breve = row["descripcion_breve"].ToString();
                if (row["es_imagen"].ToString() == "S")
                    novedad.es_imagen = true;
                else
                    novedad.es_imagen = false;
                return novedad;
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        private static Novedad FillNovedadDataReader(SqlDataReader row, bool traerArchivo)
        {
            try
            {
                Novedad novedad = new Novedad();
                novedad.nov_identificador = Convert.ToInt32(row["nov_identificador"].ToString());
                novedad.mensaje = Convert.ToString(row["mensaje"].ToString());
                novedad.fechaAlta = Convert.ToDateTime(row["fechaAlta"]);
                if (row["fechaBaja"] != DBNull.Value)
                    novedad.fechaBaja = Convert.ToDateTime(row["fechaBaja"]);
                if (row["fechaModificacion"] != DBNull.Value)
                    novedad.fechaModificacion = Convert.ToDateTime(row["fechaModificacion"]);
                novedad.mensaje_web = Convert.ToString(row["mensaje_web"].ToString());
                novedad.titulo = Convert.ToString(row["titulo"].ToString());
                novedad.idUsuAlta = Convert.ToInt32(row["idUsuAlta"].ToString());
                if (row["idUsuMod"] != DBNull.Value)
                    novedad.idUsuMod = Convert.ToInt32(row["idUsuMod"].ToString());
                if (row["idUsuBaja"] != DBNull.Value)
                    novedad.idUsuBaja = Convert.ToInt32(row["idUsuBaja"].ToString());
                if (row["tipo"] != DBNull.Value)
                    novedad.tipo = Convert.ToInt32(row["tipo"].ToString());
                if (traerArchivo)
                    novedad.archivo = LoadArchivo(novedad.nov_identificador);
                //if (row["es_html"].ToString() == "S")
                //    novedad.es_html = true;
                //else
                //    novedad.es_html = false;
                if (row["es_historica"].ToString() == "S")
                    novedad.es_historica = true;
                else
                    novedad.es_historica = false;
                if (row["archivo_ext"] != DBNull.Value)
                    novedad.archivo_ext = row["archivo_ext"].ToString();
                if (row["archivo_nombre"] != DBNull.Value)
                    novedad.archivo_nombre = row["archivo_nombre"].ToString();
                if (row["archivo_tam_kb"] != DBNull.Value)
                    novedad.archivo_tam_kb = Convert.ToInt32(row["archivo_tam_kb"].ToString());
                if (row["descripcion_breve"] != DBNull.Value)
                    novedad.descripcion_breve = row["descripcion_breve"].ToString();
                if (row["es_imagen"].ToString() == "S")
                    novedad.es_imagen = true;
                else
                    novedad.es_imagen = false;
                return novedad;
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public static byte[] ConvertBlobToByte(string sSql)
        {
            SqlDataReader oraImgReader;
            SqlCommand oraImgCmd;
            SqlConnection oConn = DB.Conectar();
            oConn.Open();
            oraImgCmd = new SqlCommand(sSql, oConn);
            oraImgCmd.Connection = oConn;
            oraImgCmd.CommandType = CommandType.Text;
            oraImgReader = oraImgCmd.ExecuteReader();
            bool recordExist = oraImgReader.Read();
            byte[] byteArr = new byte[0];
            if (recordExist)
            {
                if (oraImgReader.GetValue(0).ToString() != "")
                {
                    byteArr = (byte[])oraImgReader.GetValue(0);
                }
            }
            oraImgReader.Close();
            oraImgCmd.Dispose();
            oConn.Close();
            return byteArr;
        }
        public static Novedad Save(Novedad novedad)
        {
            SqlConnection con = DB.Conectar();
            SqlTransaction transaction = null;
            try
            {
                transaction = con.BeginTransaction();
                string sSql = string.Empty;
                int nov_identificador = 0;
                int result = 0;

                if (transaction != null)
                {
                    sSql = @"INSERT INTO novedad (mensaje, fechaAlta, mensaje_web, titulo, idUsuAlta, descripcion_breve, es_imagen, es_historica ";

                    List<SqlParameter> listp = new List<SqlParameter>();

                    if (novedad.archivo != null && novedad.archivo.Length > 0)
                    {
                        sSql += @",archivo,archivo_ext, archivo_nombre, archivo_tam_kb";
                    }

                    sSql += @") values ( @mensaje, getdate(), @mensaje_web, @titulo, @idUsAlta, @descripcion_breve, @es_imagen, @es_historica";

                    if (novedad.archivo != null && novedad.archivo.Length > 0)
                    {
                        sSql += @",@Archivo , @ArchivoExt, @ArchivoNombre," + novedad.archivo_tam_kb;

                        listp.Add(new SqlParameter("@Archivo", novedad.archivo));
                        listp.Add(new SqlParameter("@ArchivoExt", novedad.archivo_ext));
                        listp.Add(new SqlParameter("@ArchivoNombre", novedad.archivo_nombre));
                    }

                    sSql += ")";

                    listp.Add(new SqlParameter("@mensaje", novedad.mensaje));
                    listp.Add(new SqlParameter("@mensaje_web", novedad.mensaje_web));
                    listp.Add(new SqlParameter("@titulo", novedad.titulo));
                    listp.Add(new SqlParameter("@idUsAlta", novedad.idUsuAlta));
                    listp.Add(new SqlParameter("@descripcion_breve", novedad.descripcion_breve));                    
                    if (novedad.es_historica)
                        listp.Add(new SqlParameter("@es_historica", 'S'));
                    else
                        listp.Add(new SqlParameter("@es_historica", 'N'));
                    if (novedad.es_imagen)
                        listp.Add(new SqlParameter("@es_imagen", 'S'));
                    else
                        listp.Add(new SqlParameter("@es_imagen", 'N'));

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = sSql;
                    cmd.Transaction = transaction;
                    result = DB.EjecutarCommand(sSql, listp, con, transaction);
                    if (result > 0)
                    {
                        transaction.Commit();
                        return novedad;
                    }
                    else
                    {
                        transaction.Rollback();
                        return null;
                    }
                }
                else
                {
                    transaction.Rollback();
                    return null;
                }
            }
            catch (Exception ex)
            {
                if (transaction != null)
                    transaction.Rollback();
                return null;
            }
            finally
            {
                con.Close();
            }

        }

        public static int Delete(Novedad novedad)
        {
            SqlConnection con = DB.Conectar();
            SqlTransaction transaction = null;
            try
            {
                transaction = con.BeginTransaction();
                string sSql = string.Empty;
                int result = 0;
                if (transaction != null)
                {
                    sSql = @"UPDATE novedad SET fechaModificacion = @fecUltMod, fechaBaja = @fecBaja, idUsuMod = @idUsMod, idUsuBaja = @idUsBaja WHERE (nov_identificador = @id)";
                    List<SqlParameter> listp = new List<SqlParameter>();
                    listp.Add(new SqlParameter("@fecUltMod", novedad.fechaModificacion));
                    listp.Add(new SqlParameter("@fecBaja", novedad.fechaBaja));
                    listp.Add(new SqlParameter("@idUsMod", novedad.idUsuMod));
                    listp.Add(new SqlParameter("@idUsBaja", novedad.idUsuBaja));
                    listp.Add(new SqlParameter("@id", novedad.nov_identificador));
                    result = DB.EjecutarCommand(sSql, listp, con, transaction);
                    if (result > 0)
                    {
                        transaction.Commit();
                        return 1;
                    }
                    else
                    {
                        transaction.Rollback();
                        return result;
                    }
                }
                else
                {
                    transaction.Rollback();
                    return -1;
                }
            }
            catch (Exception ex)
            {
                if (transaction != null)
                    transaction.Rollback();
                return -1;
            }
        }

        public static int Update(Novedad novedad)
        {
            int ret = 0;
            SqlConnection con = DB.Conectar();
            SqlTransaction transaction = null;
            try
            {
                transaction = con.BeginTransaction();
                string sSql = string.Empty;
                int result = 0;

                if (transaction != null)
                {
                    sSql = @"UPDATE novedad SET mensaje = @mensaje, fechaModificacion = @fecMod, mensaje_web = @mensaje_web, titulo = @titulo, idUsuMod = @idUsMod, descripcion_breve = @descr_breve, es_imagen = @imagen, es_historica = @historica";

                    List<SqlParameter> listp = new List<SqlParameter>();
                    if (novedad.archivo != null && novedad.archivo.Length > 0)
                    {
                        sSql += @", archivo=@arch, archivo_ext=@arch_ext, archivo_nombre=@arch_nom, archivo_tam_kb=@arch_tam";
                        listp.Add(new SqlParameter("@arch", novedad.archivo));
                        listp.Add(new SqlParameter("@arch_ext", novedad.archivo_ext));
                        listp.Add(new SqlParameter("@arch_nom", novedad.archivo_nombre));
                        listp.Add(new SqlParameter("@arch_tam", novedad.archivo_tam_kb));
                    }

                    sSql += @" where  NOV_IDENTIFICADOR=@id";

                    listp.Add(new SqlParameter("@mensaje", novedad.mensaje));
                    listp.Add(new SqlParameter("@fecMod", DateTime.Now));
                    listp.Add(new SqlParameter("@mensaje_web", novedad.mensaje_web));
                    listp.Add(new SqlParameter("@titulo", novedad.titulo));
                    listp.Add(new SqlParameter("@idUsMod", novedad.idUsuMod));
                    listp.Add(new SqlParameter("@descr_breve", novedad.descripcion_breve));
                    if (novedad.es_historica)
                        listp.Add(new SqlParameter("@historica", 'S'));
                    else
                        listp.Add(new SqlParameter("@historica", 'N'));
                    if (novedad.es_imagen)
                        listp.Add(new SqlParameter("@imagen", 'S'));
                    else
                        listp.Add(new SqlParameter("@imagen", 'N'));
                    listp.Add(new SqlParameter("@id", novedad.nov_identificador));
                    result = DB.EjecutarCommand(sSql, listp, con, transaction);

                    if (result > 0)
                    {
                        transaction.Commit();
                        return result;
                    }
                    else
                    {
                        transaction.Rollback();
                        return result;
                    }
                }
                else
                {
                    transaction.Rollback();
                    return -1;
                }
            }
            catch (Exception ex)
            {
                if (transaction != null)
                    transaction.Rollback();
                ret = -1;
            }
            finally
            {
                con.Close();
            }
            return ret;
        }
    }
}
