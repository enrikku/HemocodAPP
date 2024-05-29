using Android.Telephony;
using HemocodAPP.Resources.BBDD.Tablas;
using SQLite;

namespace HemocodAPP.Resources.BBDD
{
    public class AppDatabase : SQLiteConnection
    {
        public AppDatabase(string path) : base(path)
        {            
           
        }

       

        public void CrearTableRectangulos()
        {
            CreateTable<ConfigRectangulos>();

            if (ConfigRectangulos.Count() == 0)
            {
                InsertsRectangulos();
            }
        }

        public void CrearTableRecortes() 
        {
            CreateTable<ConfigRecortes>();
            
            if(ConfigRecortes.Count() == 0)
            {
                InsertsRecortes(); 
            }
        }

        public void CrearTableValidador()
        {
            CreateTable<ConfigValidador>();

            if (ConfigValidador.Count() == 0)
            {
                InsertsValidador();
            }
        }


        private void InsertsRectangulos()
        {
            /* Datos Rectangulos */
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "general", Left = 0.05f, Top = 0.07f, Right = 0.95f, Bottom = 0.7f });
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "tipoSangre", Left = 0.2f, Top = 0.15f, Right = 0.7f, Bottom = 0.1f });
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "producto", Left = 0.1f, Top = 0.2f, Right = 0.5f, Bottom = 0.23f });
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "unidad", Left = 0.1f, Top = 0.28f, Right = 0.5f, Bottom = 0.35f });
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "donador", Left = 0.05f, Top = 0.35f, Right = 0.6f, Bottom = 0.42f });
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "fechas", Left = 0.05f, Top = 0.48f, Right = 0.4f, Bottom = 0.42f });
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "serologia", Left = 0.6f, Top = 0.18f, Right = 0.9f, Bottom = 0.35f });
            Insert(new ConfigRectangulos { Hospital = "GobBC", Elemento = "fenotipos", Left = 0.66f, Top = 0.35f, Right = 0.9f, Bottom = 0.4f });
        }

        private void InsertsRecortes()
        {
            /* Datos Recortes */
            Insert(new ConfigRecortes { Hospital = "GobBC", Elemento = "tipoSangre", Width = 900, Height = 250, X = 900, Y = 400 });
            Insert(new ConfigRecortes { Hospital = "GobBC", Elemento = "producto", Width = 710, Height = 100, X = 700, Y = 800 });
            Insert(new ConfigRecortes { Hospital = "GobBC", Elemento = "unidad", Width = 900, Height = 300, X = 580, Y = 1100 });
            Insert(new ConfigRecortes { Hospital = "GobBC", Elemento = "donador", Width = 1100, Height = 300, X = 500, Y = 1400 });
            Insert(new ConfigRecortes { Hospital = "GobBC", Elemento = "fechas", Width = 800, Height = 200, X = 500, Y = 1650 });
            Insert(new ConfigRecortes { Hospital = "GobBC", Elemento = "serologia", Width = 600, Height = 800, X = 1700, Y = 600 });
            Insert(new ConfigRecortes { Hospital = "GobBC", Elemento = "fenotipos", Width = 400, Height = 250, X = 1900, Y = 1400 });
        }

        private void InsertsValidador()
        {
            /* Datos Validador */
            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "tipoSangre", Operacion = "contains", Valores = "A2B Neg,A1 Neg,A+,A-,B+,B-,AB+,AB-,O+,O-" });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "producto", Operacion = "replace", Valores = "O,0" });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "unidad", Operacion = "contains", Valores = "=" });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "donador", Operacion = "replace", Valores = "Donador:, " });
            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "donador", Operacion = "replace", Valores = "Donador, " });
            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "donador", Operacion = "replace", Valores = "Donador., " });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "fechas", Operacion = "split", Valores = " " });
            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "fechas", Operacion = "contains", Valores = "/,:" });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "serologia", Operacion = "contains", Valores = "HIV,HBV,HCV,Sífilis,Sifilis,Chagas,Brucella" });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "fenotipo", Operacion = "contains", Valores = "Kpa,K,Kpb,Cw,s,k,N,S,Jkb,Leb,P1,Jka,Fya,Fyb,Lua,Lub,M,Lea,C,c,E,e,D,Dia,Mia,I,H,Dib,V,Xga,f,i,Tja,U,Vel,B19,Jsa,Jsb,Doa,Dob,Ina,Cob,Vsv,A1" });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "anticuerpos", Operacion = "contains", Valores = "EAI:" });
            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "anticuerpos", Operacion = "contains", Valores = "EAI" });
            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "anticuerpos", Operacion = "contains", Valores = "EAI " });

            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "volumen", Operacion = "contains", Valores = "Volumen" });
            Insert(new ConfigValidador { Hospital = "GobBC", Elemento = "volumen", Operacion = "contains", Valores = "Volumen:" });
        }

        public void DropTableRecortes()
        {
            DropTable<ConfigRecortes>();
        }

        public void DropTableRectangulos()
        {
            DropTable<ConfigRectangulos>();
        }

        public void DropTableValidador()
        {
            DropTable<ConfigValidador>();
        }

        public TableQuery<ConfigRecortes> ConfigRecortes => Table<ConfigRecortes>();
        public TableQuery<ConfigRectangulos> ConfigRectangulos => Table<ConfigRectangulos>();
        public TableQuery<ConfigValidador> ConfigValidador => Table<ConfigValidador>();
    }
}