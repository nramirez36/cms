using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace CMS
{
    public class Tools
    {
        public static string GetMimeTypeByFileName(string sFileName)
        {
            string sMime = "application/octet-stream";

            string sExtension = System.IO.Path.GetExtension(sFileName);
            if (!string.IsNullOrEmpty(sExtension))
            {
                sExtension = sExtension.Replace(".", "");
                sExtension = sExtension.ToLower();

                if (sExtension == "xls" || sExtension == "xlsx")
                {
                    sMime = "application/ms-excel";
                }
                else if (sExtension == "doc" || sExtension == "docx")
                {
                    sMime = "application/msword";
                }
                else if (sExtension == "ppt" || sExtension == "pptx")
                {
                    sMime = "application/ms-powerpoint";
                }
                else if (sExtension == "rtf")
                {
                    sMime = "application/rtf";
                }
                else if (sExtension == "pdf")
                {
                    sMime = "application/pdf";
                }
                else if (sExtension == "zip")
                {
                    sMime = "application/zip";
                }
                else if (sExtension == "rar")
                {
                    sMime = "application/rar";
                }
                else if (sExtension == "mp3")
                {
                    sMime = "audio/mpeg";
                }
                else if (sExtension == "bmp")
                {
                    sMime = "image/bmp";
                }
                else if (sExtension == "gif")
                {
                    sMime = "image/gif";
                }
                else if (sExtension == "jpg" || sExtension == "jpeg")
                {
                    sMime = "image/jpeg";
                }
                else if (sExtension == "png")
                {
                    sMime = "image/png";
                }
                else if (sExtension == "tiff" || sExtension == "tif")
                {
                    sMime = "image/tiff";
                }
                else if (sExtension == "txt")
                {
                    sMime = "text/plain";
                }
            }

            return sMime;
        }

        public static string getImageSegunExtension(string sExtension)
        {
            string sMime = "images/Button-Download-icon.png";
            try
            {
                if (!string.IsNullOrEmpty(sExtension))
                {
                    sExtension = sExtension.Replace(".", "");
                    sExtension = sExtension.ToLower();

                    if (sExtension == "xls" || sExtension == "xlsx")
                    {
                        sMime = "images/Document-Microsoft-Excel-icon.png";
                    }
                    else if (sExtension == "doc" || sExtension == "docx")
                    {
                        sMime = "images/Document-Microsoft-Word-icon.png";
                    }
                    else if (sExtension == "ppt" || sExtension == "pptx")
                    {
                        sMime = "images/Document-Microsoft-PowerPoint-icon.png";
                    }
                    else if (sExtension == "rtf")
                    {
                        sMime = "images/Document-icon.png";
                    }
                    else if (sExtension == "pdf")
                    {
                        sMime = "images/Adobe-PDF-Document-icon.png";
                    }
                    else if (sExtension == "zip")
                    {
                        sMime = "images/folder-zip-icon.png";
                    }
                    else if (sExtension == "rar")
                    {
                        sMime = "images/folder-zip-icon.png";
                    }
                    else if (sExtension == "mp3")
                    {
                        sMime = "images/File-Audio-icon.png";
                    }
                    else if (sExtension == "bmp" || sExtension == "gif" || sExtension == "jpg" || sExtension == "jpeg" ||
                        sExtension == "png" || sExtension == "tiff" || sExtension == "tif")
                    {
                        sMime = "images/Image-PNG-icon.png";
                    }
                    else if (sExtension == "txt")
                    {
                        sMime = "images/Document-icon.png";
                    }
                    else if (sExtension == "avi" || sExtension == "mpg" || sExtension == "mpeg" || sExtension == "flv" || sExtension == "mp4")
                    {
                        sMime = "images/File-Video-icon.png";
                    }
                }
                return sMime;
            }
            catch
            {
                return sMime;
            }
        }

        public static byte[] ConvertFileToByte(string PathFile)
        {
            FileStream fileStream = new FileStream(PathFile, FileMode.Open, FileAccess.Read);
            BinaryReader binaryReader = new BinaryReader(fileStream);
            byte[] array = new byte[fileStream.Length];
            binaryReader.Read(array, 0, (int)fileStream.Length);
            binaryReader.Close();
            fileStream.Close();
            return array;
        }
    }
}