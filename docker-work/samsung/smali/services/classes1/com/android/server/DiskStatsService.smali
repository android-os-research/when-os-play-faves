.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field public static final DISKSTATS_DUMP_FILE:Ljava/lang/String; = "/data/system/diskstats_cache.json"

.field public static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lcom/android/server/storage/DiskStatsLoggingService;->schedule(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19

    move-object v7, p0

    move-object/from16 v1, p2

    .line 70
    iget-object v0, v7, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string v2, "DiskStatsService"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/16 v0, 0x200

    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v0, :cond_1c

    int-to-byte v5, v4

    .line 74
    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 76
    :cond_1c
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v5, "system/perftest.tmp"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v8, 0x0

    .line 82
    :try_start_2d
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_46
    .catchall {:try_start_2d .. :try_end_32} :catchall_3f

    .line 83
    :try_start_32
    invoke-virtual {v9, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3d
    .catchall {:try_start_32 .. :try_end_35} :catchall_3a

    .line 87
    :try_start_35
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_38

    :catch_38
    move-object v0, v8

    goto :goto_4d

    :catchall_3a
    move-exception v0

    move-object v8, v9

    goto :goto_40

    :catch_3d
    move-exception v0

    goto :goto_48

    :catchall_3f
    move-exception v0

    :goto_40
    if-eqz v8, :cond_45

    :try_start_42
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_45

    .line 88
    :catch_45
    :cond_45
    throw v0

    :catch_46
    move-exception v0

    move-object v9, v8

    :goto_48
    if-eqz v9, :cond_4d

    .line 87
    :try_start_4a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4d

    .line 90
    :catch_4d
    :cond_4d
    :goto_4d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_5a
    const-string v2, "--proto"

    move-object/from16 v4, p3

    .line 93
    invoke-virtual {p0, v4, v2}, Lcom/android/server/DiskStatsService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_91

    .line 97
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v13, 0x10800000001L

    if-eqz v0, :cond_74

    move v3, v12

    .line 99
    :cond_74
    invoke-virtual {v1, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz v0, :cond_86

    const-wide v2, 0x10900000002L

    .line 101
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_8f

    :cond_86
    const-wide v2, 0x10500000003L

    sub-long/2addr v9, v5

    .line 103
    invoke-virtual {v1, v2, v3, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_8f
    move-object v0, v1

    goto :goto_b1

    :cond_91
    if-eqz v0, :cond_a0

    const-string v2, "Test-Error: "

    .line 107
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_af

    :cond_a0
    const-string v0, "Latency: "

    .line 110
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long/2addr v9, v5

    .line 111
    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "ms [512B Data Write]"

    .line 112
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_af
    move-object v0, v8

    move-object v8, v1

    :goto_b1
    if-eqz v11, :cond_b7

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_ba

    .line 119
    :cond_b7
    invoke-virtual {p0, v8}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeed(Ljava/io/PrintWriter;)V

    .line 122
    :goto_ba
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x0

    const-string v3, "Data"

    move-object v1, p0

    move-object v4, v8

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 124
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x1

    const-string v3, "Cache"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 126
    new-instance v2, Ljava/io/File;

    const-string v1, "/system"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    const-string v3, "System"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 128
    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x3

    const-string v3, "Metadata"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 131
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    if-eqz v11, :cond_ff

    const-wide v2, 0x10e00000005L

    if-eqz v1, :cond_fb

    const/4 v1, 0x3

    .line 134
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_106

    .line 137
    :cond_fb
    invoke-virtual {v0, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_106

    :cond_ff
    if-eqz v1, :cond_106

    const-string v1, "File-based Encryption: true"

    .line 141
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_106
    :goto_106
    if-eqz v11, :cond_10c

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/DiskStatsService;->reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_10f

    .line 147
    :cond_10c
    invoke-virtual {p0, v8}, Lcom/android/server/DiskStatsService;->reportCachedValues(Ljava/io/PrintWriter;)V

    :goto_10f
    if-eqz v11, :cond_114

    .line 151
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_114
    return-void
.end method

.method public final getRecentPerf()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo p0, "storaged"

    .line 298
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 300
    invoke-static {p0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object p0

    .line 301
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result p0

    return p0

    .line 299
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "storaged not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 198
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_12

    aget-object v2, p1, v1

    .line 199
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method public final reportCachedValues(Ljava/io/PrintWriter;)V
    .registers 5

    :try_start_0
    const-string p0, "/data/system/diskstats_cache.json"

    .line 209
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "App Size: "

    .line 211
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "appSize"

    .line 212
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "App Data Size: "

    .line 213
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "appDataSize"

    .line 214
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "App Cache Size: "

    .line 215
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "cacheSize"

    .line 216
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "Photos Size: "

    .line 217
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "photosSize"

    .line 218
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "Videos Size: "

    .line 219
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "videosSize"

    .line 220
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "Audio Size: "

    .line 221
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "audioSize"

    .line 222
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "Downloads Size: "

    .line 223
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "downloadsSize"

    .line 224
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "System Size: "

    .line 225
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "systemSize"

    .line 226
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "Other Size: "

    .line 227
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "otherSize"

    .line 228
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string p0, "Package Names: "

    .line 229
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "packageNames"

    .line 230
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "App Sizes: "

    .line 231
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "appSizes"

    .line 232
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "App Data Sizes: "

    .line 233
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "appDataSizes"

    .line 234
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "Cache Sizes: "

    .line 235
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "cacheSizes"

    .line 236
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c6} :catch_c7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c6} :catch_c7

    goto :goto_cf

    :catch_c7
    move-exception p0

    const-string p1, "DiskStatsService"

    const-string v0, "exception reading diskstats cache file"

    .line 238
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_cf
    return-void
.end method

.method public final reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "DiskStatsService"

    :try_start_4
    const-string v2, "/data/system/diskstats_cache.json"

    .line 244
    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v4, 0x10b00000006L

    .line 246
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10300000001L

    const-string v2, "appSize"

    .line 249
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 248
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x1030000000aL

    const-string v2, "appDataSize"

    .line 251
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 250
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string v2, "cacheSize"

    .line 253
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v8, 0x10300000002L

    .line 252
    invoke-virtual {v0, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v2, "photosSize"

    .line 255
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v10, 0x10300000003L

    .line 254
    invoke-virtual {v0, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v2, "videosSize"

    .line 257
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v12, 0x10300000004L

    .line 256
    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000005L

    const-string v2, "audioSize"

    .line 259
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 258
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000006L

    const-string v2, "downloadsSize"

    .line 261
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 260
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000007L

    const-string/jumbo v2, "systemSize"

    .line 263
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 262
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000008L

    const-string/jumbo v2, "otherSize"

    .line 265
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 264
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-string/jumbo v2, "packageNames"

    .line 267
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v6, "appSizes"

    .line 268
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "appDataSizes"

    .line 269
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v14, "cacheSizes"

    .line 270
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 271
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 272
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_116

    .line 273
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_116

    .line 274
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_116

    const/4 v15, 0x0

    :goto_ca
    if-ge v15, v14, :cond_11b

    const-wide v10, 0x20b00000009L

    .line 276
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v12, 0x10900000001L

    .line 279
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    invoke-virtual {v0, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 280
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 281
    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000004L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 282
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000003L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 284
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v15, v15, 0x1

    move-wide v10, v12

    const-wide v8, 0x10300000002L

    const-wide v12, 0x10300000004L

    goto :goto_ca

    :cond_116
    const-string v2, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"

    .line 287
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_11b
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11e} :catch_11f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11e} :catch_11f

    goto :goto_125

    :catch_11f
    move-exception v0

    const-string v2, "exception reading diskstats cache file"

    .line 293
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_125
    return-void
.end method

.method public final reportDiskWriteSpeed(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "DiskStatsService"

    .line 307
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_16

    const-string p0, "Recent Disk Write Speed (kB/s) = "

    .line 309
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_30

    :cond_16
    const-string p0, "Recent Disk Write Speed data unavailable"

    .line 312
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Recent Disk Write Speed data unavailable!"

    .line 313
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_30

    :catch_21
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public final reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    const-string v0, "DiskStatsService"

    .line 323
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_16

    const-wide v3, 0x10500000007L

    .line 325
    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_24

    :cond_16
    const-string p0, "Recent Disk Write Speed data unavailable!"

    .line 327
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public final reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .registers 16

    .line 160
    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v0, p1

    .line 162
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v2, p1

    .line 163
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_79

    cmp-long v4, p0, v4

    if-lez v4, :cond_79

    const-wide/16 v4, 0x400

    if-eqz p4, :cond_4f

    const-wide v6, 0x20b00000004L

    .line 170
    invoke-virtual {p4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10e00000001L

    .line 171
    invoke-virtual {p4, v8, v9, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10300000002L

    mul-long/2addr v2, v0

    .line 172
    div-long/2addr v2, v4

    invoke-virtual {p4, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    mul-long/2addr p0, v0

    .line 173
    div-long/2addr p0, v4

    invoke-virtual {p4, v2, v3, p0, p1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 174
    invoke-virtual {p4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_78

    .line 176
    :cond_4f
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p5, "-Free: "

    .line 177
    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v6, v2, v0

    .line 178
    div-long/2addr v6, v4

    invoke-virtual {p3, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string p5, "K / "

    .line 179
    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long/2addr v0, p0

    .line 180
    div-long/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p5, "K total = "

    .line 181
    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    mul-long/2addr v2, v0

    .line 182
    div-long/2addr v2, p0

    invoke-virtual {p3, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string p0, "% free"

    .line 183
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_78
    return-void

    .line 165
    :cond_79
    new-instance p5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid stat: bsize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " avail="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " total="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p5, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a0} :catch_a0

    :catch_a0
    move-exception p0

    if-eqz p4, :cond_a4

    goto :goto_b3

    .line 189
    :cond_a4
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "-Error: "

    .line 190
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b3
    return-void
.end method
