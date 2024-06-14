using System;
using System.IO;
using Android.OS;
using Android.App;
using Android.Widget;
using Android.Runtime;
using Android.Content;
using AndroidX.Core.App;
using Android.Content.PM;
using AndroidX.Core.Content;
using AndroidX.AppCompat.App;
using HemocodAPP.Resources.BBDD;

namespace HemocodAPP
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]

    public class MainActivity : AppCompatActivity
    {
        TextView txtAlb, txtTransf, txtExtrac;
        AppDatabase db;
        public static AppDatabase Database { get; private set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);

            txtAlb = FindViewById<TextView>(Resource.Id.txtAlb);
            txtTransf = FindViewById<TextView>(Resource.Id.txtTransf);
            txtExtrac = FindViewById<TextView>(Resource.Id.txtExtrac);

            txtAlb.Click += TxtAlb_Click;

            string dbPath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "myapp.db3");
            db = new AppDatabase(dbPath);
            //db.DropTableRectangulos();
            //db.DropTableRecortes();
            //db.DropTableValidador();

            // Las funciones comprueban si las tablas existen o no
            db.CrearTableRectangulos();
            db.CrearTableRecortes();
            db.CrearTableValidador();

            pedirPermisos();          
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        private void TxtAlb_Click(object sender, System.EventArgs e)
        {
            Intent intent = new Intent(this, typeof(albaran));
            StartActivity(intent);
        }

        #region FUNCIONES DE PERMISOS
        private void permisosCamera()
        {
            int r = 88;
            string cameraPermission = Android.Manifest.Permission.Camera;

            if (!(ContextCompat.CheckSelfPermission(this, cameraPermission) == (int)Permission.Granted))
            {
                ActivityCompat.RequestPermissions(this, new String[] { cameraPermission, }, r);
            }
        }

        private void permisosGaleria()
        {
            int r = 88;
            string galleryPermission = Android.Manifest.Permission.ReadExternalStorage;

            if (!(ContextCompat.CheckSelfPermission(this, galleryPermission) == (int)Permission.Granted))
            {
                ActivityCompat.RequestPermissions(this, new String[] { galleryPermission, }, r);
            }
        }

        private void pedirPermisos()
        {
            permisosCamera();
            permisosGaleria();
        }
        #endregion
    }
}