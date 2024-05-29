using Android.App;
using Android.OS;
using Android.Widget;
using System;
using System.IO;
using Android.Content.Res;
using HemocodAPP.Resources.BBDD;
using HemocodAPP.Resources.BBDD.Tablas;
using System.Linq;
//using Java.IO;

namespace HemocodAPP
{
    [Activity(Label = "etiquetaValidar")]
    public class etiquetaValidar : Activity
    {
        string tipo = "";
        string producto = "";
        string unidad = "";
        string donador = "";
        string fechas = "";
        string serologia = "";
        string fenotipo = "";
        TextView tvTipo, tvProducto, tvUnidad, tvDonador, tvFechas, tvSerologias, tvFenotipos;
        AssetManager assets;
        AppDatabase db;

        string[] splitFechas;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.etiquetaValidar);

            Android.Content.Intent intent = this.Intent;
            tipo = intent.GetStringExtra("textTipoSangre");
            producto = intent.GetStringExtra("textProducto");
            unidad = intent.GetStringExtra("textUnidad");
            donador = intent.GetStringExtra("textDonador");
            fechas = intent.GetStringExtra("textFecha");
            serologia = intent.GetStringExtra("textSerologia");
            fenotipo = intent.GetStringExtra("textFenotipo");

            tvTipo = FindViewById<TextView>(Resource.Id.tvTipo);
            tvProducto = FindViewById<TextView>(Resource.Id.tvProducto);
            tvUnidad = FindViewById<TextView>(Resource.Id.tvUnidad);
            tvDonador = FindViewById<TextView>(Resource.Id.tvDonador);
            tvFechas = FindViewById<TextView>(Resource.Id.tvFechas);
            tvSerologias = FindViewById<TextView>(Resource.Id.tvSerologias);
            tvFenotipos = FindViewById<TextView>(Resource.Id.tvFenotipos);

            assets = this.Assets;
            
            db = new AppDatabase(System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "myapp.db3"));
            validar();

            tvTipo.Text = tipo;
            tvProducto.Text = producto;
            tvUnidad.Text = unidad;
            tvDonador.Text = donador;
            tvFechas.Text = fechas;
            tvSerologias.Text = serologia;
            tvFenotipos.Text = fenotipo;
        }

        private void validar()
        {
            var configValidador = db.Table<ConfigValidador>().ToList();
            string linea = "";
            
            foreach (var item in configValidador)
            {
                switch (item.Elemento)
                {
                    case "tipoSangre":
                        tipoSangreValidar(item.Operacion, item.Valores.Split(","));
                        break;
                    case "producto":
                        productoValidar(item.Operacion, item.Valores.Split(","));
                        break;
                    case "unidad":
                        unidadValidar(item.Operacion, item.Valores.Split(","));
                        break;
                    case "donador":
                        donadorValidar(item.Operacion, item.Valores.Split(","));
                        break;
                    case "fechas":
                        fechasValidar(item.Operacion, item.Valores.Split(","));
                        break;
                    case "serologia":
                        serologiaValidar(item.Operacion, item.Valores.Split(","));
                        break;
                    case "fenotipo":
                        fenotipoValidar(item.Operacion, item.Valores.Split(","));
                        break;
                }
            }
            
            //using (StreamReader sr = new StreamReader(assets.Open("plantillas/validadorGobBC.txt")))
            //{
            //    while ((linea = sr.ReadLine()) != null)
            //    {
            //        string[] valores = linea.Split("#");
            //        string elemento = valores[0];
            //        string operaacion = valores[1];
            //        string[] elementos = valores[2].Split(",");
            //        switch (elemento)
            //        {
            //            case "tipoSangre":
            //                tipoSangreValidar(operaacion, elementos);
            //                break;
            //            case "producto":
            //                productoValidar(operaacion, elementos);
            //                break;
            //            case "unidad":
            //                unidadValidar(operaacion, elementos);
            //                break;
            //            case "donador":
            //                donadorValidar(operaacion, elementos);
            //                break;
            //            case "fechas":
            //                fechasValidar(operaacion, elementos);
            //                break;
            //            case "serologia":
            //                serologiaValidar(operaacion, elementos);
            //                break;
            //            case "fenotipo":
            //                fenotipoValidar(operaacion, elementos);      
            //                break;
            //        }

            //    }

            //}
        }

        private void tipoSangreValidar(string operacion, string[] elementos)
        {
            bool contiene = false;
            int i = 0;
            if (operacion == "contains")
            {
                while (i < elementos.Length && !contiene)
                {
                    if (elementos[i] == tipo)
                    {
                        contiene = true;
                    }
                    i++;
                }

                if (contiene)
                {
                    tvTipo.SetTextColor(Android.Graphics.Color.Green);
                }
                else
                {
                    tvTipo.SetTextColor(Android.Graphics.Color.Red);
                }
            }
        }
    
        private void productoValidar(string operaacion, string[] elementos)
        {
            bool correcto = false;
            if (operaacion == "replace")
            {
                if (producto.Contains(elementos[0]))
                {
                    correcto = false;
                    while (producto.Contains(elementos[0]))
                    {
                        producto = producto.Replace(elementos[0], elementos[1]);
                    }
                }
                else
                {
                    correcto = true;
                }

                if (correcto)
                {
                    tvProducto.SetTextColor(Android.Graphics.Color.Green);
                }
                else
                {
                    tvProducto.SetTextColor(Android.Graphics.Color.Red);
                }
            }
        }
    
        private void unidadValidar(string operaacion, string[] elementos)
        {
            bool correcto = false;

            if (operaacion == "contains")
            {
                if (!unidad.Contains(elementos[0]))
                {
                    correcto = false;
                    unidad = "=" + unidad;
                }
                else
                {
                    correcto = true;
                }
            }

            if (correcto)
            {
                tvUnidad.SetTextColor(Android.Graphics.Color.Green);
            }
            else
            {
                tvUnidad.SetTextColor(Android.Graphics.Color.Red);             
            }
        }
    
        private void donadorValidar(string operaacion, string[] elementos)
        {
            bool correcto = false;

            if (operaacion == "replace")
            {
                if (donador.Contains(elementos[0]))
                {
                    while (donador.Contains(elementos[0]))
                    {
                        donador = donador.Replace(elementos[0], elementos[1]);
                    }

                    correcto = false;
                }
                else { correcto = true; }

                if (correcto)
                {
                    tvDonador.SetTextColor(Android.Graphics.Color.Green);
                }
                else { tvDonador.SetTextColor(Android.Graphics.Color.Red); }
            }
        }
    
        private void fechasValidar(string operaacion, string[] elementos)
        {
            bool correcto = false;

            if (operaacion == "split")
            {
                splitFechas = fechas.Split(elementos[0]);
            }

            if (operaacion == "contains")
            {
                fechas = "";
                for (int i = 0; i < splitFechas.Length; i++)
                {
                    if (splitFechas[i].Contains(elementos[0]))
                    {
                        fechas += " " + splitFechas[i];

                        if (i + 1 < splitFechas.Length)
                        {
                            if (splitFechas[i + 1].Contains(elementos[1]))
                            {
                                fechas += " " + splitFechas[i + 1];
                            }
                        }

                        correcto = true;
                    }
                }
            }

            if (!correcto)
            {
                tvFechas.SetTextColor(Android.Graphics.Color.Red);
            }
            else
            {
                tvFechas.SetTextColor(Android.Graphics.Color.Green);
            }
        }
    
        private void serologiaValidar(string operaacion, string[] elementos)
        {
            bool correcto = false;

            if (operaacion == "contains")
            {
                String[] serologias = serologia.Split(" ");
                serologia = "";

                for (int i = 0; i < serologias.Length; i++)
                {
                    for (int j = 0; elementos.Length > j; j++)
                    {
                        if (serologias[i].Contains(elementos[j]))
                        {
                            serologia += " " + serologias[i];
                        }
                        correcto |= true;
                    }
                }
            }

            if (correcto)
            {
                tvSerologias.SetTextColor(Android.Graphics.Color.Green);
            }
            else
            {
                tvSerologias.SetTextColor (Android.Graphics.Color.Red);
            }
        }

        private void fenotipoValidar(string operaacion, string[] elementos)
        {
            bool correcto = false;
            if (operaacion == "contains")
            {
                String[] fenotipos = fenotipo.Split(" ");
                fenotipo = "";

                for (int i = 0; i < fenotipos.Length; i++)
                {
                    for (int j = 0; j < elementos.Length; j++)
                    {
                        if (fenotipos[i].Contains(elementos[j] + "-") || fenotipos[i].Contains(elementos[j] + "+"))
                        {
                            fenotipo += " " + fenotipos[i];
                        }
                        else
                        {
                            correcto = false;
                        }
                    }
                }

                if (correcto)
                {
                    tvFenotipos.SetTextColor(Android.Graphics.Color.Green);
                }
                else
                {
                    tvFenotipos.SetTextColor(Android.Graphics.Color.Red);
                }
            }
        }
    }
}