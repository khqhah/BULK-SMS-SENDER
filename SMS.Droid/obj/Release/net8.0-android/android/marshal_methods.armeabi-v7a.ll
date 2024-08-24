; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [199 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [398 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 142
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 141
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 185
	i32 57725457, ; 3: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 3
	i32 57727992, ; 4: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 4
	i32 66541672, ; 5: System.Diagnostics.StackTrace => 0x3f75868 => 125
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 43
	i32 68219467, ; 7: System.Security.Cryptography.Primitives => 0x410f24b => 174
	i32 72070932, ; 8: Microsoft.Maui.Graphics.dll => 0x44bb714 => 70
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 160
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 183
	i32 139659294, ; 11: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 4
	i32 142721839, ; 12: System.Net.WebHeaderCollection => 0x881c32f => 149
	i32 149972175, ; 13: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 174
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 84
	i32 166535111, ; 15: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 7
	i32 182336117, ; 16: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 102
	i32 195452805, ; 17: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 40
	i32 199333315, ; 18: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 41
	i32 205061960, ; 19: System.ComponentModel => 0xc38ff48 => 120
	i32 209399409, ; 20: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 82
	i32 230752869, ; 21: Microsoft.CSharp.dll => 0xdc10265 => 110
	i32 246610117, ; 22: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 157
	i32 250115737, ; 23: SMS.Droid.dll => 0xee87699 => 109
	i32 264223668, ; 24: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 8
	i32 280992041, ; 25: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 12
	i32 317674968, ; 26: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 40
	i32 318968648, ; 27: Xamarin.AndroidX.Activity.dll => 0x13031348 => 79
	i32 330147069, ; 28: Microsoft.SqlServer.Server => 0x13ada4fd => 71
	i32 336156722, ; 29: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 25
	i32 342366114, ; 30: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 91
	i32 356389973, ; 31: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 24
	i32 367780167, ; 32: System.IO.Pipes => 0x15ebe147 => 136
	i32 374914964, ; 33: System.Transactions.Local => 0x1658bf94 => 188
	i32 375677976, ; 34: System.Net.ServicePoint.dll => 0x16646418 => 146
	i32 379916513, ; 35: System.Threading.Thread.dll => 0x16a510e1 => 185
	i32 385762202, ; 36: System.Memory.dll => 0x16fe439a => 139
	i32 392610295, ; 37: System.Threading.ThreadPool.dll => 0x1766c1f7 => 186
	i32 395744057, ; 38: _Microsoft.Android.Resource.Designer => 0x17969339 => 44
	i32 435591531, ; 39: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 36
	i32 442565967, ; 40: System.Collections => 0x1a61054f => 117
	i32 450948140, ; 41: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 90
	i32 451504562, ; 42: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 175
	i32 459347974, ; 43: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 165
	i32 469710990, ; 44: System.dll => 0x1bff388e => 193
	i32 485463106, ; 45: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 60
	i32 498788369, ; 46: System.ObjectModel => 0x1dbae811 => 151
	i32 500358224, ; 47: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 23
	i32 503918385, ; 48: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 17
	i32 513247710, ; 49: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 57
	i32 539058512, ; 50: Microsoft.Extensions.Logging => 0x20216150 => 54
	i32 546455878, ; 51: System.Runtime.Serialization.Xml => 0x20924146 => 166
	i32 548916678, ; 52: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 48
	i32 577335427, ; 53: System.Security.Cryptography.Cng => 0x22697083 => 171
	i32 592146354, ; 54: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 31
	i32 613668793, ; 55: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 170
	i32 627609679, ; 56: Xamarin.AndroidX.CustomView => 0x2568904f => 88
	i32 627931235, ; 57: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 29
	i32 662205335, ; 58: System.Text.Encodings.Web.dll => 0x27787397 => 180
	i32 672442732, ; 59: System.Collections.Concurrent => 0x2814a96c => 113
	i32 683518922, ; 60: System.Net.Security => 0x28bdabca => 145
	i32 688181140, ; 61: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 11
	i32 690569205, ; 62: System.Xml.Linq.dll => 0x29293ff5 => 189
	i32 706645707, ; 63: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 26
	i32 709557578, ; 64: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 14
	i32 722857257, ; 65: System.Runtime.Loader.dll => 0x2b15ed29 => 161
	i32 723796036, ; 66: System.ClientModel.dll => 0x2b244044 => 72
	i32 759454413, ; 67: System.Net.Requests => 0x2d445acd => 144
	i32 762598435, ; 68: System.IO.Pipes.dll => 0x2d745423 => 136
	i32 775507847, ; 69: System.IO.Compression => 0x2e394f87 => 133
	i32 777317022, ; 70: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 35
	i32 789151979, ; 71: Microsoft.Extensions.Options => 0x2f0980eb => 56
	i32 804715423, ; 72: System.Data.Common => 0x2ff6fb9f => 122
	i32 823281589, ; 73: System.Private.Uri.dll => 0x311247b5 => 153
	i32 830298997, ; 74: System.IO.Compression.Brotli => 0x317d5b75 => 132
	i32 898440345, ; 75: CsvHelper => 0x358d1c99 => 47
	i32 904024072, ; 76: System.ComponentModel.Primitives.dll => 0x35e25008 => 118
	i32 926902833, ; 77: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 38
	i32 967690846, ; 78: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 91
	i32 975236339, ; 79: System.Diagnostics.Tracing => 0x3a20ecf3 => 128
	i32 975874589, ; 80: System.Xml.XDocument => 0x3a2aaa1d => 191
	i32 986514023, ; 81: System.Private.DataContractSerialization.dll => 0x3acd0267 => 152
	i32 992768348, ; 82: System.Collections.dll => 0x3b2c715c => 117
	i32 1012816738, ; 83: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 101
	i32 1019214401, ; 84: System.Drawing => 0x3cbffa41 => 130
	i32 1028951442, ; 85: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 53
	i32 1029334545, ; 86: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 13
	i32 1035644815, ; 87: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 80
	i32 1036536393, ; 88: System.Drawing.Primitives.dll => 0x3dc84a49 => 129
	i32 1044663988, ; 89: System.Linq.Expressions.dll => 0x3e444eb4 => 137
	i32 1048439329, ; 90: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 0
	i32 1052210849, ; 91: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 93
	i32 1062017875, ; 92: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 59
	i32 1082857460, ; 93: System.ComponentModel.TypeConverter => 0x408b17f4 => 119
	i32 1084122840, ; 94: Xamarin.Kotlin.StdLib => 0x409e66d8 => 106
	i32 1089913930, ; 95: System.Diagnostics.EventLog.dll => 0x40f6c44a => 74
	i32 1098259244, ; 96: System => 0x41761b2c => 193
	i32 1118262833, ; 97: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 26
	i32 1138436374, ; 98: Microsoft.Data.SqlClient.dll => 0x43db2916 => 49
	i32 1168523401, ; 99: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 32
	i32 1178241025, ; 100: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 98
	i32 1203215381, ; 101: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 30
	i32 1208641965, ; 102: System.Diagnostics.Process => 0x480a69ad => 124
	i32 1234928153, ; 103: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 28
	i32 1260983243, ; 104: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 12
	i32 1275290235, ; 105: SMS => 0x4c03627b => 108
	i32 1293217323, ; 106: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 89
	i32 1309188875, ; 107: System.Private.DataContractSerialization => 0x4e08a30b => 152
	i32 1324164729, ; 108: System.Linq => 0x4eed2679 => 138
	i32 1335329327, ; 109: System.Runtime.Serialization.Json.dll => 0x4f97822f => 164
	i32 1373134921, ; 110: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 42
	i32 1376866003, ; 111: Xamarin.AndroidX.SavedState => 0x52114ed3 => 101
	i32 1402618019, ; 112: SMS.dll => 0x539a40a3 => 108
	i32 1406073936, ; 113: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 85
	i32 1408764838, ; 114: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 163
	i32 1430672901, ; 115: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 10
	i32 1452070440, ; 116: System.Formats.Asn1.dll => 0x568cd628 => 131
	i32 1458022317, ; 117: System.Net.Security.dll => 0x56e7a7ad => 145
	i32 1460893475, ; 118: System.IdentityModel.Tokens.Jwt => 0x57137723 => 75
	i32 1461004990, ; 119: es\Microsoft.Maui.Controls.resources => 0x57152abe => 16
	i32 1461234159, ; 120: System.Collections.Immutable.dll => 0x5718a9ef => 114
	i32 1462112819, ; 121: System.IO.Compression.dll => 0x57261233 => 133
	i32 1469204771, ; 122: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 81
	i32 1470490898, ; 123: Microsoft.Extensions.Primitives => 0x57a5e912 => 57
	i32 1479771757, ; 124: System.Collections.Immutable => 0x5833866d => 114
	i32 1480492111, ; 125: System.IO.Compression.Brotli.dll => 0x583e844f => 132
	i32 1487239319, ; 126: Microsoft.Win32.Primitives => 0x58a57897 => 111
	i32 1493001747, ; 127: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 20
	i32 1498168481, ; 128: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 61
	i32 1514721132, ; 129: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 15
	i32 1536373174, ; 130: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 126
	i32 1543031311, ; 131: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 182
	i32 1551623176, ; 132: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 35
	i32 1565310744, ; 133: System.Runtime.Caching => 0x5d4cbf18 => 77
	i32 1573704789, ; 134: System.Runtime.Serialization.Json => 0x5dccd455 => 164
	i32 1582305585, ; 135: Azure.Identity => 0x5e501131 => 46
	i32 1596263029, ; 136: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 9
	i32 1604827217, ; 137: System.Net.WebClient => 0x5fa7b851 => 148
	i32 1622152042, ; 138: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 95
	i32 1624863272, ; 139: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 104
	i32 1628113371, ; 140: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 64
	i32 1636350590, ; 141: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 87
	i32 1639515021, ; 142: System.Net.Http.dll => 0x61b9038d => 140
	i32 1639986890, ; 143: System.Text.RegularExpressions => 0x61c036ca => 182
	i32 1657153582, ; 144: System.Runtime => 0x62c6282e => 167
	i32 1658251792, ; 145: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 105
	i32 1677501392, ; 146: System.Net.Primitives.dll => 0x63fca3d0 => 143
	i32 1679769178, ; 147: System.Security.Cryptography => 0x641f3e5a => 176
	i32 1696967625, ; 148: System.Security.Cryptography.Csp => 0x6525abc9 => 172
	i32 1729485958, ; 149: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 83
	i32 1736233607, ; 150: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 33
	i32 1743415430, ; 151: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 11
	i32 1744735666, ; 152: System.Transactions.Local.dll => 0x67fe8db2 => 188
	i32 1750313021, ; 153: Microsoft.Win32.Primitives.dll => 0x6853a83d => 111
	i32 1763938596, ; 154: System.Diagnostics.TraceSource.dll => 0x69239124 => 127
	i32 1766324549, ; 155: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 102
	i32 1770582343, ; 156: Microsoft.Extensions.Logging.dll => 0x6988f147 => 54
	i32 1780572499, ; 157: Mono.Android.Runtime.dll => 0x6a216153 => 197
	i32 1782862114, ; 158: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 27
	i32 1788241197, ; 159: Xamarin.AndroidX.Fragment => 0x6a96652d => 90
	i32 1793755602, ; 160: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 19
	i32 1794500907, ; 161: Microsoft.Identity.Client.dll => 0x6af5e92b => 58
	i32 1796167890, ; 162: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 48
	i32 1808609942, ; 163: Xamarin.AndroidX.Loader => 0x6bcd3296 => 95
	i32 1813058853, ; 164: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 106
	i32 1813201214, ; 165: Xamarin.Google.Android.Material => 0x6c13413e => 105
	i32 1818569960, ; 166: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 99
	i32 1824175904, ; 167: System.Text.Encoding.Extensions => 0x6cbab720 => 179
	i32 1824722060, ; 168: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 163
	i32 1828688058, ; 169: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 55
	i32 1842015223, ; 170: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 39
	i32 1853025655, ; 171: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 36
	i32 1858542181, ; 172: System.Linq.Expressions => 0x6ec71a65 => 137
	i32 1870277092, ; 173: System.Reflection.Primitives => 0x6f7a29e4 => 158
	i32 1871986876, ; 174: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 64
	i32 1875935024, ; 175: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 18
	i32 1910275211, ; 176: System.Collections.NonGeneric.dll => 0x71dc7c8b => 115
	i32 1939592360, ; 177: System.Private.Xml.Linq => 0x739bd4a8 => 154
	i32 1968388702, ; 178: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 50
	i32 1986222447, ; 179: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 65
	i32 2003115576, ; 180: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 15
	i32 2011961780, ; 181: System.Buffers.dll => 0x77ec19b4 => 112
	i32 2019465201, ; 182: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 93
	i32 2025202353, ; 183: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 10
	i32 2040764568, ; 184: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 59
	i32 2045470958, ; 185: System.Private.Xml => 0x79eb68ee => 155
	i32 2055257422, ; 186: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 92
	i32 2066184531, ; 187: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 14
	i32 2070888862, ; 188: System.Diagnostics.TraceSource => 0x7b6f419e => 127
	i32 2079903147, ; 189: System.Runtime.dll => 0x7bf8cdab => 167
	i32 2090596640, ; 190: System.Numerics.Vectors => 0x7c9bf920 => 150
	i32 2127167465, ; 191: System.Console => 0x7ec9ffe9 => 121
	i32 2142473426, ; 192: System.Collections.Specialized => 0x7fb38cd2 => 116
	i32 2143790110, ; 193: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 192
	i32 2159891885, ; 194: Microsoft.Maui => 0x80bd55ad => 68
	i32 2169148018, ; 195: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 22
	i32 2181898931, ; 196: Microsoft.Extensions.Options.dll => 0x820d22b3 => 56
	i32 2185286180, ; 197: SMS.Droid => 0x8240d224 => 109
	i32 2192057212, ; 198: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 55
	i32 2193016926, ; 199: System.ObjectModel.dll => 0x82b6c85e => 151
	i32 2201107256, ; 200: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 107
	i32 2201231467, ; 201: System.Net.Http => 0x8334206b => 140
	i32 2207618523, ; 202: it\Microsoft.Maui.Controls.resources => 0x839595db => 24
	i32 2228745826, ; 203: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 6
	i32 2253551641, ; 204: Microsoft.IdentityModel.Protocols => 0x86527819 => 63
	i32 2265110946, ; 205: System.Security.AccessControl.dll => 0x8702d9a2 => 168
	i32 2266799131, ; 206: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 51
	i32 2270573516, ; 207: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 18
	i32 2279755925, ; 208: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 100
	i32 2295906218, ; 209: System.Net.Sockets => 0x88d8bfaa => 147
	i32 2303942373, ; 210: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 28
	i32 2305521784, ; 211: System.Private.CoreLib.dll => 0x896b7878 => 195
	i32 2309278602, ; 212: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 5
	i32 2340441535, ; 213: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 159
	i32 2353062107, ; 214: System.Net.Primitives => 0x8c40e0db => 143
	i32 2368005991, ; 215: System.Xml.ReaderWriter.dll => 0x8d24e767 => 190
	i32 2369706906, ; 216: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 62
	i32 2371007202, ; 217: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 50
	i32 2378619854, ; 218: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 172
	i32 2383496789, ; 219: System.Security.Principal.Windows.dll => 0x8e114655 => 177
	i32 2395872292, ; 220: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 23
	i32 2427813419, ; 221: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 20
	i32 2435356389, ; 222: System.Console.dll => 0x912896e5 => 121
	i32 2458678730, ; 223: System.Net.Sockets.dll => 0x928c75ca => 147
	i32 2471841756, ; 224: netstandard.dll => 0x93554fdc => 194
	i32 2475788418, ; 225: Java.Interop.dll => 0x93918882 => 196
	i32 2480646305, ; 226: Microsoft.Maui.Controls => 0x93dba8a1 => 66
	i32 2484371297, ; 227: System.Net.ServicePoint => 0x94147f61 => 146
	i32 2509217888, ; 228: System.Diagnostics.EventLog => 0x958fa060 => 74
	i32 2538310050, ; 229: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 157
	i32 2550873716, ; 230: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 21
	i32 2562349572, ; 231: Microsoft.CSharp => 0x98ba5a04 => 110
	i32 2570120770, ; 232: System.Text.Encodings.Web => 0x9930ee42 => 180
	i32 2585220780, ; 233: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 179
	i32 2589602615, ; 234: System.Threading.ThreadPool => 0x9a5a3337 => 186
	i32 2593496499, ; 235: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 30
	i32 2605712449, ; 236: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 107
	i32 2617129537, ; 237: System.Private.Xml.dll => 0x9bfe3a41 => 155
	i32 2620871830, ; 238: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 87
	i32 2626831493, ; 239: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 25
	i32 2627185994, ; 240: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 126
	i32 2628210652, ; 241: System.Memory.Data => 0x9ca74fdc => 76
	i32 2640290731, ; 242: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 62
	i32 2640706905, ; 243: Azure.Core => 0x9d65fd59 => 45
	i32 2660759594, ; 244: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 78
	i32 2663698177, ; 245: System.Runtime.Loader => 0x9ec4cf01 => 161
	i32 2664396074, ; 246: System.Xml.XDocument.dll => 0x9ecf752a => 191
	i32 2665622720, ; 247: System.Drawing.Primitives => 0x9ee22cc0 => 129
	i32 2676780864, ; 248: System.Data.Common.dll => 0x9f8c6f40 => 122
	i32 2677098746, ; 249: Azure.Identity.dll => 0x9f9148fa => 46
	i32 2686887180, ; 250: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 166
	i32 2717744543, ; 251: System.Security.Claims => 0xa1fd7d9f => 169
	i32 2719963679, ; 252: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 171
	i32 2724373263, ; 253: System.Runtime.Numerics.dll => 0xa262a30f => 162
	i32 2732626843, ; 254: Xamarin.AndroidX.Activity => 0xa2e0939b => 79
	i32 2735172069, ; 255: System.Threading.Channels => 0xa30769e5 => 183
	i32 2737747696, ; 256: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 81
	i32 2740051746, ; 257: Microsoft.Identity.Client => 0xa351df22 => 58
	i32 2752995522, ; 258: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 31
	i32 2755098380, ; 259: Microsoft.SqlServer.Server.dll => 0xa437770c => 71
	i32 2758225723, ; 260: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 67
	i32 2764765095, ; 261: Microsoft.Maui.dll => 0xa4caf7a7 => 68
	i32 2765824710, ; 262: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 178
	i32 2778768386, ; 263: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 103
	i32 2785988530, ; 264: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 37
	i32 2801831435, ; 265: Microsoft.Maui.Graphics => 0xa7008e0b => 70
	i32 2804509662, ; 266: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 1
	i32 2806116107, ; 267: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 16
	i32 2810250172, ; 268: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 85
	i32 2831556043, ; 269: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 29
	i32 2841937114, ; 270: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 3
	i32 2853208004, ; 271: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 103
	i32 2861189240, ; 272: Microsoft.Maui.Essentials => 0xaa8a4878 => 69
	i32 2867946736, ; 273: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 78
	i32 2909740682, ; 274: System.Private.CoreLib => 0xad6f1e8a => 195
	i32 2916838712, ; 275: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 104
	i32 2919462931, ; 276: System.Numerics.Vectors.dll => 0xae037813 => 150
	i32 2940926066, ; 277: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 125
	i32 2944313911, ; 278: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 73
	i32 2959614098, ; 279: System.ComponentModel.dll => 0xb0682092 => 120
	i32 2968338931, ; 280: System.Security.Principal.Windows => 0xb0ed41f3 => 177
	i32 2972252294, ; 281: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 170
	i32 2978675010, ; 282: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 89
	i32 3012788804, ; 283: System.Configuration.ConfigurationManager => 0xb3938244 => 73
	i32 3023511517, ; 284: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 7
	i32 3033605958, ; 285: System.Memory.Data.dll => 0xb4d12746 => 76
	i32 3038032645, ; 286: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 44
	i32 3057625584, ; 287: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 96
	i32 3059408633, ; 288: Mono.Android.Runtime => 0xb65adef9 => 197
	i32 3059793426, ; 289: System.ComponentModel.Primitives => 0xb660be12 => 118
	i32 3077302341, ; 290: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 22
	i32 3084678329, ; 291: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 65
	i32 3090735792, ; 292: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 175
	i32 3099732863, ; 293: System.Security.Claims.dll => 0xb8c22b7f => 169
	i32 3103600923, ; 294: System.Formats.Asn1 => 0xb8fd311b => 131
	i32 3121463068, ; 295: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 134
	i32 3124832203, ; 296: System.Threading.Tasks.Extensions => 0xba4127cb => 184
	i32 3132293585, ; 297: System.Security.AccessControl => 0xbab301d1 => 168
	i32 3147165239, ; 298: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 128
	i32 3158628304, ; 299: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 9
	i32 3159123045, ; 300: System.Reflection.Primitives.dll => 0xbc4c6465 => 158
	i32 3178803400, ; 301: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 97
	i32 3220365878, ; 302: System.Threading => 0xbff2e236 => 187
	i32 3258312781, ; 303: Xamarin.AndroidX.CardView => 0xc235e84d => 83
	i32 3265893370, ; 304: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 184
	i32 3268887220, ; 305: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 2
	i32 3276600297, ; 306: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 6
	i32 3290767353, ; 307: System.Security.Cryptography.Encoding => 0xc4251ff9 => 173
	i32 3305363605, ; 308: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 17
	i32 3312457198, ; 309: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 61
	i32 3316684772, ; 310: System.Net.Requests.dll => 0xc5b097e4 => 144
	i32 3317135071, ; 311: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 88
	i32 3343947874, ; 312: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 2
	i32 3346324047, ; 313: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 98
	i32 3357674450, ; 314: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 34
	i32 3358260929, ; 315: System.Text.Json => 0xc82afec1 => 181
	i32 3362522851, ; 316: Xamarin.AndroidX.Core => 0xc86c06e3 => 86
	i32 3366347497, ; 317: Java.Interop => 0xc8a662e9 => 196
	i32 3374879918, ; 318: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 63
	i32 3374999561, ; 319: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 100
	i32 3381016424, ; 320: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 13
	i32 3428513518, ; 321: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 52
	i32 3430777524, ; 322: netstandard => 0xcc7d82b4 => 194
	i32 3463511458, ; 323: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 21
	i32 3471940407, ; 324: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 119
	i32 3476120550, ; 325: Mono.Android => 0xcf3163e6 => 198
	i32 3479583265, ; 326: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 34
	i32 3484440000, ; 327: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 33
	i32 3485117614, ; 328: System.Text.Json.dll => 0xcfbaacae => 181
	i32 3509114376, ; 329: System.Xml.Linq => 0xd128d608 => 189
	i32 3545306353, ; 330: Microsoft.Data.SqlClient => 0xd35114f1 => 49
	i32 3555084973, ; 331: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 0
	i32 3558648585, ; 332: System.ClientModel => 0xd41cab09 => 72
	i32 3561949811, ; 333: Azure.Core.dll => 0xd44f0a73 => 45
	i32 3570554715, ; 334: System.IO.FileSystem.AccessControl => 0xd4d2575b => 134
	i32 3570608287, ; 335: System.Runtime.Caching.dll => 0xd4d3289f => 77
	i32 3580758918, ; 336: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 41
	i32 3608519521, ; 337: System.Linq.dll => 0xd715a361 => 138
	i32 3624195450, ; 338: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 159
	i32 3641597786, ; 339: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 92
	i32 3643446276, ; 340: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 38
	i32 3643854240, ; 341: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 97
	i32 3657292374, ; 342: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 51
	i32 3660523487, ; 343: System.Net.NetworkInformation => 0xda2f27df => 142
	i32 3672681054, ; 344: Mono.Android.dll => 0xdae8aa5e => 198
	i32 3682565725, ; 345: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 82
	i32 3697841164, ; 346: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 43
	i32 3700591436, ; 347: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 60
	i32 3724971120, ; 348: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 96
	i32 3732100267, ; 349: System.Net.NameResolution => 0xde7354ab => 141
	i32 3748608112, ; 350: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 123
	i32 3786282454, ; 351: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 84
	i32 3792276235, ; 352: System.Collections.NonGeneric => 0xe2098b0b => 115
	i32 3802395368, ; 353: System.Collections.Specialized.dll => 0xe2a3f2e8 => 116
	i32 3803019198, ; 354: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 8
	i32 3818918118, ; 355: CsvHelper.dll => 0xe3a010e6 => 47
	i32 3823082795, ; 356: System.Security.Cryptography.dll => 0xe3df9d2b => 176
	i32 3841636137, ; 357: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 53
	i32 3848348906, ; 358: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 1
	i32 3849253459, ; 359: System.Runtime.InteropServices.dll => 0xe56ef253 => 160
	i32 3875112723, ; 360: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 173
	i32 3885497537, ; 361: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 149
	i32 3889960447, ; 362: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 42
	i32 3896106733, ; 363: System.Collections.Concurrent.dll => 0xe839deed => 113
	i32 3896760992, ; 364: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 86
	i32 3928044579, ; 365: System.Xml.ReaderWriter => 0xea213423 => 190
	i32 3931092270, ; 366: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 99
	i32 3953953790, ; 367: System.Text.Encoding.CodePages => 0xebac8bfe => 178
	i32 3955647286, ; 368: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 80
	i32 3980434154, ; 369: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 37
	i32 3987592930, ; 370: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 19
	i32 4003436829, ; 371: System.Diagnostics.Process.dll => 0xee9f991d => 124
	i32 4025784931, ; 372: System.Memory => 0xeff49a63 => 139
	i32 4046471985, ; 373: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 67
	i32 4054681211, ; 374: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 156
	i32 4068434129, ; 375: System.Private.Xml.Linq.dll => 0xf27f60d1 => 154
	i32 4073602200, ; 376: System.Threading.dll => 0xf2ce3c98 => 187
	i32 4094352644, ; 377: Microsoft.Maui.Essentials.dll => 0xf40add04 => 69
	i32 4099507663, ; 378: System.Drawing.dll => 0xf45985cf => 130
	i32 4100113165, ; 379: System.Private.Uri => 0xf462c30d => 153
	i32 4102112229, ; 380: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 32
	i32 4125707920, ; 381: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 27
	i32 4126470640, ; 382: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 52
	i32 4127667938, ; 383: System.IO.FileSystem.Watcher => 0xf60736e2 => 135
	i32 4147896353, ; 384: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 156
	i32 4150914736, ; 385: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 39
	i32 4159265925, ; 386: System.Xml.XmlSerializer => 0xf7e95c85 => 192
	i32 4164802419, ; 387: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 135
	i32 4181436372, ; 388: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 165
	i32 4182413190, ; 389: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 94
	i32 4196529839, ; 390: System.Net.WebClient.dll => 0xfa21f6af => 148
	i32 4213026141, ; 391: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 123
	i32 4257443520, ; 392: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 5
	i32 4260525087, ; 393: System.Buffers => 0xfdf2741f => 112
	i32 4263231520, ; 394: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 75
	i32 4271975918, ; 395: Microsoft.Maui.Controls.dll => 0xfea12dee => 66
	i32 4274976490, ; 396: System.Runtime.Numerics => 0xfecef6ea => 162
	i32 4292120959 ; 397: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 94
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [398 x i32] [
	i32 142, ; 0
	i32 141, ; 1
	i32 185, ; 2
	i32 3, ; 3
	i32 4, ; 4
	i32 125, ; 5
	i32 43, ; 6
	i32 174, ; 7
	i32 70, ; 8
	i32 160, ; 9
	i32 183, ; 10
	i32 4, ; 11
	i32 149, ; 12
	i32 174, ; 13
	i32 84, ; 14
	i32 7, ; 15
	i32 102, ; 16
	i32 40, ; 17
	i32 41, ; 18
	i32 120, ; 19
	i32 82, ; 20
	i32 110, ; 21
	i32 157, ; 22
	i32 109, ; 23
	i32 8, ; 24
	i32 12, ; 25
	i32 40, ; 26
	i32 79, ; 27
	i32 71, ; 28
	i32 25, ; 29
	i32 91, ; 30
	i32 24, ; 31
	i32 136, ; 32
	i32 188, ; 33
	i32 146, ; 34
	i32 185, ; 35
	i32 139, ; 36
	i32 186, ; 37
	i32 44, ; 38
	i32 36, ; 39
	i32 117, ; 40
	i32 90, ; 41
	i32 175, ; 42
	i32 165, ; 43
	i32 193, ; 44
	i32 60, ; 45
	i32 151, ; 46
	i32 23, ; 47
	i32 17, ; 48
	i32 57, ; 49
	i32 54, ; 50
	i32 166, ; 51
	i32 48, ; 52
	i32 171, ; 53
	i32 31, ; 54
	i32 170, ; 55
	i32 88, ; 56
	i32 29, ; 57
	i32 180, ; 58
	i32 113, ; 59
	i32 145, ; 60
	i32 11, ; 61
	i32 189, ; 62
	i32 26, ; 63
	i32 14, ; 64
	i32 161, ; 65
	i32 72, ; 66
	i32 144, ; 67
	i32 136, ; 68
	i32 133, ; 69
	i32 35, ; 70
	i32 56, ; 71
	i32 122, ; 72
	i32 153, ; 73
	i32 132, ; 74
	i32 47, ; 75
	i32 118, ; 76
	i32 38, ; 77
	i32 91, ; 78
	i32 128, ; 79
	i32 191, ; 80
	i32 152, ; 81
	i32 117, ; 82
	i32 101, ; 83
	i32 130, ; 84
	i32 53, ; 85
	i32 13, ; 86
	i32 80, ; 87
	i32 129, ; 88
	i32 137, ; 89
	i32 0, ; 90
	i32 93, ; 91
	i32 59, ; 92
	i32 119, ; 93
	i32 106, ; 94
	i32 74, ; 95
	i32 193, ; 96
	i32 26, ; 97
	i32 49, ; 98
	i32 32, ; 99
	i32 98, ; 100
	i32 30, ; 101
	i32 124, ; 102
	i32 28, ; 103
	i32 12, ; 104
	i32 108, ; 105
	i32 89, ; 106
	i32 152, ; 107
	i32 138, ; 108
	i32 164, ; 109
	i32 42, ; 110
	i32 101, ; 111
	i32 108, ; 112
	i32 85, ; 113
	i32 163, ; 114
	i32 10, ; 115
	i32 131, ; 116
	i32 145, ; 117
	i32 75, ; 118
	i32 16, ; 119
	i32 114, ; 120
	i32 133, ; 121
	i32 81, ; 122
	i32 57, ; 123
	i32 114, ; 124
	i32 132, ; 125
	i32 111, ; 126
	i32 20, ; 127
	i32 61, ; 128
	i32 15, ; 129
	i32 126, ; 130
	i32 182, ; 131
	i32 35, ; 132
	i32 77, ; 133
	i32 164, ; 134
	i32 46, ; 135
	i32 9, ; 136
	i32 148, ; 137
	i32 95, ; 138
	i32 104, ; 139
	i32 64, ; 140
	i32 87, ; 141
	i32 140, ; 142
	i32 182, ; 143
	i32 167, ; 144
	i32 105, ; 145
	i32 143, ; 146
	i32 176, ; 147
	i32 172, ; 148
	i32 83, ; 149
	i32 33, ; 150
	i32 11, ; 151
	i32 188, ; 152
	i32 111, ; 153
	i32 127, ; 154
	i32 102, ; 155
	i32 54, ; 156
	i32 197, ; 157
	i32 27, ; 158
	i32 90, ; 159
	i32 19, ; 160
	i32 58, ; 161
	i32 48, ; 162
	i32 95, ; 163
	i32 106, ; 164
	i32 105, ; 165
	i32 99, ; 166
	i32 179, ; 167
	i32 163, ; 168
	i32 55, ; 169
	i32 39, ; 170
	i32 36, ; 171
	i32 137, ; 172
	i32 158, ; 173
	i32 64, ; 174
	i32 18, ; 175
	i32 115, ; 176
	i32 154, ; 177
	i32 50, ; 178
	i32 65, ; 179
	i32 15, ; 180
	i32 112, ; 181
	i32 93, ; 182
	i32 10, ; 183
	i32 59, ; 184
	i32 155, ; 185
	i32 92, ; 186
	i32 14, ; 187
	i32 127, ; 188
	i32 167, ; 189
	i32 150, ; 190
	i32 121, ; 191
	i32 116, ; 192
	i32 192, ; 193
	i32 68, ; 194
	i32 22, ; 195
	i32 56, ; 196
	i32 109, ; 197
	i32 55, ; 198
	i32 151, ; 199
	i32 107, ; 200
	i32 140, ; 201
	i32 24, ; 202
	i32 6, ; 203
	i32 63, ; 204
	i32 168, ; 205
	i32 51, ; 206
	i32 18, ; 207
	i32 100, ; 208
	i32 147, ; 209
	i32 28, ; 210
	i32 195, ; 211
	i32 5, ; 212
	i32 159, ; 213
	i32 143, ; 214
	i32 190, ; 215
	i32 62, ; 216
	i32 50, ; 217
	i32 172, ; 218
	i32 177, ; 219
	i32 23, ; 220
	i32 20, ; 221
	i32 121, ; 222
	i32 147, ; 223
	i32 194, ; 224
	i32 196, ; 225
	i32 66, ; 226
	i32 146, ; 227
	i32 74, ; 228
	i32 157, ; 229
	i32 21, ; 230
	i32 110, ; 231
	i32 180, ; 232
	i32 179, ; 233
	i32 186, ; 234
	i32 30, ; 235
	i32 107, ; 236
	i32 155, ; 237
	i32 87, ; 238
	i32 25, ; 239
	i32 126, ; 240
	i32 76, ; 241
	i32 62, ; 242
	i32 45, ; 243
	i32 78, ; 244
	i32 161, ; 245
	i32 191, ; 246
	i32 129, ; 247
	i32 122, ; 248
	i32 46, ; 249
	i32 166, ; 250
	i32 169, ; 251
	i32 171, ; 252
	i32 162, ; 253
	i32 79, ; 254
	i32 183, ; 255
	i32 81, ; 256
	i32 58, ; 257
	i32 31, ; 258
	i32 71, ; 259
	i32 67, ; 260
	i32 68, ; 261
	i32 178, ; 262
	i32 103, ; 263
	i32 37, ; 264
	i32 70, ; 265
	i32 1, ; 266
	i32 16, ; 267
	i32 85, ; 268
	i32 29, ; 269
	i32 3, ; 270
	i32 103, ; 271
	i32 69, ; 272
	i32 78, ; 273
	i32 195, ; 274
	i32 104, ; 275
	i32 150, ; 276
	i32 125, ; 277
	i32 73, ; 278
	i32 120, ; 279
	i32 177, ; 280
	i32 170, ; 281
	i32 89, ; 282
	i32 73, ; 283
	i32 7, ; 284
	i32 76, ; 285
	i32 44, ; 286
	i32 96, ; 287
	i32 197, ; 288
	i32 118, ; 289
	i32 22, ; 290
	i32 65, ; 291
	i32 175, ; 292
	i32 169, ; 293
	i32 131, ; 294
	i32 134, ; 295
	i32 184, ; 296
	i32 168, ; 297
	i32 128, ; 298
	i32 9, ; 299
	i32 158, ; 300
	i32 97, ; 301
	i32 187, ; 302
	i32 83, ; 303
	i32 184, ; 304
	i32 2, ; 305
	i32 6, ; 306
	i32 173, ; 307
	i32 17, ; 308
	i32 61, ; 309
	i32 144, ; 310
	i32 88, ; 311
	i32 2, ; 312
	i32 98, ; 313
	i32 34, ; 314
	i32 181, ; 315
	i32 86, ; 316
	i32 196, ; 317
	i32 63, ; 318
	i32 100, ; 319
	i32 13, ; 320
	i32 52, ; 321
	i32 194, ; 322
	i32 21, ; 323
	i32 119, ; 324
	i32 198, ; 325
	i32 34, ; 326
	i32 33, ; 327
	i32 181, ; 328
	i32 189, ; 329
	i32 49, ; 330
	i32 0, ; 331
	i32 72, ; 332
	i32 45, ; 333
	i32 134, ; 334
	i32 77, ; 335
	i32 41, ; 336
	i32 138, ; 337
	i32 159, ; 338
	i32 92, ; 339
	i32 38, ; 340
	i32 97, ; 341
	i32 51, ; 342
	i32 142, ; 343
	i32 198, ; 344
	i32 82, ; 345
	i32 43, ; 346
	i32 60, ; 347
	i32 96, ; 348
	i32 141, ; 349
	i32 123, ; 350
	i32 84, ; 351
	i32 115, ; 352
	i32 116, ; 353
	i32 8, ; 354
	i32 47, ; 355
	i32 176, ; 356
	i32 53, ; 357
	i32 1, ; 358
	i32 160, ; 359
	i32 173, ; 360
	i32 149, ; 361
	i32 42, ; 362
	i32 113, ; 363
	i32 86, ; 364
	i32 190, ; 365
	i32 99, ; 366
	i32 178, ; 367
	i32 80, ; 368
	i32 37, ; 369
	i32 19, ; 370
	i32 124, ; 371
	i32 139, ; 372
	i32 67, ; 373
	i32 156, ; 374
	i32 154, ; 375
	i32 187, ; 376
	i32 69, ; 377
	i32 130, ; 378
	i32 153, ; 379
	i32 32, ; 380
	i32 27, ; 381
	i32 52, ; 382
	i32 135, ; 383
	i32 156, ; 384
	i32 39, ; 385
	i32 192, ; 386
	i32 135, ; 387
	i32 165, ; 388
	i32 94, ; 389
	i32 148, ; 390
	i32 123, ; 391
	i32 5, ; 392
	i32 112, ; 393
	i32 75, ; 394
	i32 66, ; 395
	i32 162, ; 396
	i32 94 ; 397
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
