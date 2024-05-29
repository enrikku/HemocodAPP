using global::System;
using global::Android.App;
using global::Android.Widget;
using global::Android.Views;
using global::Android.OS;

namespace Binding
{
	sealed class albaran : global::Xamarin.Android.Design.LayoutBinding
	{

		[global::Android.Runtime.PreserveAttribute (Conditional=true)]
		public albaran (
			global::Android.App.Activity client,
			global::Xamarin.Android.Design.OnLayoutItemNotFoundHandler itemNotFoundHandler = null)
				: base (client, itemNotFoundHandler)
		{}

		[global::Android.Runtime.PreserveAttribute (Conditional=true)]
		public albaran (
			global::Android.Views.View client,
			global::Xamarin.Android.Design.OnLayoutItemNotFoundHandler itemNotFoundHandler = null)
				: base (client, itemNotFoundHandler)
		{}


		#line 14 "Resources\layout\albaran.xml"

		TextView __txtAlb;

		#line default
		#line hidden

		#line 14 "Resources\layout\albaran.xml"

		// Declared in: Resources\layout\albaran.xml:(14:10)
		// Declared in: Resources\layout\albaran.xml:(14:10)
		public TextView txtAlb => FindView (global::HemocodAPP.Resource.Id.txtAlb, ref __txtAlb);

		#line default
		#line hidden


		#line 22 "Resources\layout\albaran.xml"

		EditText __edAlb;

		#line default
		#line hidden

		#line 22 "Resources\layout\albaran.xml"

		// Declared in: Resources\layout\albaran.xml:(22:10)
		// Declared in: Resources\layout\albaran.xml:(22:10)
		public EditText edAlb => FindView (global::HemocodAPP.Resource.Id.edAlb, ref __edAlb);

		#line default
		#line hidden


		#line 42 "Resources\layout\albaran.xml"

		Button __btnCancel;

		#line default
		#line hidden

		#line 42 "Resources\layout\albaran.xml"

		// Declared in: Resources\layout\albaran.xml:(42:10)
		// Declared in: Resources\layout\albaran.xml:(42:10)
		public Button btnCancel => FindView (global::HemocodAPP.Resource.Id.btnCancel, ref __btnCancel);

		#line default
		#line hidden


		#line 49 "Resources\layout\albaran.xml"

		Button __btnAccept;

		#line default
		#line hidden

		#line 49 "Resources\layout\albaran.xml"

		// Declared in: Resources\layout\albaran.xml:(49:10)
		// Declared in: Resources\layout\albaran.xml:(49:10)
		public Button btnAccept => FindView (global::HemocodAPP.Resource.Id.btnAccept, ref __btnAccept);

		#line default
		#line hidden

	}
}
