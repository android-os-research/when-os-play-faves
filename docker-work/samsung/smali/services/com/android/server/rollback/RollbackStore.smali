.class public Lcom/android/server/rollback/RollbackStore;
.super Ljava/lang/Object;
.source "RollbackStore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final mRollbackDataDir:Ljava/io/File;

.field public final mRollbackHistoryDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 78
    iput-object p2, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    return-void
.end method

.method public static backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 250
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    invoke-static {v0, p0}, Lcom/android/server/rollback/RollbackStore;->isLinkPossible(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v1, 0x0

    if-nez p1, :cond_40

    .line 262
    :try_start_23
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/system/ErrnoException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_40

    :catch_2f
    move-exception p1

    const-string/jumbo v2, "persist.rollback.is_test"

    .line 265
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_41

    .line 267
    :cond_3a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_40
    :goto_40
    move p2, p1

    :goto_41
    if-eqz p2, :cond_50

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array p2, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p1, p0, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    :cond_50
    return-void
.end method

.method public static convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 137
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 138
    iget v3, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    iget v3, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    const-string v4, "appId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    iget-object v1, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v3, "seInfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_35
    return-object v0
.end method

.method public static convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 151
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 152
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    new-instance v3, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    const-string/jumbo v4, "userId"

    .line 154
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "appId"

    .line 155
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "seInfo"

    .line 156
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    .line 153
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2f
    return-object v0
.end method

.method public static deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 299
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    goto :goto_a

    :cond_27
    return-void
.end method

.method public static deleteRollback(Lcom/android/server/rollback/Rollback;)V
    .registers 1

    .line 356
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    return-void
.end method

.method public static extensionVersionsFromJson(Lorg/json/JSONArray;)Landroid/util/SparseIntArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 177
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    return-object p0

    .line 179
    :cond_9
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 180
    :goto_12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 181
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "sdkVersion"

    .line 183
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "extensionVersion"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 182
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2f
    return-object v1
.end method

.method public static extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 165
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 166
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 167
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    const-string/jumbo v4, "sdkVersion"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const-string v4, "extensionVersion"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    return-object v0
.end method

.method public static fromIntList(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 126
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method public static getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 287
    array-length p1, p0

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLinkPossible(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    .line 233
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    iget-wide v1, p0, Landroid/system/StructStat;->st_dev:J

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    iget-wide p0, p0, Landroid/system/StructStat;->st_dev:J
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_1a

    cmp-long p0, v1, p0

    if-nez p0, :cond_1a

    const/4 v0, 0x1

    :catch_1a
    :cond_1a
    return v0
.end method

.method public static loadRollback(Ljava/io/File;)Lcom/android/server/rollback/Rollback;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "rollback.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    new-instance v1, Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-static {v1, p0}, Lcom/android/server/rollback/RollbackStore;->rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;

    move-result-object p0
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 371
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static loadRollbacks(Ljava/io/File;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_3d

    aget-object v3, p0, v2

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 90
    :try_start_18
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->loadRollback(Ljava/io/File;)Lcom/android/server/rollback/Rollback;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_3a

    :catch_20
    move-exception v4

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read rollback at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RollbackManager"

    invoke-static {v6, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3d
    return-object v0
.end method

.method public static packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "versionRolledBackFrom"

    .line 431
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    const-string/jumbo v0, "versionRolledBackTo"

    .line 433
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v3

    const-string/jumbo v0, "pendingBackups"

    .line 436
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 435
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->toIntList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v0, "pendingRestores"

    .line 438
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 437
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v0, "isApex"

    .line 440
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v0, "isApkInApex"

    .line 441
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v0, "installedUsers"

    .line 444
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->toIntList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v0, "rollbackDataPolicy"

    const/4 v1, 0x0

    .line 447
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 450
    new-instance p0, Landroid/content/rollback/PackageRollbackInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    return-object p0
.end method

.method public static packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 484
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 485
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public static removeFile(Ljava/io/File;)V
    .registers 5

    .line 496
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 497
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 498
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 501
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 502
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1f
    return-void
.end method

.method public static rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 378
    new-instance v11, Lcom/android/server/rollback/Rollback;

    const-string/jumbo v0, "info"

    .line 379
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;

    move-result-object v1

    const-string/jumbo v0, "timestamp"

    .line 381
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v3

    const-string/jumbo v0, "stagedSessionId"

    const/4 v2, -0x1

    .line 384
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "originalSessionId"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "state"

    .line 385
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/Rollback;->rollbackStateFromString(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "stateDescription"

    .line 386
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "restoreUserDataInProgress"

    .line 387
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 388
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v0, "installerPackageName"

    const-string v2, ""

    .line 389
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "extensionVersions"

    .line 390
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->extensionVersionsFromJson(Lorg/json/JSONArray;)Landroid/util/SparseIntArray;

    move-result-object v10

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/rollback/Rollback;-><init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V

    return-object v11
.end method

.method public static rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 199
    new-instance v6, Landroid/content/rollback/RollbackInfo;

    const-string/jumbo v0, "rollbackId"

    .line 200
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "packages"

    .line 201
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v0, "isStaged"

    .line 202
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "causePackages"

    .line 203
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    const-string v0, "committedSessionId"

    .line 204
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    return-object v6
.end method

.method public static rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    const-string/jumbo v2, "rollbackId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    const-string/jumbo v2, "isStaged"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "causePackages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result p0

    const-string v1, "committedSessionId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static saveRollback(Lcom/android/server/rollback/Rollback;)V
    .registers 2

    .line 337
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getBackupDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    return-void
.end method

.method public static saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V
    .registers 6

    .line 309
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "rollback.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 311
    :try_start_e
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 312
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "info"

    .line 313
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "timestamp"

    .line 314
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "originalSessionId"

    .line 315
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "state"

    .line 316
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "stateDescription"

    .line 317
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "restoreUserDataInProgress"

    .line 318
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "userId"

    .line 319
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getUserId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "installerPackageName"

    .line 320
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extensionVersions"

    .line 322
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 321
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 325
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 326
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 327
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_8e} :catch_8f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8e} :catch_8f

    goto :goto_b1

    :catch_8f
    move-exception p1

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save rollback for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "RollbackManager"

    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_b1

    .line 331
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public static toIntList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 114
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 115
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public static toJson(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 474
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 475
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 476
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method public static toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 394
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 395
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v1

    const-string/jumbo p0, "longVersionCode"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 407
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 408
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "versionRolledBackFrom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "versionRolledBackTo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    move-result-object v1

    .line 412
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v2

    .line 413
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v3

    .line 414
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->fromIntList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v4, "pendingBackups"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "pendingRestores"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v1

    const-string/jumbo v2, "isApex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 418
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v1

    const-string/jumbo v2, "isApkInApex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 421
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->fromIntList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "installedUsers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result p0

    const-string/jumbo v1, "rollbackDataPolicy"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    .line 401
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "longVersionCode"

    .line 402
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 403
    new-instance p0, Landroid/content/pm/VersionedPackage;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    return-object p0
.end method

.method public static versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 467
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 468
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public static versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 457
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 458
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 459
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public createNonStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;
    .registers 16

    .line 214
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    new-instance p0, Lcom/android/server/rollback/Rollback;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-object p0
.end method

.method public createStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;
    .registers 16

    .line 226
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    new-instance p0, Lcom/android/server/rollback/Rollback;

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-object p0
.end method

.method public loadHistorialRollbacks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadRollbacks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public saveRollbackToHistory(Lcom/android/server/rollback/Rollback;)V
    .registers 6

    .line 346
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    invoke-static {p1, v2}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    return-void
.end method
