.class public Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "DiskStatsFileLogger.java"


# static fields
.field public static final APP_CACHES_KEY:Ljava/lang/String; = "cacheSizes"

.field public static final APP_CACHE_AGG_KEY:Ljava/lang/String; = "cacheSize"

.field public static final APP_DATA_KEY:Ljava/lang/String; = "appDataSizes"

.field public static final APP_DATA_SIZE_AGG_KEY:Ljava/lang/String; = "appDataSize"

.field public static final APP_SIZES_KEY:Ljava/lang/String; = "appSizes"

.field public static final APP_SIZE_AGG_KEY:Ljava/lang/String; = "appSize"

.field public static final AUDIO_KEY:Ljava/lang/String; = "audioSize"

.field public static final DOWNLOADS_KEY:Ljava/lang/String; = "downloadsSize"

.field public static final LAST_QUERY_TIMESTAMP_KEY:Ljava/lang/String; = "queryTime"

.field public static final MISC_KEY:Ljava/lang/String; = "otherSize"

.field public static final PACKAGE_NAMES_KEY:Ljava/lang/String; = "packageNames"

.field public static final PHOTOS_KEY:Ljava/lang/String; = "photosSize"

.field public static final SYSTEM_KEY:Ljava/lang/String; = "systemSize"

.field public static final TAG:Ljava/lang/String; = "DiskStatsLogger"

.field public static final VIDEOS_KEY:Ljava/lang/String; = "videosSize"


# instance fields
.field public mDownloadsSize:J

.field public mPackageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field public mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field public mSystemSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;J)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 78
    invoke-virtual {p2}, Lcom/android/server/storage/FileCollector$MeasurementResult;->totalAccountedSize()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    .line 79
    iput-wide p4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    .line 80
    iput-object p3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addAppsToJson(Lorg/json/JSONObject;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 117
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 118
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 119
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 120
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 125
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DiskStatsFileLogger;->filterOnlyPrimaryUser()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide v9, v7

    move-wide v11, v9

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_78

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageStats;

    .line 128
    iget-wide v14, v13, Landroid/content/pm/PackageStats;->codeSize:J

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 129
    iget-wide v3, v13, Landroid/content/pm/PackageStats;->dataSize:J

    move-object/from16 v18, v1

    .line 130
    iget-wide v0, v13, Landroid/content/pm/PackageStats;->cacheSize:J

    move/from16 v19, v5

    move-object/from16 p0, v6

    if-eqz v5, :cond_57

    .line 132
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v14, v5

    .line 133
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v3, v5

    .line 134
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v5

    :cond_57
    add-long/2addr v7, v14

    add-long/2addr v11, v3

    add-long/2addr v9, v0

    .line 140
    iget-object v5, v13, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v6, v18

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    invoke-virtual {v2, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-object/from16 v5, v16

    .line 142
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-object/from16 v3, v17

    .line 143
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-object/from16 v0, p1

    move-object v4, v3

    move-object v3, v5

    move-object v1, v6

    move/from16 v5, v19

    move-object/from16 v6, p0

    goto :goto_2a

    :cond_78
    move-object v6, v1

    move-object v5, v3

    move-object v3, v4

    const-string/jumbo v0, "packageNames"

    move-object/from16 v1, p1

    .line 145
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appSizes"

    .line 146
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cacheSizes"

    .line 147
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appDataSizes"

    .line 148
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appSize"

    .line 149
    invoke-virtual {v1, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "cacheSize"

    .line 150
    invoke-virtual {v1, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "appDataSize"

    .line 151
    invoke-virtual {v1, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public dumpToFile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/storage/DiskStatsFileLogger;->getJsonRepresentation()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 92
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 94
    :cond_e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public final filterOnlyPrimaryUser()Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 161
    iget-object p0, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageStats;

    .line 162
    iget v2, v1, Landroid/content/pm/PackageStats;->userHandle:I

    if-eqz v2, :cond_1c

    goto :goto_b

    .line 166
    :cond_1c
    iget-object v2, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageStats;

    if-eqz v2, :cond_51

    .line 168
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 169
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->codeSize:J

    .line 170
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J

    .line 171
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 172
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 173
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    goto :goto_b

    .line 175
    :cond_51
    iget-object v2, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/content/pm/PackageStats;

    invoke-direct {v3, v1}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_5c
    return-object v0
.end method

.method public final getJsonRepresentation()Lorg/json/JSONObject;
    .registers 5

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "queryTime"

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "photosSize"

    .line 101
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "videosSize"

    .line 102
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "audioSize"

    .line 103
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "downloadsSize"

    .line 104
    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "systemSize"

    .line 105
    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "otherSize"

    .line 106
    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_48} :catch_49

    return-object v0

    :catch_49
    move-exception p0

    .line 109
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DiskStatsLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
