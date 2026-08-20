.class public final Lcom/android/server/pm/StorageEventHelper;
.super Landroid/os/storage/StorageEventListener;
.source "StorageEventHelper.java"


# instance fields
.field public final mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mLoadedVolumes:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLoadedVolumes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;


# direct methods
.method public static synthetic $r8$lambda$T8NcSlsE41Kop11BlpgL5uV9oME(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->lambda$unloadPrivatePackages$1(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1Ijuwm2xY4fBxgxK1HZaOn2bLc(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->lambda$loadPrivatePackages$0(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/AsecInstallHelper;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 78
    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 79
    iput-object p2, p0, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 80
    iput-object p3, p0, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 81
    iput-object p4, p0, Lcom/android/server/pm/StorageEventHelper;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    return-void
.end method

.method private synthetic lambda$loadPrivatePackages$0(Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->loadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method private synthetic lambda$unloadPrivatePackages$1(Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->unloadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method


# virtual methods
.method public final collectAbsoluteCodePaths(Lcom/android/server/pm/Computer;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_24

    .line 382
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 383
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return-object p0
.end method

.method public dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 5

    .line 389
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 390
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 392
    :cond_9
    new-instance p2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    const/16 v1, 0x78

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 393
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p1, "Loaded volumes:"

    .line 394
    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 396
    iget-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter p1

    .line 397
    :try_start_20
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_2e

    const-string p0, "(none)"

    .line 398
    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45

    :cond_2e
    const/4 v0, 0x0

    .line 400
    :goto_2f
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 401
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 404
    :cond_45
    :goto_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_4a

    .line 405
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_4a
    move-exception p0

    .line 404
    :try_start_4b
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public final loadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final loadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 156
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "PackageManager"

    const-string v1, "Loading internal storage is probably a mistake; ignoring"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_14
    new-instance v4, Lcom/android/server/pm/AppDataHelper;

    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v4, v0}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 163
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v0

    or-int/lit8 v7, v0, 0x8

    .line 169
    new-instance v8, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v8, v0}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 170
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9

    .line 171
    :try_start_39
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v10

    .line 172
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 173
    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_1be

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_c1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 176
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "loadPrivatePackagesInner"

    invoke-virtual {v0, v13, v14}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 181
    :try_start_71
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v0

    const/16 v14, 0x200

    .line 180
    invoke-virtual {v8, v0, v7, v14, v11}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 182
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_71 .. :try_end_7e} :catch_81
    .catchall {:try_start_71 .. :try_end_7e} :catchall_7f

    goto :goto_a8

    :catchall_7f
    move-exception v0

    goto :goto_bf

    :catch_81
    move-exception v0

    :try_start_82
    const-string v11, "PackageManager"

    .line 185
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to scan "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_a8
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v11, v10, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 190
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    const/4 v11, -0x1

    const v12, 0x20027

    .line 189
    invoke-virtual {v4, v0, v11, v12}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 194
    :cond_bd
    monitor-exit v13

    goto :goto_4e

    :goto_bf
    monitor-exit v13
    :try_end_c0
    .catchall {:try_start_82 .. :try_end_c0} :catchall_7f

    throw v0

    .line 198
    :cond_c1
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 199
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v8

    .line 200
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v9, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/storage/StorageManagerInternal;

    .line 202
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_f0
    :goto_f0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_148

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 204
    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v15

    if-eqz v15, :cond_10f

    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    .line 205
    invoke-virtual {v9, v15}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v15

    if-eqz v15, :cond_10f

    const/4 v15, 0x3

    goto :goto_118

    .line 207
    :cond_10f
    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v15}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v15

    if-eqz v15, :cond_f0

    move v15, v14

    .line 214
    :goto_118
    :try_start_118
    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    iget v12, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v7, v3, v11, v12, v15}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;III)V

    .line 215
    iget-object v11, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_124
    .catch Ljava/lang/IllegalStateException; {:try_start_118 .. :try_end_124} :catch_12e

    .line 216
    :try_start_124
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3, v0, v15, v14}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V

    .line 218
    monitor-exit v11

    goto :goto_145

    :catchall_12b
    move-exception v0

    monitor-exit v11
    :try_end_12d
    .catchall {:try_start_124 .. :try_end_12d} :catchall_12b

    :try_start_12d
    throw v0
    :try_end_12e
    .catch Ljava/lang/IllegalStateException; {:try_start_12d .. :try_end_12e} :catch_12e

    :catch_12e
    move-exception v0

    const-string v11, "PackageManager"

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to prepare storage: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_145
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_f0

    .line 225
    :cond_148
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    .line 226
    :try_start_14d
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v14

    if-eqz v0, :cond_181

    const/4 v7, 0x4

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Build fingerprint changed from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; regranting permissions for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 232
    :cond_181
    iget-object v7, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v7, v3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 235
    invoke-virtual {v10}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 237
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 238
    monitor-exit v4
    :try_end_191
    .catchall {:try_start_14d .. :try_end_191} :catchall_1bb

    .line 240
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_195
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageFreezer;

    .line 241
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto :goto_195

    :cond_1a5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 245
    invoke-virtual {v1, v14, v4, v6, v3}, Lcom/android/server/pm/StorageEventHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;Landroid/content/IIntentReceiver;)V

    .line 246
    iget-object v3, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v3

    .line 247
    :try_start_1ad
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v3

    return-void

    :catchall_1b8
    move-exception v0

    monitor-exit v3
    :try_end_1ba
    .catchall {:try_start_1ad .. :try_end_1ba} :catchall_1b8

    throw v0

    :catchall_1bb
    move-exception v0

    .line 238
    :try_start_1bc
    monitor-exit v4
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    throw v0

    :catchall_1be
    move-exception v0

    .line 173
    :try_start_1bf
    monitor-exit v9
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    throw v0
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 10

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "PackageManager"

    const-string p1, "Forgetting internal storage is probably a mistake; ignoring"

    .line 125
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 131
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 132
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    const-string v3, "PackageManager"

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because volume was forgotten"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v5, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 138
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 136
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 143
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    goto :goto_1f

    .line 146
    :cond_71
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 148
    monitor-exit v0

    return-void

    :catchall_7f
    move-exception p0

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_13 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 7

    .line 87
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 p3, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2f

    .line 88
    iget p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne p2, v0, :cond_2a

    .line 89
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p2

    .line 93
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->loadPrivatePackages(Landroid/os/storage/VolumeInfo;)V

    goto :goto_2f

    :cond_2a
    if-ne p2, p3, :cond_2f

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V

    .line 107
    :cond_2f
    :goto_2f
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez p2, :cond_65

    .line 108
    iget-object p2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz p2, :cond_65

    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p2

    if-eqz p2, :cond_65

    .line 109
    iget p1, p1, Landroid/os/storage/VolumeInfo;->state:I

    const-string p2, "PackageManager"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_54

    .line 110
    iget-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/AsecInstallHelper;->updatePreMountState(Z)V

    const-string p1, "SD Card is mounted, updateExternalMediaStatus"

    .line 111
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/StorageEventHelper;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatus(ZZ)V

    goto :goto_65

    :cond_54
    if-ne p1, p3, :cond_65

    .line 114
    iget-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    invoke-virtual {p1, v2}, Lcom/android/server/pm/AsecInstallHelper;->updatePreMountState(Z)V

    const-string p1, "SD Card is unmounted, updateExternalMediaStatus"

    .line 115
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/android/server/pm/StorageEventHelper;->mAsecInstallHelper:Lcom/android/server/pm/AsecInstallHelper;

    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatus(ZZ)V

    :cond_65
    :goto_65
    return-void
.end method

.method public reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 13

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->collectAbsoluteCodePaths(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object p1

    .line 335
    invoke-static {p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 334
    invoke-static {p2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object p2

    .line 336
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_10
    if-ge v3, v0, :cond_5c

    aget-object v4, p2, v3

    .line 337
    invoke-static {v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_21

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 338
    :cond_21
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    move v5, v6

    goto :goto_2e

    :cond_2d
    move v5, v1

    :goto_2e
    if-nez v5, :cond_31

    goto :goto_59

    .line 344
    :cond_31
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v8, v1

    :goto_3a
    if-ge v8, v7, :cond_4c

    .line 349
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 350
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    goto :goto_4d

    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_4c
    move v6, v1

    :goto_4d
    if-nez v6, :cond_59

    if-nez v2, :cond_56

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 360
    :cond_56
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_5c
    if-eqz v2, :cond_90

    .line 365
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :goto_62
    if-ge v1, p1, :cond_90

    .line 367
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    const/4 v0, 0x5

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying orphaned at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_84
    iget-object v3, p0, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 371
    monitor-exit v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :catchall_8d
    move-exception p0

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_84 .. :try_end_8f} :catchall_8d

    throw p0

    :cond_90
    return-void
.end method

.method public final sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;Landroid/content/IIntentReceiver;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .line 313
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 314
    new-array v4, v0, [Ljava/lang/String;

    .line 315
    new-array v5, v0, [I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_20

    .line 317
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 318
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 319
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 321
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move v2, p1

    move v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZ[Ljava/lang/String;[ILandroid/content/IIntentReceiver;)V

    return-void
.end method

.method public final unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unloadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 256
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v0, "PackageManager"

    const-string v1, "Unloading internal storage is probably a mistake; ignoring"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 262
    :cond_14
    iget-object v3, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 263
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 265
    :try_start_26
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v14
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_f3

    .line 266
    :try_start_2b
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 267
    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 268
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 269
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_4b

    goto :goto_37

    .line 271
    :cond_4b
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    .line 273
    new-instance v10, Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v10, v4}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    .line 275
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unloadPrivatePackagesInner"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v16
    :try_end_64
    .catchall {:try_start_2b .. :try_end_64} :catchall_f0

    .line 277
    :try_start_64
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/16 v17, 0x0

    move-object v8, v3

    move-object v1, v11

    move/from16 v11, v17

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 279
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    :cond_7d
    const-string v1, "PackageManager"

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_64 .. :try_end_97} :catchall_aa

    :goto_97
    if-eqz v16, :cond_9c

    .line 283
    :try_start_99
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 288
    :cond_9c
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v1

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_f0

    move-object/from16 v1, p1

    goto :goto_37

    :catchall_aa
    move-exception v0

    move-object v1, v0

    if-eqz v16, :cond_b7

    .line 275
    :try_start_ae
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_b7

    :catchall_b2
    move-exception v0

    move-object v2, v0

    :try_start_b4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_b7
    throw v1

    .line 291
    :cond_b8
    iget-object v1, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 292
    monitor-exit v14
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_f0

    .line 293
    :try_start_be
    monitor-exit v13
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_f3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 296
    invoke-virtual {v0, v2, v2, v12, v1}, Lcom/android/server/pm/StorageEventHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;Landroid/content/IIntentReceiver;)V

    .line 297
    iget-object v1, v0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v1

    .line 298
    :try_start_c7
    iget-object v0, v0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 299
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_ed

    .line 303
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    :goto_e0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_ec

    .line 306
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 307
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    :cond_ec
    return-void

    :catchall_ed
    move-exception v0

    .line 299
    :try_start_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v0

    :catchall_f0
    move-exception v0

    .line 292
    :try_start_f1
    monitor-exit v14
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw v0

    :catchall_f3
    move-exception v0

    .line 293
    monitor-exit v13
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f3

    throw v0
.end method
