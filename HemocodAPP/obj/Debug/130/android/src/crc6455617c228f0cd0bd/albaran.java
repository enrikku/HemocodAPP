package crc6455617c228f0cd0bd;


public class albaran
	extends androidx.appcompat.app.AppCompatActivity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"";
		mono.android.Runtime.register ("HemocodAPP.albaran, HemocodAPP", albaran.class, __md_methods);
	}


	public albaran ()
	{
		super ();
		if (getClass () == albaran.class) {
			mono.android.TypeManager.Activate ("HemocodAPP.albaran, HemocodAPP", "", this, new java.lang.Object[] {  });
		}
	}


	public albaran (int p0)
	{
		super (p0);
		if (getClass () == albaran.class) {
			mono.android.TypeManager.Activate ("HemocodAPP.albaran, HemocodAPP", "System.Int32, mscorlib", this, new java.lang.Object[] { p0 });
		}
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);

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
