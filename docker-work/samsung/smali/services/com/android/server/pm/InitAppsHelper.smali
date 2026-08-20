.class public final Lcom/android/server/pm/InitAppsHelper;
.super Ljava/lang/Object;
.source "InitAppsHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mCachedSystemApps:I

.field public final mDirsToScanAsSystem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mExpectingBetter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mIsDeviceUpgrading:Z

.field public final mIsOnlyCoreApps:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mScanFlags:I

.field public final mStubSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemPackagesCount:I

.field public final mSystemParseFlags:I

.field public final mSystemPartitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemScanFlags:I

.field public mSystemScanTime:J


# direct methods
.method public static synthetic $r8$lambda$-5LLLD37IPWFLXofHO2dm3s0ZO0(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InitAppsHelper;->lambda$initSystemApps$0(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdmghGNPbGomudqDIE39M_OvlOc(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InitAppsHelper;->lambda$initSystemApps$1(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/ApexManager;",
            "Lcom/android/server/pm/InstallPackageHelper;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 111
    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 112
    iput-object p3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 113
    iput-object p4, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getSystemScanPartitions()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    .line 116
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    if-nez p2, :cond_40

    .line 119
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result p2

    if-eqz p2, :cond_3b

    goto :goto_40

    :cond_3b
    const/16 p2, 0x210

    .line 122
    iput p2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    goto :goto_44

    :cond_40
    :goto_40
    const/16 p2, 0x1210

    .line 120
    iput p2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 124
    :goto_44
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 125
    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 126
    invoke-static {}, Lcom/android/server/pm/ParallelPackageParser;->makeExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic lambda$initSystemApps$0(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    .line 215
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 216
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 215
    invoke-interface {p0, p2, v0, p1}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initSystemApps$1(Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5

    .line 214
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;
    .registers 7

    .line 177
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_5e

    .line 178
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ScanPartition;

    .line 179
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {v2}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4e
    :goto_4e
    const/high16 v0, 0x800000

    .line 184
    iget-boolean v1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz v1, :cond_56

    const/high16 v0, 0x1800000

    .line 187
    :cond_56
    new-instance v1, Lcom/android/server/pm/ScanPartition;

    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/pm/ScanPartition;-><init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;I)V

    return-object v1

    :cond_5e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final fixSystemPackages([ILcom/android/server/pm/parsing/PackageParser2;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanupDisabledPackageSettings(Ljava/util/List;[II)V

    .line 308
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 309
    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    or-int/lit16 p1, p1, 0x80

    or-int/lit16 v2, p1, 0x1000

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v6, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->updateDuplicatePreloadApps(IIJLcom/android/server/pm/parsing/PackageParser2;Landroid/util/ArrayMap;)V

    .line 313
    :cond_22
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->checkExistingBetterPackages(Landroid/util/ArrayMap;Ljava/util/List;II)V

    .line 318
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget p0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/pm/InstallPackageHelper;->installSystemStubPackages(Ljava/util/List;I)V

    return-void
.end method

.method public final getApexScanPartitions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p0

    .line 164
    invoke-static {p0}, Lcom/samsung/android/server/pm/scan/ApexScanUtils;->assertApexInfosAreValid(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 166
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 167
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-static {v2}, Lcom/android/server/pm/InitAppsHelper;->resolveApexToScanPartition(Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/ScanPartition;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method public getDirsToScanAsSystem()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    return-object p0
.end method

.method public final getFrameworkResApkSplitFiles()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "scanFrameworkResApkSplits"

    .line 130
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 132
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 134
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    .line 135
    :goto_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 136
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 137
    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    const-string v7, "etc/splits"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 139
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_39
    if-ge v7, v6, :cond_49

    aget-object v8, v5, v7

    .line 140
    invoke-static {v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 141
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_50

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 148
    :cond_4c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :catchall_50
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 149
    throw p0
.end method

.method public final getSystemScanPartitions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPartitions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getApexScanPartitions()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directories scanned as system partitions: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PackageManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public initNonSystemApps(Lcom/android/server/pm/parsing/PackageParser2;[IJ)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .line 263
    iget-boolean v0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    if-nez v0, :cond_57

    const-string v0, "PackageManager"

    const-string v1, "!@Boot_EBS_F: boot_progress_pms_data_scan_start"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc08

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 265
    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 267
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getAppInstallDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    or-int/lit16 v4, v0, 0x80

    iget-object v6, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 273
    new-instance v1, Ljava/io/File;

    const-string v0, "/data/overlays/currentstyle"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa01

    iget-object v6, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 278
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/current_locale_apks/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 280
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa01

    iget-object v6, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 286
    :cond_57
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 291
    iget-boolean v0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    if-nez v0, :cond_6d

    .line 292
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InitAppsHelper;->fixSystemPackages([ILcom/android/server/pm/parsing/PackageParser2;)V

    .line 293
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/InitAppsHelper;->logNonSystemAppScanningTime(J)V

    .line 295
    :cond_6d
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 296
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->pruneRenamedPackagesLPw()V

    return-void

    .line 288
    :cond_7a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not all tasks finished before calling close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initSystemApps(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[IJ)",
            "Lcom/android/internal/content/om/OverlayConfig;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ApexManager;->scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/InitAppsHelper;->scanSystemDirs(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 207
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 209
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v3, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    iget-object v4, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 213
    :cond_45
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayConfig;->initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object p1

    .line 218
    iget-boolean v0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsOnlyCoreApps:Z

    if-nez v0, :cond_60

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InitAppsHelper;->updateStubSystemAppsList(Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v1, v2, p3}, Lcom/android/server/pm/InstallPackageHelper;->prepareSystemPackageCleanUp(Lcom/android/server/utils/WatchedArrayMap;Ljava/util/List;Landroid/util/ArrayMap;[I)V

    .line 225
    :cond_60
    invoke-virtual {p0, p4, p5}, Lcom/android/server/pm/InitAppsHelper;->logSystemAppsScanningTime(J)V

    return-object p1
.end method

.method public isExpectingBetter(Ljava/lang/String;)Z
    .registers 2

    .line 422
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final logNonSystemAppScanningTime(J)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    sub-int v6, v0, v1

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, p1

    .line 327
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    sub-int/2addr p1, p2

    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Boot_EBS_F: Finished scanning non-system apps ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms), packageCount: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , cached: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "PackageManager"

    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished scanning non-system apps. Time: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, packageCount: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , timePerPackage: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_62

    const-wide/16 v4, 0x0

    goto :goto_65

    :cond_62
    int-to-long v4, p1

    .line 333
    div-long v4, v0, v4

    :goto_65
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 330
    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xc12

    const-string/jumbo v2, "non-system"

    move-wide v3, v0

    move v5, p1

    .line 336
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/server/pm/PmLog;->logFinishedScanningInfo(Ljava/lang/String;JIII)V

    .line 339
    iget-boolean p0, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz p0, :cond_8e

    if-lez p1, :cond_8e

    const/16 p0, 0xef

    const/16 p2, 0xe

    int-to-long v2, p1

    .line 341
    div-long/2addr v0, v2

    invoke-static {p0, p2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_8e
    return-void
.end method

.method public final logSystemAppsScanningTime(J)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->pruneSharedUsersLPw()V

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 236
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "!@Boot_EBS_F: Finished scanning system apps ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms), packageCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cached: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished scanning system apps. Time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, packageCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , timePerPackage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-nez v0, :cond_71

    const-wide/16 v0, 0x0

    goto :goto_76

    :cond_71
    iget-wide v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long v3, v0

    div-long v0, v1, v3

    :goto_76
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " , cached: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-wide v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    iget v4, p0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    const/16 v5, 0xc12

    const-string/jumbo v0, "system"

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/server/pm/PmLog;->logFinishedScanningInfo(Ljava/lang/String;JIII)V

    .line 248
    iget-boolean p1, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz p1, :cond_ab

    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-lez p1, :cond_ab

    const/16 p2, 0xef

    const/16 v0, 0xf

    .line 250
    iget-wide v1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long p0, p1

    div-long/2addr v1, p0

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_ab
    return-void
.end method

.method public final scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;II",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scanDir ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/high16 v0, 0x800000

    and-int/2addr v0, p4

    if-eqz v0, :cond_2a

    move v0, p3

    or-int/lit16 v0, v0, 0x200

    goto :goto_2b

    :cond_2a
    move v0, p3

    :goto_2b
    move v6, v0

    move-object v0, p0

    .line 414
    :try_start_2d
    iget-object v3, v0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesFromDir(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3c

    .line 417
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 418
    throw v0
.end method

.method public final scanSystemDirs(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock",
            "mPm.mLock"
        }
    .end annotation

    .line 354
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "framework"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_14
    if-ltz v8, :cond_3a

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ScanPartition;

    .line 362
    invoke-virtual {v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_37

    .line 365
    :cond_25
    invoke-virtual {v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v4, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v0, v0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v4, v0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    :goto_37
    add-int/lit8 v8, v8, -0x1

    goto :goto_14

    :cond_3a
    const/4 v2, 0x0

    .line 370
    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int/lit8 v0, v0, 0x1

    const/high16 v8, 0x20000

    or-int v4, v0, v8

    move-object v0, p0

    move-object v1, v7

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    move v9, v0

    :goto_60
    if-ge v9, v7, :cond_99

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/ScanPartition;

    .line 381
    invoke-virtual {v10}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 382
    invoke-virtual {v10}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    or-int/2addr v0, v8

    iget v4, v10, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v4, v0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 387
    :cond_84
    invoke-virtual {v10}, Landroid/content/pm/PackagePartitions$SystemPartition;->getAppFolder()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v4, v10, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v4, v0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;Ljava/util/List;IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    :cond_99
    return-void

    .line 375
    :cond_9a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load frameworks package; check log for warnings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateStubSystemAppsList(Ljava/util/List;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_25

    .line 397
    iget-object v2, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 398
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 399
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    return-void
.end method
