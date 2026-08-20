.class public Lcom/android/server/pm/ApexManager$ApexManagerImpl;
.super Lcom/android/server/pm/ApexManager;
.source "ApexManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApexManagerImpl"
.end annotation


# instance fields
.field public mActiveApexInfosCache:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAllPackagesCache:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mApexSystemServices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexSystemServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mApksInApex:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mErrorWithApkInApex:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPackageNameToApexModuleName:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 468
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;-><init>()V

    .line 469
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 486
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 493
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    return-void
.end method

.method public static isActive(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 524
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method


# virtual methods
.method public abortStagedSession(I)Z
    .registers 3

    .line 935
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->abortStagedSession(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p0

    .line 938
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApexManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final checkApexSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1142
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 1143
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    const/4 v0, 0x1

    .line 1144
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_10

    return-void

    .line 1146
    :cond_10
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x76

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK container signature of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not compatible with currently installed on device"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public destroyCeSnapshots(II)Z
    .registers 3

    .line 1086
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/apex/IApexService;->destroyCeSnapshots(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p0

    .line 1089
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApexManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .registers 3

    .line 1097
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/apex/IApexService;->destroyCeSnapshotsNotSpecified(I[I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p0

    .line 1100
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApexManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public destroyDeSnapshots(I)Z
    .registers 3

    .line 1075
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->destroyDeSnapshots(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p0

    .line 1078
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApexManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 1273
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1275
    :try_start_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p1, "APEX session state:"

    .line 1276
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p1

    invoke-interface {p1}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object p1

    .line 1279
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_9a

    aget-object v3, p1, v2

    .line 1280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1282
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v4, :cond_45

    const-string v3, "State: UNKNOWN"

    .line 1283
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1284
    :cond_45
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v4, :cond_4f

    const-string v3, "State: VERIFIED"

    .line 1285
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1286
    :cond_4f
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v4, :cond_59

    const-string v3, "State: STAGED"

    .line 1287
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1288
    :cond_59
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-eqz v4, :cond_63

    const-string v3, "State: ACTIVATED"

    .line 1289
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1290
    :cond_63
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-eqz v4, :cond_6d

    const-string v3, "State: ACTIVATION FAILED"

    .line 1291
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1292
    :cond_6d
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v4, :cond_77

    const-string v3, "State: SUCCESS"

    .line 1293
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1294
    :cond_77
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-eqz v4, :cond_81

    const-string v3, "State: REVERT IN PROGRESS"

    .line 1295
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1296
    :cond_81
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz v4, :cond_8b

    const-string v3, "State: REVERTED"

    .line 1297
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_94

    .line 1298
    :cond_8b
    iget-boolean v3, v3, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz v3, :cond_94

    const-string v3, "State: REVERT FAILED"

    .line 1299
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    :cond_94
    :goto_94
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1303
    :cond_9a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1304
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1305
    iget-object p1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_a3} :catch_d7

    .line 1306
    :try_start_a3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-nez v1, :cond_ae

    const-string p0, "APEX packages have not been scanned"

    .line 1307
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    monitor-exit p1

    return-void

    .line 1310
    :cond_ae
    monitor-exit p1
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_d4

    :try_start_af
    const-string p1, "Active APEX packages:"

    .line 1311
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getActivePackages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string p1, "Inactive APEX packages:"

    .line 1313
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getInactivePackages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string p1, "Factory APEX packages:"

    .line 1315
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getFactoryPackages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_d3} :catch_d7

    goto :goto_dc

    :catchall_d4
    move-exception p0

    .line 1310
    :try_start_d5
    monitor-exit p1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    :try_start_d6
    throw p0
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_d7} :catch_d7

    :catch_d7
    const-string p0, "Couldn\'t communicate with apexd."

    .line 1318
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_dc
    return-void
.end method

.method public dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    .line 1248
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1249
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p0, :cond_a3

    .line 1251
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-eqz p2, :cond_1f

    .line 1252
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_9f

    .line 1255
    :cond_1f
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsFactory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "ApplicationInfo: "

    .line 1261
    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1263
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1265
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 1267
    :cond_a3
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1268
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public getActiveApexInfos()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation

    .line 540
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "ApexManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 542
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    if-nez v2, :cond_44

    const-string v2, "getActiveApexInfos_noCache"

    .line 544
    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_57

    .line 546
    :try_start_16
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 547
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v2

    invoke-interface {v2}, Landroid/apex/IApexService;->getActivePackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 548
    :goto_26
    array-length v4, v2

    if-ge v3, v4, :cond_41

    .line 549
    aget-object v4, v2, v3

    .line 550
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    new-instance v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/ApexManager$ActiveApexInfo-IA;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_36} :catch_39
    .catchall {:try_start_16 .. :try_end_36} :catchall_57

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :catch_39
    move-exception v2

    :try_start_3a
    const-string v3, "ApexManager"

    const-string v4, "Unable to retrieve packages from apexservice"

    .line 553
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    :cond_41
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 557
    :cond_44
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    if-eqz v0, :cond_51

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 560
    :cond_51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_57
    move-exception p0

    .line 562
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_3a .. :try_end_59} :catchall_57

    throw p0
.end method

.method public getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 803
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    const-string v3, "APEX packages have not been scanned"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 807
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_59

    .line 809
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 810
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 812
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v2

    :goto_39
    if-ge v6, v5, :cond_56

    .line 814
    iget-object v7, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 816
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 821
    :cond_59
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1023
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1026
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 1027
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getActivePackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    const-string v3, "APEX packages have not been scanned"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    :goto_15
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 743
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 744
    invoke-static {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 745
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 748
    :cond_31
    monitor-exit v0

    return-object v1

    :catchall_33
    move-exception p0

    .line 749
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1013
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1016
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 1017
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getApexSystemServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexSystemServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1214
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1215
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 986
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1c

    const/4 p0, 0x0

    .line 991
    monitor-exit v0

    return-object p0

    .line 993
    :cond_1c
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    .line 994
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 5
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

    .line 999
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1f

    .line 1004
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1006
    :cond_1f
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    .line 1007
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public getBackingApexFile(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 1220
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 1221
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return-object v2

    .line 1224
    :cond_14
    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1c

    return-object v2

    .line 1227
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getActiveApexInfos()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 1229
    :goto_2e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 1230
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v1, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1231
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    return-object p0

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4e
    return-object v2
.end method

.method public getFactoryPackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    const-string v3, "APEX packages have not been scanned"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 757
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 758
    :goto_15
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 759
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 760
    invoke-static {v3}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 761
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 764
    :cond_31
    monitor-exit v0

    return-object v1

    :catchall_33
    move-exception p0

    .line 765
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getInactivePackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    const-string v3, "APEX packages have not been scanned"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 773
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    :goto_15
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 775
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 776
    invoke-static {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 777
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 780
    :cond_31
    monitor-exit v0

    return-object v1

    :catchall_33
    move-exception p0

    .line 781
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 9

    .line 717
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 722
    :goto_1e
    iget-object p2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_24
    if-ge v2, p2, :cond_4c

    .line 723
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 724
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_49

    :cond_37
    if-eqz v1, :cond_3f

    .line 727
    invoke-static {v4}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_47

    :cond_3f
    if-eqz v3, :cond_49

    .line 728
    invoke-static {v4}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 729
    :cond_47
    monitor-exit v0

    return-object v4

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_4c
    const/4 p0, 0x0

    .line 732
    monitor-exit v0

    return-object p0

    :catchall_4f
    move-exception p0

    .line 733
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public getSessions()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object p0

    .line 845
    new-instance v0, Landroid/util/SparseArray;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 846
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 847
    aget-object v2, p0, v1

    iget v3, v2, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    return-object v0

    :catch_1d
    move-exception p0

    const-string v0, "ApexManager"

    const-string v1, "Unable to contact apexservice"

    .line 851
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1127
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1128
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p0

    .line 1130
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 1131
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 1133
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-nez p1, :cond_21

    .line 1137
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    return-object p0

    .line 1134
    :cond_21
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 1135
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
    .registers 4

    const-string v0, "ApexManager"

    .line 875
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to collect staged apex infos"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/apex/ApexInfo;

    return-object p0

    :catch_28
    move-exception p0

    .line 877
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to contact apexservice"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .registers 3

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object p0

    .line 831
    iget-boolean p1, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz p1, :cond_d

    const/4 p0, 0x0

    :cond_d
    return-object p0

    :catch_e
    move-exception p0

    const-string p1, "ApexManager"

    const-string v0, "Unable to contact apexservice"

    .line 836
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public installPackage(Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/16 v0, -0x6e

    const/4 v1, 0x0

    const v2, 0x80000c0

    .line 1159
    :try_start_6
    invoke-virtual {p2, p1, v2, v1}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/4 v4, 0x0

    .line 1161
    invoke-static {v3, v4, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 1167
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 1174
    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->checkApexSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v3

    .line 1176
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1175
    invoke-interface {v3, p1}, Landroid/apex/IApexService;->installAndActivatePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;

    move-result-object p1

    .line 1177
    new-instance v3, Ljava/io/File;

    iget-object v5, p1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v2, v1}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p2

    .line 1179
    invoke-static {p2, p1, v2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1182
    iget-object p2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3b} :catch_c0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_3b} :catch_be
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3b} :catch_b3

    .line 1183
    :try_start_3b
    invoke-static {v4}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1184
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x800001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1185
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 1187
    :cond_51
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_57
    if-ge v1, v2, :cond_70

    .line 1188
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1189
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 1194
    :cond_70
    :goto_70
    monitor-exit p2

    return-void

    :catchall_72
    move-exception p0

    monitor-exit p2
    :try_end_74
    .catchall {:try_start_3b .. :try_end_74} :catchall_72

    :try_start_74
    throw p0

    :cond_75
    const-string p0, "ApexManager"

    .line 1170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to install new APEX package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x17

    const-string p2, "It is forbidden to install new APEX packages"

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1164
    :cond_97
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate package info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_b3} :catch_c0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_74 .. :try_end_b3} :catch_be
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b3} :catch_b3

    :catch_b3
    move-exception p0

    .line 1204
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 1205
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_be
    move-exception p0

    .line 1201
    throw p0

    .line 1196
    :catch_c0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "apexservice not available"

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 8

    .line 786
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isApexSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 787
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    move v2, v3

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_13
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 790
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_1f
    if-ge v4, v2, :cond_36

    .line 791
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 792
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 793
    monitor-exit v0

    return v3

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 796
    :cond_36
    monitor-exit v0

    return v1

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public isApexSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public markBootCompleted()V
    .registers 3

    .line 1108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0}, Landroid/apex/IApexService;->markBootCompleted()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string v0, "ApexManager"

    const-string v1, "Unable to contact apexservice"

    .line 1110
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public markStagedSessionReady(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 888
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->markStagedSessionReady(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 893
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mark apexd session as ready : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_26
    move-exception p0

    const-string p1, "ApexManager"

    const-string v0, "Unable to contact apexservice"

    .line 890
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public markStagedSessionSuccessful(I)V
    .registers 5

    const-string v0, "ApexManager"

    .line 902
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->markStagedSessionSuccessful(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_24

    :catch_a
    move-exception p0

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mark session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as successful"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void

    :catch_25
    move-exception p0

    const-string p1, "Unable to contact apexservice"

    .line 904
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9

    .line 955
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 957
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 958
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 957
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 959
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4d

    .line 961
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 962
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    const-string v4, "ApexManager"

    .line 964
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registering "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " as apk-in-apex of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 969
    :cond_79
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 974
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 976
    iget-object v3, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 977
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    iget-object v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 980
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V

    return-void
.end method

.method public restoreCeData(IILjava/lang/String;)Z
    .registers 9

    .line 1054
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1057
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1058
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_46

    if-nez v1, :cond_33

    const-string p0, "ApexManager"

    .line 1060
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid apex package name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1064
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1, p2, v1}, Landroid/apex/IApexService;->restoreCeData(IILjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3b

    return v2

    :catch_3b
    move-exception p0

    const-string p1, "ApexManager"

    .line 1067
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :catchall_46
    move-exception p0

    .line 1058
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public revertActiveSessions()Z
    .registers 4

    const-string v0, "ApexManager"

    const/4 v1, 0x0

    .line 921
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0}, Landroid/apex/IApexService;->revertActiveSessions()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    move-exception p0

    .line 927
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_15
    move-exception p0

    const-string v2, "Unable to contact apexservice"

    .line 924
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final scanApexPackagesInternalLocked(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "ApexManager"

    .line 583
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    .line 584
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 585
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v2

    invoke-interface {v2}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_29d

    .line 591
    array-length v3, v2

    if-nez v3, :cond_25

    return-void

    .line 597
    :cond_25
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 598
    new-instance v4, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct {v4, v5, v6}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 601
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_36
    if-ge v7, v5, :cond_4c

    aget-object v8, v2, v7

    .line 602
    new-instance v9, Ljava/io/File;

    iget-object v10, v8, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x20

    .line 603
    invoke-virtual {v4, v9, v10}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    .line 605
    invoke-virtual {v3, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 608
    :cond_4c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 609
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v7, v6

    .line 611
    :goto_57
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_29c

    .line 612
    invoke-virtual {v4}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v8

    .line 613
    iget-object v9, v8, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 614
    iget-object v10, v8, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/apex/ApexInfo;

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-nez v9, :cond_1f5

    .line 618
    iget-object v9, v8, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v9}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 619
    iget-object v9, v8, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    const v13, 0x80000c0

    invoke-static {v9, v10, v13}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_1dc

    .line 625
    iget-object v13, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v8, v8, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getApexSystemServices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_140

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;

    .line 628
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMinSdkVersion()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    if-eqz v14, :cond_bf

    .line 629
    invoke-static {v14}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_bf

    new-array v14, v15, [Ljava/lang/Object;

    .line 632
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMinSdkVersion()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v12

    const-string v13, "ApexSystemService %s with min_sdk_version=%s is skipped"

    .line 630
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 635
    :cond_bf
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMaxSdkVersion()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e3

    .line 636
    invoke-static {v14}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtMost(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e3

    new-array v14, v15, [Ljava/lang/Object;

    .line 639
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMaxSdkVersion()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v12

    const-string v13, "ApexSystemService %s with max_sdk_version=%s is skipped"

    .line 637
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 643
    :cond_e3
    iget-boolean v14, v10, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v14, :cond_13d

    .line 644
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v14

    move v15, v6

    .line 645
    :goto_ec
    iget-object v12, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v15, v12, :cond_127

    .line 646
    iget-object v12, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 647
    invoke-virtual {v12}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10a

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    goto :goto_ec

    .line 648
    :cond_10a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v11, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v1, v6

    iget-object v2, v12, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 650
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getJarPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Duplicate apex-system-service %s from %s, %s"

    .line 648
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_127
    new-instance v12, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 654
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getJarPath()Ljava/lang/String;

    move-result-object v15

    .line 655
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getInitOrder()I

    move-result v13

    invoke-direct {v12, v14, v15, v13}, Lcom/android/server/pm/ApexSystemServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 656
    iget-object v13, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13d
    const/4 v12, 0x1

    goto/16 :goto_8e

    .line 659
    :cond_140
    iget-object v8, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 660
    iget-object v8, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-boolean v8, v10, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v8, :cond_1a5

    .line 662
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18c

    .line 667
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v8, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    iget-object v11, v10, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_173

    .line 673
    iget-object v8, v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    iget-object v11, v10, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a5

    .line 669
    :cond_173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two active packages have the same APEX module name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_18c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two active packages have the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1a5
    :goto_1a5
    iget-boolean v8, v10, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v8, :cond_266

    .line 678
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d5

    iget-object v8, v10, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    const-string v10, "com.android.vndk."

    .line 679
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1bc

    goto :goto_1d5

    .line 680
    :cond_1bc
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two factory packages have the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_1d5
    :goto_1d5
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_266

    .line 622
    :cond_1dc
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to generate package info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1f5
    instance-of v8, v9, Lcom/android/server/pm/PackageManagerException;

    if-eqz v8, :cond_283

    .line 687
    move-object v8, v9

    check-cast v8, Lcom/android/server/pm/PackageManagerException;

    .line 689
    iget v8, v8, Lcom/android/server/pm/PackageManagerException;->error:I

    const/16 v12, -0x7b

    if-ne v8, v12, :cond_219

    .line 690
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scan apex failed, not a coreApp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_266

    .line 694
    :cond_219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@ Unexpected exception occurred while parsing "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v8, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    const-string v12, "/|@"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 697
    array-length v12, v8

    const/4 v13, 0x4

    if-le v12, v13, :cond_26a

    const/4 v12, 0x1

    aget-object v12, v8, v12

    const-string v14, "data"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26a

    aget-object v11, v8, v11

    const-string v12, "decompressed"

    .line 698
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26a

    .line 699
    aget-object v8, v8, v13

    const-string/jumbo v9, "sys.apexd.restore.module"

    .line 700
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "!@ reboot by ApexManager"

    .line 701
    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "sys.powerctl"

    const-string/jumbo v9, "reboot,recoveryDecompressedApex"

    .line 702
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_266
    :goto_266
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_57

    .line 705
    :cond_26a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 708
    :cond_283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception occurred while parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_29c
    return-void

    :catch_29d
    move-exception v0

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve packages from apexservice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    const-string/jumbo v0, "scanApexPackagesTraced"

    const-wide/32 v1, 0x40000

    .line 568
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 570
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_17

    .line 571
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->scanApexPackagesInternalLocked(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 572
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 574
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_14
    move-exception p0

    .line 572
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p0

    .line 574
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 575
    throw p0
.end method

.method public snapshotCeData(IILjava/lang/String;)Z
    .registers 9

    .line 1033
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1037
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_46

    if-nez v1, :cond_33

    const-string p0, "ApexManager"

    .line 1039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid apex package name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1043
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1, p2, v1}, Landroid/apex/IApexService;->snapshotCeData(IILjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3b

    return v2

    :catch_3b
    move-exception p0

    const-string p1, "ApexManager"

    .line 1046
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :catchall_46
    move-exception p0

    .line 1037
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 859
    :try_start_0
    new-instance v0, Landroid/apex/ApexInfoList;

    invoke-direct {v0}, Landroid/apex/ApexInfoList;-><init>()V

    .line 860
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/apex/IApexService;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception p0

    .line 866
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apexd verification failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_2b
    move-exception p0

    const-string p1, "ApexManager"

    const-string v0, "Unable to contact apexservice"

    .line 863
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public uninstallApex(Ljava/lang/String;)Z
    .registers 2

    .line 946
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->unstagePackages(Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    return p0

    :catch_d
    const/4 p0, 0x0

    return p0
.end method

.method public waitForApexService()Landroid/apex/IApexService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "apexservice"

    .line 535
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    .line 534
    invoke-static {p0}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    move-result-object p0

    return-object p0
.end method
