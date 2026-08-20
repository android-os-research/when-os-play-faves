.class public Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;
.super Ljava/lang/Object;
.source "SCPMV2Helper.java"


# static fields
.field private static final CODEC_SOLUTION_APP_ID:Ljava/lang/String; = "oqfypdqvry"

.field private static final CODEC_SOLUTION_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final CODEC_SOLUTION_POLICY_GROUP:Ljava/lang/String; = "CODEC_SOLUTOIN"

.field private static final CODEC_SOLUTION_VERSION_DUMMY:Ljava/lang/String; = "0.0.0"

.field private static final HDR2SDR_CONVERTER_POLICY_ID:Ljava/lang/String; = "Ai8DCJEAJf"

.field private static final HDR2SDR_CONVERTER_POLICY_NAME:Ljava/lang/String; = "HDR2SDR_CONVERTER"

.field private static final HDR2SDR_CONVERTER_VERSION_STRING:Ljava/lang/String; = "hdr2sdr.dummy"

.field private static final SCPMV2_KEY_APP_ID:Ljava/lang/String; = "appId"

.field private static final SCPMV2_KEY_APP_SIGNATURE:Ljava/lang/String; = "appSignature"

.field private static final SCPMV2_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final SCPMV2_KEY_RCODE:Ljava/lang/String; = "rcode"

.field private static final SCPMV2_KEY_RECEIVER_PACKAGE_NAME:Ljava/lang/String; = "receiverPackageName"

.field private static final SCPMV2_KEY_RESULT:Ljava/lang/String; = "result"

.field private static final SCPMV2_KEY_RMSG:Ljava/lang/String; = "rmsg"

.field private static final SCPMV2_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final SCPMV2_KEY_VERSION:Ljava/lang/String; = "version"

.field private static final SCPMV2_METHOD_GET_LAST_ERROR:Ljava/lang/String; = "getLastError"

.field private static final SCPMV2_METHOD_GET_STATUS:Ljava/lang/String; = "getStatus"

.field private static final SCPMV2_METHOD_INITIALIZE:Ljava/lang/String; = "initialize"

.field private static final SCPMV2_METHOD_REGISTER:Ljava/lang/String; = "register"

.field private static final SCPMV2_METHOD_UNREGISTER:Ljava/lang/String; = "unregister"

.field private static final SCPMV2_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.scpm"

.field private static final SCPMV2_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field private static final SCPMV2_PROVIDER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "CodecSolution_SCPMV2Helper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHDR2SDRAllowlist:Lorg/json/JSONArray;

.field private mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-string v0, "content://com.samsung.android.scpm.policy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->SCPMV2_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 70
    return-void
.end method

.method private initH2SCAllowlist()Z
    .registers 15

    .line 137
    const-string v0, "CodecSolution_SCPMV2Helper"

    const-string v1, "initH2SCAllowlist()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 140
    const-string v1, "Not registered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v2

    .line 144
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.android.scpm.policy/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "HDR2SDR_CONVERTER"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 145
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 146
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 148
    .local v4, "callingId":J
    :try_start_3c
    iget-object v6, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_48} :catch_196
    .catchall {:try_start_3c .. :try_end_48} :catchall_194

    move-object v3, v6

    .line 161
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    nop

    .line 164
    if-nez v3, :cond_db

    .line 165
    const-string v6, "ParcelFileDescriptor is null"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v6, "extras":Landroid/os/Bundle;
    iget-object v7, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    const-string v8, "token"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v7, 0x0

    .line 171
    .local v7, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 173
    .local v8, "callingId2":J
    :try_start_65
    iget-object v10, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "getLastError"

    const-string v12, "android"

    invoke-virtual {v10, v1, v11, v12, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_7a
    .catchall {:try_start_65 .. :try_end_73} :catchall_78

    move-object v7, v10

    .line 178
    :goto_74
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    goto :goto_99

    .line 178
    :catchall_78
    move-exception v0

    goto :goto_d7

    .line 174
    :catch_7a
    move-exception v10

    .line 175
    .local v10, "e":Ljava/lang/Exception;
    :try_start_7b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception : Failed to get last error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_7b .. :try_end_98} :catchall_78

    .end local v10    # "e":Ljava/lang/Exception;
    goto :goto_74

    .line 181
    :goto_99
    if-nez v7, :cond_a1

    .line 182
    const-string v10, "Bundle is null"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 184
    :cond_a1
    const/4 v10, -0x1

    const-string v11, "rcode"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 185
    .local v10, "rcode":I
    const-string v11, "rmsg"

    const-string v12, "null"

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 186
    .local v11, "rmsg":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to get new policy : rcode["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], rmsg["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v10    # "rcode":I
    .end local v11    # "rmsg":Ljava/lang/String;
    :goto_d6
    return v2

    .line 178
    :goto_d7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v0

    .line 192
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "callingId2":J
    :cond_db
    const/4 v6, 0x0

    .line 193
    .local v6, "fileReader":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 195
    .local v7, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_dd
    new-instance v8, Ljava/io/FileReader;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v8

    .line 196
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v8

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 199
    .local v9, "str":Ljava/lang/String;
    :goto_f3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    if-eqz v10, :cond_fe

    .line 200
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 203
    :cond_fe
    new-instance v10, Lorg/json/JSONTokener;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 204
    .local v10, "jsonTokener":Lorg/json/JSONTokener;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 205
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "hdr2sdr_converter_allowlist"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    iput-object v12, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 206
    if-nez v12, :cond_12f

    .line 207
    const-string v12, "Failed to get allowlist array"

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_11b} :catch_146
    .catchall {:try_start_dd .. :try_end_11b} :catchall_144

    .line 208
    nop

    .line 215
    nop

    .line 216
    :try_start_11d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 219
    nop

    .line 220
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 223
    if-eqz v3, :cond_129

    .line 224
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_129} :catch_12a

    .line 228
    :cond_129
    goto :goto_12e

    .line 226
    :catch_12a
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12e
    return v2

    .line 215
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "jsonTokener":Lorg/json/JSONTokener;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_12f
    nop

    .line 216
    :try_start_130
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 219
    nop

    .line 220
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 223
    if-eqz v3, :cond_13c

    .line 224
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13c} :catch_13d

    .line 228
    :cond_13c
    goto :goto_142

    .line 226
    :catch_13d
    move-exception v0

    .line 227
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 231
    :goto_142
    const/4 v0, 0x1

    return v0

    .line 214
    :catchall_144
    move-exception v0

    goto :goto_17b

    .line 210
    :catch_146
    move-exception v8

    .line 211
    .local v8, "e":Ljava/lang/Exception;
    :try_start_147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catchall {:try_start_147 .. :try_end_161} :catchall_144

    .line 212
    nop

    .line 215
    if-eqz v7, :cond_16a

    .line 216
    :try_start_164
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_16a

    .line 226
    :catch_168
    move-exception v0

    goto :goto_175

    .line 219
    :cond_16a
    :goto_16a
    if-eqz v6, :cond_16f

    .line 220
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 223
    :cond_16f
    if-eqz v3, :cond_179

    .line 224
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_174} :catch_168

    goto :goto_179

    .line 227
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17a

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_179
    :goto_179
    nop

    .line 212
    :goto_17a
    return v2

    .line 215
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_17b
    if-eqz v7, :cond_183

    .line 216
    :try_start_17d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_183

    .line 226
    :catch_181
    move-exception v2

    goto :goto_18e

    .line 219
    :cond_183
    :goto_183
    if-eqz v6, :cond_188

    .line 220
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 223
    :cond_188
    if-eqz v3, :cond_192

    .line 224
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_18d} :catch_181

    goto :goto_192

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    :goto_18e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_193

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_192
    :goto_192
    nop

    .line 229
    :goto_193
    throw v0

    .line 161
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_194
    move-exception v0

    goto :goto_1c5

    .line 149
    :catch_196
    move-exception v6

    .line 150
    .local v6, "e":Ljava/lang/Exception;
    :try_start_197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : Failed to open fd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b4
    .catchall {:try_start_197 .. :try_end_1b4} :catchall_194

    .line 153
    if-eqz v3, :cond_1bf

    .line 154
    :try_start_1b6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1b9} :catch_1ba
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_194

    goto :goto_1bf

    .line 156
    :catch_1ba
    move-exception v0

    .line 157
    .local v0, "ie":Ljava/io/IOException;
    :try_start_1bb
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1be
    .catchall {:try_start_1bb .. :try_end_1be} :catchall_194

    goto :goto_1c0

    .line 158
    .end local v0    # "ie":Ljava/io/IOException;
    :cond_1bf
    :goto_1bf
    nop

    .line 159
    :goto_1c0
    nop

    .line 161
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    return v2

    .line 161
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1c5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw v0
.end method


# virtual methods
.method public getH2SCAllowlistVersion()Ljava/lang/String;
    .registers 6

    .line 289
    const-string v0, "CodecSolution_SCPMV2Helper"

    const-string v1, "getH2SCAllowlistVersion()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_15

    .line 292
    const-string v1, "SCPMv2 is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "Not available"

    return-object v0

    .line 296
    :cond_15
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    if-nez v1, :cond_31

    .line 297
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->initH2SCAllowlist()Z

    move-result v1

    const-string v2, "Not updated"

    if-nez v1, :cond_27

    .line 298
    const-string v1, "Failed to init H2SCAllowlist."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v2

    .line 302
    :cond_27
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    if-nez v1, :cond_31

    .line 303
    const-string v1, "Allowlist is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v2

    .line 311
    :cond_31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    :try_start_32
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 312
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 313
    .local v1, "allowlist":Lorg/json/JSONObject;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_49

    .line 315
    goto :goto_5d

    .line 317
    :cond_49
    const-string v3, "hdr2sdr.dummy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 318
    const-string v3, "support"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "support":Ljava/lang/String;
    if-nez v3, :cond_5c

    .line 320
    const-string v4, "null"
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5b} :catch_64

    return-object v4

    .line 322
    :cond_5c
    return-object v3

    .line 311
    .end local v1    # "allowlist":Lorg/json/JSONObject;
    .end local v3    # "support":Ljava/lang/String;
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 328
    .end local v0    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_60
    nop

    .line 330
    const-string v0, "Not found"

    return-object v0

    .line 325
    :catch_64
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    const-string v1, "Error"

    return-object v1
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 4

    .line 83
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.scpm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public isInH2SCAllowlist(Ljava/lang/String;Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    .registers 10
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "chipVendor"    # Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInH2SCAllowlist : procName("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), chipVendor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecSolution_SCPMV2Helper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz p1, :cond_b0

    if-nez p2, :cond_2e

    goto/16 :goto_b0

    .line 242
    :cond_2e
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 243
    const-string v0, "SCPMv2 is not available."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v0

    .line 247
    :cond_3c
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    if-nez v0, :cond_5a

    .line 248
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->initH2SCAllowlist()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 249
    const-string v0, "Failed to init H2SCAllowlist."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v0

    .line 253
    :cond_4e
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    if-nez v0, :cond_5a

    .line 254
    const-string v0, "Allowlist is null."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v0

    .line 262
    :cond_5a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    :try_start_5b
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 263
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 264
    .local v2, "allowlist":Lorg/json/JSONObject;
    const-string v3, "package"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_72

    .line 266
    goto :goto_a5

    .line 268
    :cond_72
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 269
    const-string v4, "support"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "support":Ljava/lang/String;
    if-nez v4, :cond_83

    .line 271
    sget-object v1, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v1

    .line 273
    :cond_83
    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v1, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v1

    .line 277
    :cond_a2
    sget-object v1, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_a4} :catch_a9

    return-object v1

    .line 262
    .end local v2    # "allowlist":Lorg/json/JSONObject;
    .end local v4    # "support":Ljava/lang/String;
    :cond_a5
    :goto_a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 283
    .end local v0    # "i":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_a8
    goto :goto_ad

    .line 281
    :catch_a9
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ad
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v0

    .line 238
    :cond_b0
    :goto_b0
    const-string v0, "Invalid args."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    return-object v0
.end method

.method public registerToScpm()Z
    .registers 14

    .line 87
    const-string v0, "CodecSolution_SCPMV2Helper"

    const-string v1, "registerToScpm()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "packageName"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "appId"

    const-string v4, "oqfypdqvry"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "version"

    const-string v4, "0.0.0"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "receiverPackageName"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 98
    .local v4, "callingId":J
    const/4 v6, 0x0

    :try_start_2c
    iget-object v7, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->SCPMV2_PROVIDER_URI:Landroid/net/Uri;

    const-string v9, "register"

    invoke-virtual {v7, v8, v9, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_ba
    .catchall {:try_start_2c .. :try_end_3a} :catchall_b8

    move-object v2, v3

    .line 103
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    nop

    .line 106
    if-nez v2, :cond_47

    .line 107
    const-string v3, "Bundle is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v6

    .line 111
    :cond_47
    const-string v3, "rcode"

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "rcode":I
    const-string v8, "rmsg"

    const-string v9, "null"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "rmsg":Ljava/lang/String;
    const/4 v9, 0x2

    const-string v10, "]"

    if-ne v3, v9, :cond_80

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to register : rcode["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "], rmsg["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v6

    .line 118
    :cond_80
    const-string v9, "token"

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "token":Ljava/lang/String;
    if-nez v9, :cond_8f

    .line 120
    const-string v7, "token is null"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v6

    .line 124
    :cond_8f
    iget-object v12, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    if-eqz v12, :cond_9b

    .line 125
    const-string v7, "token is already set. initialize..."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object v11, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 127
    return v6

    .line 130
    :cond_9b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "token["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object v9, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 133
    return v7

    .line 103
    .end local v3    # "rcode":I
    .end local v8    # "rmsg":Ljava/lang/String;
    .end local v9    # "token":Ljava/lang/String;
    :catchall_b8
    move-exception v0

    goto :goto_da

    .line 99
    :catch_ba
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    :try_start_bb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : Failed to register : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_bb .. :try_end_d5} :catchall_b8

    .line 101
    nop

    .line 103
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    return v6

    .line 103
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_da
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw v0
.end method
