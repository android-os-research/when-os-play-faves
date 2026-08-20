.class final Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;
.super Lcom/android/server/pm/ApexManager;
.source "ApexManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApexManagerFlattenedApex"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1328
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;-><init>()V

    return-void
.end method


# virtual methods
.method public abortStagedSession(I)Z
    .registers 2

    .line 1440
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .registers 2

    .line 1513
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public destroyCeSnapshots(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public destroyDeSnapshots(I)Z
    .registers 2

    .line 1493
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public getActiveApexInfos()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation

    .line 1335
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1338
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1342
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_49

    aget-object v3, v0, v2

    .line 1343
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 1346
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.art.debug"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 1347
    new-instance v4, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 1348
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v3, v6}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/ApexManager$ActiveApexInfo-IA;)V

    .line 1347
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_49
    return-object p0
.end method

.method public getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1391
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivePackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApexSystemServices()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexSystemServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBackingApexFile(Ljava/io/File;)Ljava/io/File;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFactoryPackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInactivePackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1379
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessions()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation

    .line 1403
    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    return-object p0
.end method

.method public getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
    .registers 2

    .line 1415
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .registers 2

    .line 1398
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public installPackage(Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2;)V
    .registers 3

    .line 1523
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "APEX updates are not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isApexSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public markBootCompleted()V
    .registers 1

    return-void
.end method

.method public markStagedSessionReady(I)V
    .registers 2

    .line 1420
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public markStagedSessionSuccessful(I)V
    .registers 2

    .line 1425
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    return-void
.end method

.method public reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .registers 2

    .line 1518
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public restoreCeData(IILjava/lang/String;)Z
    .registers 4

    .line 1488
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public revertActiveSessions()Z
    .registers 1

    .line 1435
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    return-void
.end method

.method public snapshotCeData(IILjava/lang/String;)Z
    .registers 4

    .line 1483
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1409
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x6e

    const-string v0, "Device doesn\'t support updating APEX"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public uninstallApex(Ljava/lang/String;)Z
    .registers 2

    .line 1445
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
