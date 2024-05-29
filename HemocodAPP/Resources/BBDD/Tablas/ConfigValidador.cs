using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HemocodAPP.Resources.BBDD.Tablas
{
    public class ConfigValidador
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Hospital { get; set; }
        public string Elemento { get; set; }
        public string Operacion { get; set; }
        public string Valores { get; set; }
    }
}