; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [222 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 6
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 41
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 66
	i64 233177144301842968, ; 3: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 42
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 67
	i64 316157742385208084, ; 5: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 45
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 57
	i64 687654259221141486, ; 7: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 79
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 97
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 53
	i64 870603111519317375, ; 10: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 11
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 50
	i64 931543661736232094, ; 12: Xamarin.GooglePlayServices.Vision.dll => 0xced82065a8e049e => 86
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 95
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 110
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 77
	i64 1203000703243994590, ; 16: Xamarin.GooglePlayServices.Vision.Common.dll => 0x10b1eac40d6745de => 85
	i64 1301485588176585670, ; 17: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 10
	i64 1315114680217950157, ; 18: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 36
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 101
	i64 1518315023656898250, ; 20: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 12
	i64 1580130977186145615, ; 21: System.Data.SQLite.EF6 => 0x15edc0c079c5654f => 18
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 34
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 59
	i64 1636321030536304333, ; 24: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 54
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 20
	i64 1795316252682057001, ; 26: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 35
	i64 1836611346387731153, ; 27: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 66
	i64 1875917498431009007, ; 28: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 31
	i64 1981742497975770890, ; 29: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 58
	i64 2064708342624596306, ; 30: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 90
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 62
	i64 2165725771938924357, ; 32: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 39
	i64 2262844636196693701, ; 33: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 50
	i64 2284400282711631002, ; 34: System.Web.Services => 0x1fb3d1f42fd4249a => 103
	i64 2287887973817120656, ; 35: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 106
	i64 2329709569556905518, ; 36: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 56
	i64 2337758774805907496, ; 37: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 24
	i64 2470498323731680442, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 44
	i64 2479423007379663237, ; 39: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 72
	i64 2497223385847772520, ; 40: System.Runtime => 0x22a7eb7046413568 => 25
	i64 2547086958574651984, ; 41: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 30
	i64 2592350477072141967, ; 42: System.Xml.dll => 0x23f9e10627330e8f => 29
	i64 2624866290265602282, ; 43: mscorlib.dll => 0x246d65fbde2db8ea => 7
	i64 2741613924229396860, ; 44: EntityFramework.SqlServer.dll => 0x260c2b56a0f5397c => 3
	i64 2783046991838674048, ; 45: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 24
	i64 2787234703088983483, ; 46: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 68
	i64 2815524396660695947, ; 47: System.Security.AccessControl => 0x2712c0857f68238b => 26
	i64 2827930352771509538, ; 48: System.Data.SQLite.dll => 0x273ed3ac3e7dad22 => 17
	i64 2851879596360956261, ; 49: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 15
	i64 3017704767998173186, ; 50: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 77
	i64 3289520064315143713, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 55
	i64 3303437397778967116, ; 52: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 32
	i64 3311221304742556517, ; 53: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 23
	i64 3344514922410554693, ; 54: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 93
	i64 3411255996856937470, ; 55: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 80
	i64 3493805808809882663, ; 56: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 70
	i64 3522470458906976663, ; 57: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 69
	i64 3531994851595924923, ; 58: System.Numerics => 0x31042a9aade235bb => 22
	i64 3571415421602489686, ; 59: System.Runtime.dll => 0x319037675df7e556 => 25
	i64 3716579019761409177, ; 60: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 61: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 65
	i64 3966267475168208030, ; 62: System.Memory => 0x370b03412596249e => 20
	i64 4135396472056126542, ; 63: Xamarin.GooglePlayServices.Flags.dll => 0x3963e12e5a4f1c4e => 82
	i64 4201423742386704971, ; 64: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 45
	i64 4247996603072512073, ; 65: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 84
	i64 4337444564132831293, ; 66: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 9
	i64 4525561845656915374, ; 67: System.ServiceModel.Internals => 0x3ece06856b710dae => 102
	i64 4540952821988815363, ; 68: System.Data.SQLite => 0x3f04b48858737203 => 17
	i64 4620536241703500132, ; 69: System.Data.SqlClient.dll => 0x401f713b2e8e3964 => 107
	i64 4636684751163556186, ; 70: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 74
	i64 4743821336939966868, ; 71: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 105
	i64 4782108999019072045, ; 72: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 38
	i64 4794310189461587505, ; 73: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 30
	i64 4795410492532947900, ; 74: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 69
	i64 5203618020066742981, ; 75: Xamarin.Essentials => 0x4836f704f0e652c5 => 76
	i64 5205316157927637098, ; 76: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 61
	i64 5266851800019912408, ; 77: System.Data.SqlClient => 0x49179dcea0d046d8 => 107
	i64 5376510917114486089, ; 78: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 72
	i64 5408338804355907810, ; 79: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 71
	i64 5507995362134886206, ; 80: System.Core.dll => 0x4c705499688c873e => 16
	i64 5574231584441077149, ; 81: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 33
	i64 5757522595884336624, ; 82: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 43
	i64 6183170893902868313, ; 83: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 9
	i64 6319713645133255417, ; 84: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 57
	i64 6401687960814735282, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 56
	i64 6504860066809920875, ; 86: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 39
	i64 6548213210057960872, ; 87: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 48
	i64 6591024623626361694, ; 88: System.Web.Services.dll => 0x5b7805f9751a1b5e => 103
	i64 6659513131007730089, ; 89: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 53
	i64 6876862101832370452, ; 90: System.Xml.Linq => 0x5f6f85a57d108914 => 104
	i64 6894844156784520562, ; 91: System.Numerics.Vectors => 0x5faf683aead1ad72 => 23
	i64 7103753931438454322, ; 92: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 52
	i64 7488575175965059935, ; 93: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 104
	i64 7637365915383206639, ; 94: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 76
	i64 7654504624184590948, ; 95: System.Net.Http => 0x6a3a4366801b8264 => 21
	i64 7735176074855944702, ; 96: Microsoft.CSharp => 0x6b58dda848e391fe => 5
	i64 7735352534559001595, ; 97: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 89
	i64 7820441508502274321, ; 98: System.Data => 0x6c87ca1e14ff8111 => 94
	i64 7836164640616011524, ; 99: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 34
	i64 8044118961405839122, ; 100: System.ComponentModel.Composition => 0x6fa2739369944712 => 100
	i64 8083354569033831015, ; 101: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 55
	i64 8103644804370223335, ; 102: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 96
	i64 8167236081217502503, ; 103: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8187640529827139739, ; 104: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 92
	i64 8318905602908530212, ; 105: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 106
	i64 8476857680833348370, ; 106: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 27
	i64 8601935802264776013, ; 107: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 71
	i64 8626175481042262068, ; 108: Java.Interop => 0x77b654e585b55834 => 4
	i64 8638972117149407195, ; 109: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 5
	i64 8684531736582871431, ; 110: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 99
	i64 8853378295825400934, ; 111: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 88
	i64 8951477988056063522, ; 112: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 64
	i64 9324707631942237306, ; 113: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 35
	i64 9662334977499516867, ; 114: System.Numerics.dll => 0x8617827802b0cfc3 => 22
	i64 9678050649315576968, ; 115: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 44
	i64 9808709177481450983, ; 116: Mono.Android.dll => 0x881f890734e555e7 => 6
	i64 9825649861376906464, ; 117: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 43
	i64 9834056768316610435, ; 118: System.Transactions.dll => 0x8879968718899783 => 95
	i64 9875200773399460291, ; 119: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 79
	i64 9924019376719386149, ; 120: EntityFramework => 0x89b9330b1d73d625 => 2
	i64 9959489431142554298, ; 121: System.CodeDom => 0x8a3736deb7825aba => 14
	i64 9998632235833408227, ; 122: Mono.Security => 0x8ac2470b209ebae3 => 110
	i64 10038780035334861115, ; 123: System.Net.Http.dll => 0x8b50e941206af13b => 21
	i64 10226222362177979215, ; 124: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 90
	i64 10229024438826829339, ; 125: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 48
	i64 10284478723018932102, ; 126: Xamarin.GooglePlayServices.Clearcut => 0x8eb9cee8b99b3f86 => 81
	i64 10321854143672141184, ; 127: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 87
	i64 10376576884623852283, ; 128: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 70
	i64 10406448008575299332, ; 129: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 93
	i64 10430153318873392755, ; 130: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 46
	i64 10722976995944589488, ; 131: EntityFramework.dll => 0x94cfaac3d9f668b0 => 2
	i64 10847732767863316357, ; 132: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 36
	i64 11019817191295005410, ; 133: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 33
	i64 11023048688141570732, ; 134: System.Core => 0x98f9bc61168392ac => 16
	i64 11037814507248023548, ; 135: System.Xml => 0x992e31d0412bf7fc => 29
	i64 11162124722117608902, ; 136: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 75
	i64 11299661109949763898, ; 137: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 42
	i64 11340910727871153756, ; 138: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 47
	i64 11341245327015630248, ; 139: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 15
	i64 11392833485892708388, ; 140: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 63
	i64 11437268317332739187, ; 141: Xamarin.GooglePlayServices.Vision.Common => 0x9eb956eff7729473 => 85
	i64 11529969570048099689, ; 142: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 75
	i64 11580057168383206117, ; 143: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 31
	i64 11591352189662810718, ; 144: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 68
	i64 11597940890313164233, ; 145: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 146: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 52
	i64 11739066727115742305, ; 147: SQLite-net.dll => 0xa2e98afdf8575c61 => 8
	i64 11806260347154423189, ; 148: SQLite-net => 0xa3d8433bc5eb5d95 => 8
	i64 12011556116648931059, ; 149: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 108
	i64 12063623837170009990, ; 150: System.Security => 0xa76a99f6ce740786 => 109
	i64 12102847907131387746, ; 151: System.Buffers => 0xa7f5f40c43256f62 => 13
	i64 12137774235383566651, ; 152: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 73
	i64 12279246230491828964, ; 153: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 12
	i64 12451044538927396471, ; 154: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 51
	i64 12466513435562512481, ; 155: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 60
	i64 12487638416075308985, ; 156: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 49
	i64 12538491095302438457, ; 157: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 40
	i64 12550732019250633519, ; 158: System.IO.Compression => 0xae2d28465e8e1b2f => 98
	i64 12700543734426720211, ; 159: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 41
	i64 12828192437253469131, ; 160: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 91
	i64 12963446364377008305, ; 161: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 97
	i64 13162471042547327635, ; 162: System.Security.Permissions => 0xb6aa7dace9662293 => 27
	i64 13370592475155966277, ; 163: System.Runtime.Serialization => 0xb98de304062ea945 => 101
	i64 13401370062847626945, ; 164: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 73
	i64 13454009404024712428, ; 165: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 78
	i64 13465488254036897740, ; 166: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 89
	i64 13491513212026656886, ; 167: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 37
	i64 13572454107664307259, ; 168: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 65
	i64 13647894001087880694, ; 169: System.Data.dll => 0xbd670f48cb071df6 => 94
	i64 13652358146197471957, ; 170: Xamarin.GooglePlayServices.Phenotype.dll => 0xbd76eb669282c2d5 => 83
	i64 13710614125866346983, ; 171: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 26
	i64 13828521679616088467, ; 172: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 88
	i64 13959074834287824816, ; 173: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 51
	i64 14124974489674258913, ; 174: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 40
	i64 14172845254133543601, ; 175: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 62
	i64 14261073672896646636, ; 176: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 63
	i64 14644440854989303794, ; 177: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 61
	i64 14692901332764465506, ; 178: Xamarin.GooglePlayServices.Clearcut.dll => 0xcbe7abea734a1962 => 81
	i64 14792063746108907174, ; 179: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 78
	i64 14852515768018889994, ; 180: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 47
	i64 14912225920358050525, ; 181: System.Security.Principal.Windows => 0xcef2de7759506add => 28
	i64 14987728460634540364, ; 182: System.IO.Compression.dll => 0xcfff1ba06622494c => 98
	i64 14988210264188246988, ; 183: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 49
	i64 15150743910298169673, ; 184: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 64
	i64 15279429628684179188, ; 185: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 92
	i64 15370334346939861994, ; 186: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 46
	i64 15582737692548360875, ; 187: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 59
	i64 15609085926864131306, ; 188: System.dll => 0xd89e9cf3334914ea => 19
	i64 15777549416145007739, ; 189: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 67
	i64 15930129725311349754, ; 190: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 84
	i64 15949201339826161972, ; 191: Xamarin.GooglePlayServices.Flags => 0xdd56f21db785c934 => 82
	i64 16154507427712707110, ; 192: System => 0xe03056ea4e39aa26 => 19
	i64 16337011941688632206, ; 193: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 28
	i64 16423015068819898779, ; 194: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 91
	i64 16565028646146589191, ; 195: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 100
	i64 16755018182064898362, ; 196: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 10
	i64 16822611501064131242, ; 197: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 96
	i64 16833383113903931215, ; 198: mscorlib => 0xe99c30c1484d7f4f => 7
	i64 17024911836938395553, ; 199: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 32
	i64 17037200463775726619, ; 200: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 54
	i64 17187273293601214786, ; 201: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 105
	i64 17461180064412818065, ; 202: Xamarin.GooglePlayServices.Phenotype => 0xf25292c15a755a91 => 83
	i64 17505446192642817782, ; 203: HemocodAPP => 0xf2efd6907b307ef6 => 0
	i64 17523946658117960076, ; 204: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 108
	i64 17544493274320527064, ; 205: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 38
	i64 17704177640604968747, ; 206: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 60
	i64 17710060891934109755, ; 207: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 58
	i64 17743407583038752114, ; 208: System.CodeDom.dll => 0xf63d3f302bff4572 => 14
	i64 17838668724098252521, ; 209: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 13
	i64 17891337867145587222, ; 210: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 87
	i64 17912272203108103761, ; 211: HemocodAPP.dll => 0xf8952caa5a5cb651 => 0
	i64 17928294245072900555, ; 212: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 99
	i64 17974058532771565784, ; 213: System.Data.SQLite.EF6.dll => 0xf970af0141ed90d8 => 18
	i64 17981332794496557478, ; 214: EntityFramework.SqlServer => 0xf98a86e84c0ca1a6 => 3
	i64 17986907704309214542, ; 215: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 80
	i64 18099498942812077871, ; 216: Xamarin.GooglePlayServices.Vision => 0xfb2e5664aadf3f2f => 86
	i64 18116111925905154859, ; 217: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 37
	i64 18129453464017766560, ; 218: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 102
	i64 18318849532986632368, ; 219: System.Security.dll => 0xfe39a097c37fa8b0 => 109
	i64 18370042311372477656, ; 220: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 11
	i64 18380184030268848184 ; 221: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 74
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [222 x i32] [
	i32 6, i32 41, i32 66, i32 42, i32 67, i32 45, i32 57, i32 79, ; 0..7
	i32 97, i32 53, i32 11, i32 50, i32 86, i32 95, i32 110, i32 77, ; 8..15
	i32 85, i32 10, i32 36, i32 101, i32 12, i32 18, i32 34, i32 59, ; 16..23
	i32 54, i32 20, i32 35, i32 66, i32 31, i32 58, i32 90, i32 62, ; 24..31
	i32 39, i32 50, i32 103, i32 106, i32 56, i32 24, i32 44, i32 72, ; 32..39
	i32 25, i32 30, i32 29, i32 7, i32 3, i32 24, i32 68, i32 26, ; 40..47
	i32 17, i32 15, i32 77, i32 55, i32 32, i32 23, i32 93, i32 80, ; 48..55
	i32 70, i32 69, i32 22, i32 25, i32 1, i32 65, i32 20, i32 82, ; 56..63
	i32 45, i32 84, i32 9, i32 102, i32 17, i32 107, i32 74, i32 105, ; 64..71
	i32 38, i32 30, i32 69, i32 76, i32 61, i32 107, i32 72, i32 71, ; 72..79
	i32 16, i32 33, i32 43, i32 9, i32 57, i32 56, i32 39, i32 48, ; 80..87
	i32 103, i32 53, i32 104, i32 23, i32 52, i32 104, i32 76, i32 21, ; 88..95
	i32 5, i32 89, i32 94, i32 34, i32 100, i32 55, i32 96, i32 4, ; 96..103
	i32 92, i32 106, i32 27, i32 71, i32 4, i32 5, i32 99, i32 88, ; 104..111
	i32 64, i32 35, i32 22, i32 44, i32 6, i32 43, i32 95, i32 79, ; 112..119
	i32 2, i32 14, i32 110, i32 21, i32 90, i32 48, i32 81, i32 87, ; 120..127
	i32 70, i32 93, i32 46, i32 2, i32 36, i32 33, i32 16, i32 29, ; 128..135
	i32 75, i32 42, i32 47, i32 15, i32 63, i32 85, i32 75, i32 31, ; 136..143
	i32 68, i32 1, i32 52, i32 8, i32 8, i32 108, i32 109, i32 13, ; 144..151
	i32 73, i32 12, i32 51, i32 60, i32 49, i32 40, i32 98, i32 41, ; 152..159
	i32 91, i32 97, i32 27, i32 101, i32 73, i32 78, i32 89, i32 37, ; 160..167
	i32 65, i32 94, i32 83, i32 26, i32 88, i32 51, i32 40, i32 62, ; 168..175
	i32 63, i32 61, i32 81, i32 78, i32 47, i32 28, i32 98, i32 49, ; 176..183
	i32 64, i32 92, i32 46, i32 59, i32 19, i32 67, i32 84, i32 82, ; 184..191
	i32 19, i32 28, i32 91, i32 100, i32 10, i32 96, i32 7, i32 32, ; 192..199
	i32 54, i32 105, i32 83, i32 0, i32 108, i32 38, i32 60, i32 58, ; 200..207
	i32 14, i32 13, i32 87, i32 0, i32 99, i32 18, i32 3, i32 80, ; 208..215
	i32 86, i32 37, i32 102, i32 109, i32 11, i32 74 ; 216..221
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
