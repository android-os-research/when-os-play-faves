.class public Lcom/android/server/pm/dex/DynamicCodeLogger;
.super Ljava/lang/Object;
.source "DynamicCodeLogger.java"


# static fields
.field public static final DCL_DEX_SUBTAG:Ljava/lang/String; = "dcl"

.field public static final DCL_NATIVE_SUBTAG:Ljava/lang/String; = "dcln"

.field public static final SNET_TAG:I = 0x534e4554

.field public static final TAG:Ljava/lang/String; = "DynamicCodeLogger"


# instance fields
.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

.field public mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Lcom/android/server/pm/dex/PackageDynamicCodeLoading;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 76
    iput-object p2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 69
    new-instance p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-direct {p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->clear()V

    return-void
.end method

.method public final fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 206
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p2, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_1a

    :catch_1a
    return p0
.end method

.method public getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 215
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "package"

    .line 84
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 86
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public logDynamicCodeLoading(Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 97
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 102
    :cond_b
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 105
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_186

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 108
    iget v13, v12, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 110
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-string v7, "DynamicCodeLogger"

    if-ltz v0, :cond_4d

    .line 113
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :cond_49
    :goto_49
    move-object v6, v0

    move/from16 v17, v2

    goto :goto_86

    .line 119
    :cond_4d
    :try_start_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v8, v14, v15, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_58

    goto :goto_5b

    .line 120
    :cond_58
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5a} :catch_5b

    goto :goto_5d

    :catch_5b
    :goto_5b
    move-object/from16 v0, v16

    .line 124
    :goto_5d
    invoke-virtual {v9, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v0, :cond_49

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v3, v8, v13}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_49

    :goto_86
    if-nez v6, :cond_8b

    move/from16 v2, v17

    goto :goto_1b

    .line 138
    :cond_8b
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v1, v11, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    const/4 v0, 0x2

    goto :goto_9e

    .line 140
    :cond_95
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v1, v11, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_167

    const/4 v0, 0x1

    .line 154
    :goto_9e
    :try_start_9e
    iget-object v2, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_a4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_9e .. :try_end_a4} :catch_b5

    move-object v3, v11

    move-object/from16 v18, v4

    move-object/from16 v4, p1

    move-object v14, v6

    move-object/from16 v6, v18

    move-object v15, v7

    move v7, v0

    :try_start_ae
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v16
    :try_end_b2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ae .. :try_end_b2} :catch_b3

    goto :goto_d8

    :catch_b3
    move-exception v0

    goto :goto_b8

    :catch_b5
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    .line 157
    :goto_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got InstallerException when hashing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d8
    move-object/from16 v0, v16

    .line 161
    iget-char v2, v12, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    const/16 v3, 0x44

    if-ne v2, v3, :cond_e3

    const-string v2, "dcl"

    goto :goto_e5

    :cond_e3
    const-string v2, "dcln"

    .line 164
    :goto_e5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_116

    .line 168
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_116

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v17

    goto :goto_132

    .line 171
    :cond_116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got no hash for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v8, v11, v13}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v0, v17, v0

    .line 176
    :goto_132
    iget-object v4, v12, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_138
    :goto_138
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_164

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 178
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_150

    .line 179
    iget v5, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v11, 0x0

    goto :goto_15e

    .line 182
    :cond_150
    :try_start_150
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_154} :catch_15b

    const-wide/16 v11, 0x0

    :try_start_156
    invoke-interface {v6, v5, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_15a} :catch_15d

    goto :goto_15e

    :catch_15b
    const-wide/16 v11, 0x0

    :catch_15d
    move v5, v7

    :goto_15e
    if-eq v5, v7, :cond_138

    .line 190
    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_138

    :cond_164
    move v2, v0

    goto/16 :goto_1b

    :cond_167
    move-object v15, v7

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not infer CE/DE storage for path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v8, v11, v13}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v2, v17, v0

    goto/16 :goto_1b

    :cond_186
    if-eqz v2, :cond_18d

    .line 196
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_18d
    return-void
.end method

.method public readAndSync(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read()V

    .line 274
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->syncData(Ljava/util/Map;)V

    return-void
.end method

.method public recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v3, 0x44

    move-object v1, p3

    move-object v2, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 227
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_13
    return-void
.end method

.method public recordNative(ILjava/lang/String;)V
    .registers 11

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 239
    array-length v1, v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_26

    if-nez v1, :cond_e

    goto :goto_26

    :cond_e
    const/4 v1, 0x0

    .line 247
    aget-object v7, v0, v1

    .line 248
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 250
    iget-object v2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v5, 0x4e

    move-object v3, v7

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 252
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :catch_26
    :cond_26
    :goto_26
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removePackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 262
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_d
    return-void
.end method

.method public removeUserPackage(Ljava/lang/String;I)V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 268
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    :cond_d
    return-void
.end method

.method public writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const/4 p1, 0x2

    aput-object p3, p0, p1

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public writeNow()V
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeNow()V

    return-void
.end method
