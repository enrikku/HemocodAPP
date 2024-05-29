package crc6455617c228f0cd0bd;


public class capturarImagen_PictureCallback
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.hardware.Camera.PictureCallback
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onPictureTaken:([BLandroid/hardware/Camera;)V:GetOnPictureTaken_arrayBLandroid_hardware_Camera_Handler:Android.Hardware.Camera/IPictureCallbackInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("HemocodAPP.capturarImagen+PictureCallback, HemocodAPP", capturarImagen_PictureCallback.class, __md_methods);
	}


	public capturarImagen_PictureCallback ()
	{
		super ();
		if (getClass () == capturarImagen_PictureCallback.class) {
			mono.android.TypeManager.Activate ("HemocodAPP.capturarImagen+PictureCallback, HemocodAPP", "", this, new java.lang.Object[] {  });
		}
	}

	public capturarImagen_PictureCallback (android.content.Context p0, crc6455617c228f0cd0bd.capturarImagen p1)
	{
		super ();
		if (getClass () == capturarImagen_PictureCallback.class) {
			mono.android.TypeManager.Activate ("HemocodAPP.capturarImagen+PictureCallback, HemocodAPP", "Android.Content.Context, Mono.Android:HemocodAPP.capturarImagen, HemocodAPP", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public void onPictureTaken (byte[] p0, android.hardware.Camera p1)
	{
		n_onPictureTaken (p0, p1);
	}

	private native void n_onPictureTaken (byte[] p0, android.hardware.Camera p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
