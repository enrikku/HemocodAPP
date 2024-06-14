using System;
using Android;
using Java.Lang;
using Android.OS;
using Android.App;
using Android.Util;
using Android.Views;
using Android.Widget;
using Android.Content;
using Android.Graphics;
using AndroidX.Core.App;
using Android.Gms.Vision;
using Android.Content.PM;
using Android.Content.Res;
using AndroidX.Core.Content;
using Android.Gms.Vision.Texts;
using HemocodAPP.Resources.BBDD;
using Android.Graphics.Drawables;
using HemocodAPP.Resources.BBDD.Tablas;

namespace HemocodAPP
{
    [Activity(Label = "capturarImagen")]
    public class capturarImagen : Activity, TextureView.ISurfaceTextureListener
    {
        Android.Hardware.Camera camera;
        public TextureView textureView;
        private View overlayView;
        private ImageView imageView, img;
        private Button btnCapture;

        string textTipoSangre = "";
        string textProducto = "";
        string textUnidad = "";
        string textDonador = "";
        string textFecha = "";
        string textSerologia = "";
        string textFenotipo = "";

        TextView text;

        AppDatabase db;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.capturarImagen);

            if (ContextCompat.CheckSelfPermission(this, Manifest.Permission.WriteExternalStorage) != Permission.Granted)
            {
                int requestCode = 0;
                ActivityCompat.RequestPermissions(this, new string[] { Manifest.Permission.WriteExternalStorage }, requestCode);
            }
            textureView = FindViewById<TextureView>(Resource.Id.textureView);
            textureView.SurfaceTextureListener = this;
            overlayView = FindViewById<View>(Resource.Id.overlayView);

            btnCapture = FindViewById<Button>(Resource.Id.btnCapture);
            btnCapture.Click += BtnCapture_Click;
            //imageView = FindViewById<ImageView>(Resource.Id.imageView);
            img = FindViewById<ImageView>(Resource.Id.img);
            text = FindViewById<TextView>(Resource.Id.text);
            text.SetTextColor(Color.Blue);

            overlayView.ViewTreeObserver.GlobalLayout += (sender, args) =>
            {
                DrawRectangles();
            };

            db = new AppDatabase(System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "myapp.db3"));
        }

        public Bitmap GetBitmapChunk(Bitmap originalBitmap, int rectWidth, int rectHeight, int x, int y)
        {
            Rect rect = new Rect(x, y, x + rectWidth, y + rectHeight);

            Bitmap chunk = Bitmap.CreateBitmap(originalBitmap, rect.Left, rect.Top, rect.Width(), rect.Height());

            return chunk;
        }

        private void BtnCapture_Click(object sender, EventArgs e)
        {
            if (camera != null)
            {
                try
                {
                    camera.TakePicture(null, null, new PictureCallback(this, this));
                    Toast.MakeText(this, "Capturando...", ToastLength.Short).Show();
                }
                catch (Java.IO.IOException ex)
                {
                    Toast.MakeText(this, "Error al capturar la imagen: " + ex.Message, ToastLength.Short).Show();
                }
            }
        }

        private class PictureCallback : Java.Lang.Object, Android.Hardware.Camera.IPictureCallback
        {
            private Context context;
            private capturarImagen activity;
            public PictureCallback(Context context, capturarImagen activity)
            {
                this.context = context;
                this.activity = activity;
            }

            public void OnPictureTaken(byte[] data, Android.Hardware.Camera camera)
            {
                try
                {
                    Bitmap originalBitmap = BitmapFactory.DecodeByteArray(data, 0, data.Length);
                    Android.Graphics.Matrix matrix = new Android.Graphics.Matrix();
                    matrix.PostRotate(90);
                    Bitmap rotatedBitmap = Bitmap.CreateBitmap(originalBitmap, 0, 0, originalBitmap.Width, originalBitmap.Height, matrix, true);

                    int desiredWidth = 2992;
                    int desiredHeight = 4000;
                    rotatedBitmap = Bitmap.CreateScaledBitmap(rotatedBitmap, desiredWidth, desiredHeight, true);

                    activity.recortar(rotatedBitmap);
     
                    //width height x  y

                    // Liberar recursos de Bitmap
                    originalBitmap.Recycle();
                    rotatedBitmap.Recycle();

                    originalBitmap.Dispose();
                    rotatedBitmap.Dispose();

                    // Reiniciar la vista previa de la cámara
                    camera.StartPreview();                   

                    Intent intent = new Intent(context, typeof(etiquetaValidar));
                    intent.PutExtra("textTipoSangre", activity.textTipoSangre);
                    intent.PutExtra("textProducto", activity.textProducto);
                    intent.PutExtra("textUnidad", activity.textUnidad);
                    intent.PutExtra("textDonador", activity.textDonador);
                    intent.PutExtra("textFecha", activity.textFecha);
                    intent.PutExtra("textSerologia", activity.textSerologia);
                    intent.PutExtra("textFenotipo", activity.textFenotipo);
                    activity.StartActivity(intent);
                }
                catch (Java.IO.IOException ex)
                {
                    // Manejar la excepción
                    Toast.MakeText(context, ex.Message, ToastLength.Short).Show();
                }
            }
        }

        private void recortar(Bitmap bitmap)
        {
            Bitmap chunk = null;
            AssetManager assets = this.Assets;
            string linea = "";

            var configRecortes = db.Table<ConfigRecortes>().ToList();

            foreach (var item in configRecortes)
            {
                switch (item.Elemento)
                {
                    case "tipoSangre":
                        chunk = GetBitmapChunk(bitmap, item.Width, item.Height, item.X, item.Y);
                        textTipoSangre = leerImg(chunk);
                        break;
                    case "producto":
                        chunk = GetBitmapChunk(bitmap, item.Width, item.Height, item.X, item.Y);
                        textProducto = leerImg(chunk);
                        break;
                    case "unidad":
                        chunk = GetBitmapChunk(bitmap, item.Width, item.Height, item.X, item.Y);
                        textUnidad = leerImg(chunk);
                        break;
                    case "donador":
                        chunk = GetBitmapChunk(bitmap, item.Width, item.Height, item.X, item.Y);
                        textDonador = leerImg(chunk);
                        break;
                    case "fechas":
                        chunk = GetBitmapChunk(bitmap, item.Width, item.Height, item.X, item.Y);
                        textFecha = leerImg(chunk);
                        break;
                    case "serologia":
                        chunk = GetBitmapChunk(bitmap, item.Width, item.Height, item.X, item.Y);
                        textSerologia = leerImg(chunk);
                        break;
                    case "fenotipos":
                        chunk = GetBitmapChunk(bitmap, item.Width, item.Height, item.X, item.Y);
                        textFenotipo = leerImg(chunk);
                        break;
                }
            }
            // SIN BASE DE DATOS \\
            /*using (StreamReader sr = new StreamReader(assets.Open("plantillas/recorteImagenBobBC.txt")))
            {
                while ((linea = sr.ReadLine()) != null)
                {
                    string[] valores = linea.Split(" ");
                    string elemento = valores[0];

                    int width = int.Parse(valores[1]);
                    int height = int.Parse(valores[2]);
                    int x = int.Parse(valores[3]);
                    int y = int.Parse(valores[4]);

                    switch (elemento)
                    {
                        case "tipoSangre":
                            chunk = GetBitmapChunk(bitmap, width, height, x, y);
                            textTipoSangre = leerImg(chunk);
                            break;
                        case "producto":
                            chunk = GetBitmapChunk(bitmap, width, height, x, y);
                            textProducto = leerImg(chunk);
                            break;
                        case "unidad":
                            chunk = GetBitmapChunk(bitmap, width, height, x, y);
                            textUnidad = leerImg(chunk);
                            break;
                        case "donador":
                            chunk = GetBitmapChunk(bitmap, width, height, x, y);
                            textDonador = leerImg(chunk);
                            break;
                        case "fechas":
                            chunk = GetBitmapChunk(bitmap, width, height, x, y);
                            textFecha = leerImg(chunk);
                            break;
                        case "serologia":
                            chunk = GetBitmapChunk(bitmap, width, height, x, y);
                            textSerologia = leerImg(chunk);
                            break;
                        case "fenotipos":
                            chunk = GetBitmapChunk(bitmap, width, height, x, y);
                            textFenotipo = leerImg(chunk);
                            break;
                    }
                }
            }*/
        }

        private void DrawRectangles()
        {
            int width = overlayView.Width;
            int height = overlayView.Height;

            Bitmap bitmap = Bitmap.CreateBitmap(width, height, Bitmap.Config.Argb8888);
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            paint.Color = Color.Red;
            paint.SetStyle(Paint.Style.Stroke);
            paint.StrokeWidth = 2;
            AssetManager assets = this.Assets;
            string linea = "";
            var configRectangulos = db.Table<ConfigRectangulos>().ToList();

            foreach (var item in configRectangulos)
            {
                float l = width * item.Left;
                float t = height * item.Top;
                float r = width * item.Right;
                float b = height * item.Bottom;

                canvas.DrawRect(l, t, r, b, paint);
            }

            // SIN BASE DE DATOS \\
            /*using (StreamReader sr = new StreamReader(assets.Open("plantillas/rectangulosGobBC.txt")))
            {
                while ((linea = sr.ReadLine()) != null)
                {
                    float a = float.Parse("41.00027357629127");

                    string[] valores = linea.Split(" ");
                    float l = width * float.Parse(valores[1], CultureInfo.InvariantCulture);
                    float t = height * float.Parse(valores[2], CultureInfo.InvariantCulture);
                    float r = width * float.Parse(valores[3], CultureInfo.InvariantCulture);
                    float b = height * float.Parse(valores[4], CultureInfo.InvariantCulture);

                    canvas.DrawRect(l, t, r, b, paint);
                }
            }*/
            overlayView.Background = new BitmapDrawable(Resources, bitmap);
        }

        string leerImg(Bitmap bitmap)
        {
            Frame frame = new Frame.Builder().SetBitmap(bitmap).Build();
            TextRecognizer textRecognizer = new TextRecognizer.Builder(ApplicationContext).Build();

            if (!textRecognizer.IsOperational)
            {
                Toast.MakeText(this, "Text recognition is not available", ToastLength.Short).Show();
                return "";
            }

            SparseArray items = textRecognizer.Detect(frame);

            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < items.Size(); i++)
            {
                TextBlock item = (TextBlock)items.ValueAt(i);
                stringBuilder.Append(item.Value);
                stringBuilder.Append("\n");
            }

            ClipboardManager clipboard = (ClipboardManager)GetSystemService(Context.ClipboardService);
            //Toast.MakeText(this, stringBuilder.ToString(), ToastLength.Short).Show();

            string text = stringBuilder.ToString();

            if (text.Contains("\n"))
            {
                while (text.Contains("\n"))
                {
                    text = stringBuilder.ToString().Replace("\n", " ");
                } 
            }

            return text.Trim();
        }

        public void OnSurfaceTextureAvailable(SurfaceTexture surface, int width, int height)
        {
            try
            {
                camera = Android.Hardware.Camera.Open();
                camera.SetPreviewTexture(surface);
                camera.SetDisplayOrientation(90);
                OnAutoFocus(true, camera);
                camera.StartPreview();
            }
            catch (Java.IO.IOException ex)
            {
                Toast.MakeText(this, "Error setting camera preview: " + ex.Message, ToastLength.Short).Show();
            }
        }

        public void OnAutoFocus(bool success, Android.Hardware.Camera camera)
        {
            var parameters = camera.GetParameters();
            if (parameters.FocusMode != Android.Hardware.Camera.Parameters.FocusModeContinuousPicture)
            {
                parameters.FocusMode = Android.Hardware.Camera.Parameters.FocusModeContinuousPicture;

                if (parameters.MaxNumFocusAreas > 0)
                {
                    parameters.FocusAreas = null;
                }
                camera.SetParameters(parameters);
                camera.StartPreview();
            }
        }

        public bool OnSurfaceTextureDestroyed(SurfaceTexture surface)
        {
            camera.StopPreview();
            camera.Release();
            return true;
        }

        public void OnSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height)
        {
            // No se implementa aquí
        }

        public void OnSurfaceTextureUpdated(SurfaceTexture surface)
        {
            // No se implementa aquí
        }      
    }
}