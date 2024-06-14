using Android.OS;
using Android.App;
using Android.Widget;
using Android.Content;
using AndroidX.AppCompat.App;

namespace HemocodAPP
{
    [Activity(Label = "Albaran")]
    internal class albaran : AppCompatActivity
    {
        Button btnAccpet,btnCancel;
        EditText edAlb;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.albaran);

            btnAccpet = FindViewById<Button>(Resource.Id.btnAccept);
            btnCancel = FindViewById<Button>(Resource.Id.btnCancel);
            edAlb = FindViewById<EditText>(Resource.Id.edAlb);

            btnAccpet.Click += BtnAccpet_Click;
            btnCancel.Click += BtnCancel_Click;  
        }

        private void BtnAccpet_Click(object sender, System.EventArgs e)
        {
            if(edAlb != null && edAlb.Text != "")
            {
                Intent intent = new Intent(this, typeof(capturarImagen));
                StartActivity(intent);
            }
        }

        private void BtnCancel_Click(object sender, System.EventArgs e)
        {
            Intent intent = new Intent(this, typeof(MainActivity));
            StartActivity(intent);
        }
    }
}