; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [222 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 57
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 78
	i32 101534019, ; 2: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 67
	i32 120558881, ; 3: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 67
	i32 134690465, ; 4: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 90
	i32 159306688, ; 5: System.ComponentModel.Annotations => 0x97ed3c0 => 105
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 41
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 69
	i32 202976542, ; 8: Xamarin.GooglePlayServices.Phenotype.dll => 0xc192d1e => 83
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 39
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 54
	i32 230752869, ; 11: Microsoft.CSharp.dll => 0xdc10265 => 5
	i32 232815796, ; 12: System.Web.Services => 0xde07cb4 => 103
	i32 243269062, ; 13: Xamarin.GooglePlayServices.Clearcut => 0xe7ffdc6 => 81
	i32 264281005, ; 14: Xamarin.GooglePlayServices.Flags.dll => 0xfc09bad => 82
	i32 280482487, ; 15: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 52
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 30
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 22
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 55
	i32 347068432, ; 19: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 11
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 20
	i32 442521989, ; 21: Xamarin.Essentials => 0x1a605985 => 76
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 51
	i32 465846621, ; 23: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 24: System.dll => 0x1bff388e => 19
	i32 476646585, ; 25: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 52
	i32 486930444, ; 26: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 61
	i32 526420162, ; 27: System.Transactions.dll => 0x1f6088c2 => 95
	i32 527452488, ; 28: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 90
	i32 605376203, ; 29: System.IO.Compression.FileSystem => 0x24154ecb => 99
	i32 627609679, ; 30: Xamarin.AndroidX.CustomView => 0x2568904f => 48
	i32 663517072, ; 31: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 74
	i32 666292255, ; 32: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 36
	i32 690569205, ; 33: System.Xml.Linq.dll => 0x29293ff5 => 104
	i32 691348768, ; 34: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 92
	i32 700284507, ; 35: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 87
	i32 720511267, ; 36: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 91
	i32 734492384, ; 37: Xamarin.GooglePlayServices.Vision => 0x2bc776e0 => 86
	i32 748832960, ; 38: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 9
	i32 775189201, ; 39: System.Data.SqlClient.dll => 0x2e3472d1 => 107
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 98
	i32 809851609, ; 41: System.Drawing.Common.dll => 0x30455ad9 => 97
	i32 843511501, ; 42: Xamarin.AndroidX.Print => 0x3246f6cd => 63
	i32 928116545, ; 43: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 78
	i32 956575887, ; 44: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 91
	i32 967690846, ; 45: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 55
	i32 1012816738, ; 46: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 66
	i32 1019729261, ; 47: Xamarin.GooglePlayServices.Flags => 0x3cc7d56d => 82
	i32 1035644815, ; 48: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 35
	i32 1052210849, ; 49: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 58
	i32 1084122840, ; 50: Xamarin.Kotlin.StdLib => 0x409e66d8 => 89
	i32 1098259244, ; 51: System => 0x41761b2c => 19
	i32 1175144683, ; 52: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 72
	i32 1204270330, ; 53: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 36
	i32 1246548578, ; 54: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 42
	i32 1264511973, ; 55: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 68
	i32 1267360935, ; 56: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 73
	i32 1275534314, ; 57: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 92
	i32 1278448581, ; 58: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 33
	i32 1291457549, ; 59: EntityFramework.SqlServer.dll => 0x4cfa140d => 3
	i32 1292207520, ; 60: SQLitePCLRaw.core.dll => 0x4d0585a0 => 10
	i32 1293217323, ; 61: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 50
	i32 1365406463, ; 62: System.ServiceModel.Internals.dll => 0x516272ff => 102
	i32 1376866003, ; 63: Xamarin.AndroidX.SavedState => 0x52114ed3 => 66
	i32 1406073936, ; 64: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 44
	i32 1411638395, ; 65: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 24
	i32 1462112819, ; 66: System.IO.Compression.dll => 0x57261233 => 98
	i32 1469204771, ; 67: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 34
	i32 1582372066, ; 68: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 49
	i32 1592978981, ; 69: System.Runtime.Serialization.dll => 0x5ef2ee25 => 101
	i32 1622152042, ; 70: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 60
	i32 1636350590, ; 71: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 47
	i32 1639515021, ; 72: System.Net.Http.dll => 0x61b9038d => 21
	i32 1657153582, ; 73: System.Runtime => 0x62c6282e => 25
	i32 1658241508, ; 74: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 70
	i32 1658251792, ; 75: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 77
	i32 1698840827, ; 76: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 88
	i32 1711441057, ; 77: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 11
	i32 1729485958, ; 78: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 40
	i32 1766324549, ; 79: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 69
	i32 1776026572, ; 80: System.Core.dll => 0x69dc03cc => 16
	i32 1788241197, ; 81: Xamarin.AndroidX.Fragment => 0x6a96652d => 51
	i32 1808609942, ; 82: Xamarin.AndroidX.Loader => 0x6bcd3296 => 60
	i32 1813058853, ; 83: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 89
	i32 1813201214, ; 84: Xamarin.Google.Android.Material => 0x6c13413e => 77
	i32 1817235002, ; 85: System.Data.SQLite.dll => 0x6c50ce3a => 17
	i32 1867746548, ; 86: Xamarin.Essentials.dll => 0x6f538cf4 => 76
	i32 1885316902, ; 87: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 37
	i32 1908813208, ; 88: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 80
	i32 1919157823, ; 89: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 62
	i32 1927897671, ; 90: System.CodeDom.dll => 0x72e96247 => 14
	i32 1977810256, ; 91: HemocodAPP.dll => 0x75e2fd50 => 0
	i32 1983156543, ; 92: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 88
	i32 2011961780, ; 93: System.Buffers.dll => 0x77ec19b4 => 13
	i32 2019465201, ; 94: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 58
	i32 2055257422, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 56
	i32 2079903147, ; 96: System.Runtime.dll => 0x7bf8cdab => 25
	i32 2090596640, ; 97: System.Numerics.Vectors => 0x7c9bf920 => 23
	i32 2097448633, ; 98: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 53
	i32 2103459038, ; 99: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 12
	i32 2129483829, ; 100: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 79
	i32 2178612968, ; 101: System.CodeDom => 0x81dafee8 => 14
	i32 2201107256, ; 102: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 93
	i32 2201231467, ; 103: System.Net.Http => 0x8334206b => 21
	i32 2217644978, ; 104: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 72
	i32 2244775296, ; 105: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 61
	i32 2256548716, ; 106: Xamarin.AndroidX.MultiDex => 0x8680336c => 62
	i32 2265110946, ; 107: System.Security.AccessControl.dll => 0x8702d9a2 => 26
	i32 2271238318, ; 108: System.Data.SQLite.EF6.dll => 0x876058ae => 18
	i32 2279755925, ; 109: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 65
	i32 2315684594, ; 110: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 31
	i32 2383496789, ; 111: System.Security.Principal.Windows.dll => 0x8e114655 => 28
	i32 2435904999, ; 112: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 106
	i32 2465273461, ; 113: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 9
	i32 2471841756, ; 114: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 115: Java.Interop.dll => 0x93918882 => 4
	i32 2501346920, ; 116: System.Data.DataSetExtensions => 0x95178668 => 96
	i32 2505896520, ; 117: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 57
	i32 2562349572, ; 118: Microsoft.CSharp => 0x98ba5a04 => 5
	i32 2581819634, ; 119: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 73
	i32 2585851418, ; 120: System.Data.SQLite => 0x9a20f61a => 17
	i32 2605712449, ; 121: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 93
	i32 2620871830, ; 122: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 47
	i32 2660759594, ; 123: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 108
	i32 2701096212, ; 124: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 70
	i32 2732626843, ; 125: Xamarin.AndroidX.Activity => 0xa2e0939b => 30
	i32 2737747696, ; 126: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 34
	i32 2770495804, ; 127: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 87
	i32 2778768386, ; 128: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 75
	i32 2810250172, ; 129: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 44
	i32 2819470561, ; 130: System.Xml.dll => 0xa80db4e1 => 29
	i32 2841355853, ; 131: System.Security.Permissions => 0xa95ba64d => 27
	i32 2847418871, ; 132: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 79
	i32 2853208004, ; 133: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 75
	i32 2855708567, ; 134: Xamarin.AndroidX.Transition => 0xaa36a797 => 71
	i32 2867946736, ; 135: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 108
	i32 2903344695, ; 136: System.ComponentModel.Composition => 0xad0d8637 => 100
	i32 2905242038, ; 137: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916751541, ; 138: EntityFramework => 0xadda18b5 => 2
	i32 2919462931, ; 139: System.Numerics.Vectors.dll => 0xae037813 => 23
	i32 2921128767, ; 140: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 32
	i32 2944313911, ; 141: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 15
	i32 2968338931, ; 142: System.Security.Principal.Windows => 0xb0ed41f3 => 28
	i32 2978675010, ; 143: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 50
	i32 3012788804, ; 144: System.Configuration.ConfigurationManager => 0xb3938244 => 15
	i32 3016983068, ; 145: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 68
	i32 3024354802, ; 146: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 54
	i32 3037181439, ; 147: Xamarin.GooglePlayServices.Vision.Common => 0xb507b5ff => 85
	i32 3058099980, ; 148: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 84
	i32 3111772706, ; 149: System.Runtime.Serialization => 0xb979e222 => 101
	i32 3132293585, ; 150: System.Security.AccessControl => 0xbab301d1 => 26
	i32 3182224457, ; 151: Xamarin.GooglePlayServices.Phenotype => 0xbdace449 => 83
	i32 3204380047, ; 152: System.Data.dll => 0xbefef58f => 94
	i32 3211777861, ; 153: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 49
	i32 3213246214, ; 154: System.Security.Permissions.dll => 0xbf863f06 => 27
	i32 3230466174, ; 155: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 80
	i32 3247949154, ; 156: Mono.Security => 0xc197c562 => 110
	i32 3258312781, ; 157: Xamarin.AndroidX.CardView => 0xc235e84d => 40
	i32 3267021929, ; 158: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 38
	i32 3280506390, ; 159: System.ComponentModel.Annotations.dll => 0xc3888e16 => 105
	i32 3286872994, ; 160: SQLite-net.dll => 0xc3e9b3a2 => 8
	i32 3317135071, ; 161: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 48
	i32 3317144872, ; 162: System.Data => 0xc5b79d28 => 94
	i32 3340431453, ; 163: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 37
	i32 3345895724, ; 164: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 64
	i32 3353484488, ; 165: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 53
	i32 3360279109, ; 166: SQLitePCLRaw.core => 0xc849ca45 => 10
	i32 3362522851, ; 167: Xamarin.AndroidX.Core => 0xc86c06e3 => 46
	i32 3366347497, ; 168: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 169: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 65
	i32 3395150330, ; 170: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 24
	i32 3404865022, ; 171: System.ServiceModel.Internals => 0xcaf21dfe => 102
	i32 3429136800, ; 172: System.Xml => 0xcc6479a0 => 29
	i32 3430777524, ; 173: netstandard => 0xcc7d82b4 => 1
	i32 3476120550, ; 174: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 175: System.Transactions => 0xcfd0c798 => 95
	i32 3493954962, ; 176: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 43
	i32 3501239056, ; 177: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 38
	i32 3509099840, ; 178: Xamarin.GooglePlayServices.Vision.Common.dll => 0xd1289d40 => 85
	i32 3509114376, ; 179: System.Xml.Linq => 0xd128d608 => 104
	i32 3515174580, ; 180: System.Security.dll => 0xd1854eb4 => 109
	i32 3567349600, ; 181: System.ComponentModel.Composition.dll => 0xd4a16f60 => 100
	i32 3627220390, ; 182: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 63
	i32 3633644679, ; 183: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 32
	i32 3641597786, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 56
	i32 3645089577, ; 185: System.ComponentModel.DataAnnotations => 0xd943a729 => 106
	i32 3653734595, ; 186: EntityFramework.dll => 0xd9c790c3 => 2
	i32 3654889131, ; 187: HemocodAPP => 0xd9d92eab => 0
	i32 3672681054, ; 188: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 189: System.Web.Services.dll => 0xdb2009fe => 103
	i32 3682565725, ; 190: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 39
	i32 3684561358, ; 191: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 43
	i32 3689375977, ; 192: System.Drawing.Common => 0xdbe768e9 => 97
	i32 3706696989, ; 193: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 45
	i32 3718780102, ; 194: Xamarin.AndroidX.Annotation => 0xdda814c6 => 31
	i32 3754567612, ; 195: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 12
	i32 3757377913, ; 196: EntityFramework.SqlServer => 0xdff50979 => 3
	i32 3786282454, ; 197: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 41
	i32 3829621856, ; 198: System.Numerics.dll => 0xe4436460 => 22
	i32 3834665012, ; 199: System.Data.SqlClient => 0xe4905834 => 107
	i32 3876362041, ; 200: SQLite-net => 0xe70c9739 => 8
	i32 3885922214, ; 201: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 71
	i32 3888767677, ; 202: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 64
	i32 3896760992, ; 203: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 46
	i32 3900146547, ; 204: System.Data.SQLite.EF6 => 0xe8778373 => 18
	i32 3910130544, ; 205: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 42
	i32 3920810846, ; 206: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 99
	i32 3921031405, ; 207: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 74
	i32 3945713374, ; 208: System.Data.DataSetExtensions.dll => 0xeb2ecede => 96
	i32 3955647286, ; 209: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 35
	i32 3970018735, ; 210: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 84
	i32 4010978290, ; 211: Xamarin.GooglePlayServices.Vision.dll => 0xef12abf2 => 86
	i32 4015948917, ; 212: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 33
	i32 4025784931, ; 213: System.Memory => 0xeff49a63 => 20
	i32 4085977449, ; 214: Xamarin.GooglePlayServices.Clearcut.dll => 0xf38b1169 => 81
	i32 4105002889, ; 215: Mono.Security.dll => 0xf4ad5f89 => 110
	i32 4151237749, ; 216: System.Core => 0xf76edc75 => 16
	i32 4182413190, ; 217: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 59
	i32 4185676441, ; 218: System.Security => 0xf97c5a99 => 109
	i32 4256097574, ; 219: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 45
	i32 4260525087, ; 220: System.Buffers => 0xfdf2741f => 13
	i32 4292120959 ; 221: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 59
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [222 x i32] [
	i32 57, i32 78, i32 67, i32 67, i32 90, i32 105, i32 41, i32 69, ; 0..7
	i32 83, i32 39, i32 54, i32 5, i32 103, i32 81, i32 82, i32 52, ; 8..15
	i32 30, i32 22, i32 55, i32 11, i32 20, i32 76, i32 51, i32 7, ; 16..23
	i32 19, i32 52, i32 61, i32 95, i32 90, i32 99, i32 48, i32 74, ; 24..31
	i32 36, i32 104, i32 92, i32 87, i32 91, i32 86, i32 9, i32 107, ; 32..39
	i32 98, i32 97, i32 63, i32 78, i32 91, i32 55, i32 66, i32 82, ; 40..47
	i32 35, i32 58, i32 89, i32 19, i32 72, i32 36, i32 42, i32 68, ; 48..55
	i32 73, i32 92, i32 33, i32 3, i32 10, i32 50, i32 102, i32 66, ; 56..63
	i32 44, i32 24, i32 98, i32 34, i32 49, i32 101, i32 60, i32 47, ; 64..71
	i32 21, i32 25, i32 70, i32 77, i32 88, i32 11, i32 40, i32 69, ; 72..79
	i32 16, i32 51, i32 60, i32 89, i32 77, i32 17, i32 76, i32 37, ; 80..87
	i32 80, i32 62, i32 14, i32 0, i32 88, i32 13, i32 58, i32 56, ; 88..95
	i32 25, i32 23, i32 53, i32 12, i32 79, i32 14, i32 93, i32 21, ; 96..103
	i32 72, i32 61, i32 62, i32 26, i32 18, i32 65, i32 31, i32 28, ; 104..111
	i32 106, i32 9, i32 1, i32 4, i32 96, i32 57, i32 5, i32 73, ; 112..119
	i32 17, i32 93, i32 47, i32 108, i32 70, i32 30, i32 34, i32 87, ; 120..127
	i32 75, i32 44, i32 29, i32 27, i32 79, i32 75, i32 71, i32 108, ; 128..135
	i32 100, i32 7, i32 2, i32 23, i32 32, i32 15, i32 28, i32 50, ; 136..143
	i32 15, i32 68, i32 54, i32 85, i32 84, i32 101, i32 26, i32 83, ; 144..151
	i32 94, i32 49, i32 27, i32 80, i32 110, i32 40, i32 38, i32 105, ; 152..159
	i32 8, i32 48, i32 94, i32 37, i32 64, i32 53, i32 10, i32 46, ; 160..167
	i32 4, i32 65, i32 24, i32 102, i32 29, i32 1, i32 6, i32 95, ; 168..175
	i32 43, i32 38, i32 85, i32 104, i32 109, i32 100, i32 63, i32 32, ; 176..183
	i32 56, i32 106, i32 2, i32 0, i32 6, i32 103, i32 39, i32 43, ; 184..191
	i32 97, i32 45, i32 31, i32 12, i32 3, i32 41, i32 22, i32 107, ; 192..199
	i32 8, i32 71, i32 64, i32 46, i32 18, i32 42, i32 99, i32 74, ; 200..207
	i32 96, i32 35, i32 84, i32 86, i32 33, i32 20, i32 81, i32 110, ; 208..215
	i32 16, i32 59, i32 109, i32 45, i32 13, i32 59 ; 216..221
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
