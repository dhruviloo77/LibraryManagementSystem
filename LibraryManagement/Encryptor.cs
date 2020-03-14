using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;


namespace LibraryManagement
{
    public class Encryptor
    {
        public static string EncryptText(string plainText)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            UnicodeEncoding text = new UnicodeEncoding();
            StringBuilder str = new StringBuilder();

            byte[] hash = md5.ComputeHash(text.GetBytes(plainText));

            for(int i = 0; i<hash.Length; i++)
            {
                //two digits of hexadecimal form
                str.Append(hash[i].ToString("x2"));
            }
            return str.ToString();
        }
        
    }
}