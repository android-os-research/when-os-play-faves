.class public final Lcom/android/server/pm/RemovePackageHelper;
.super Ljava/lang/Object;
.source "RemovePackageHelper.java"


# instance fields
.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$CdLjf7T74SGi80Vbl4vCfcOfajM(Lcom/android/server/pm/RemovePackageHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->lambda$removePackageDataLIF$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 88
    new-instance v0, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 79
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 80
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 81
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 82
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 83
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 84
    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    return-void
.end method

.method private synthetic lambda$removePackageDataLIF$0(I)V
    .registers 6

    const-wide/32 v0, 0x40000

    .line 363
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearKeystoreData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 365
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    .line 367
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 368
    throw p0
.end method


# virtual methods
.method public final cleanPackageDataStructuresLILPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 8

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->removeAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 165
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageRemoved(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 166
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->getPackageProperty()Lcom/android/server/pm/PackageProperty;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/PackageProperty;->removeAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 168
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    if-ge v1, p2, :cond_3b

    .line 172
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 173
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getInstrumentation()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 188
    :cond_3b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 190
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_49
    if-ge v0, p2, :cond_5f

    .line 192
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibraryLPw(Ljava/lang/String;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 209
    :cond_5f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_73

    .line 210
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 211
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibVersionMajor()I

    move-result v1

    int-to-long v1, v1

    .line 210
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibraryLPw(Ljava/lang/String;J)Z

    .line 222
    :cond_73
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_86

    .line 223
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v0

    .line 223
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibraryLPw(Ljava/lang/String;J)Z

    :cond_86
    return-void
.end method

.method public final removeCachedResult(Ljava/io/File;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 126
    :cond_9
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 128
    invoke-virtual {v0, p1}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    return-void
.end method

.method public removeCodePathLI(Ljava/io/File;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "~~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 97
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v2, :cond_25

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_35

    if-eqz v1, :cond_30

    .line 101
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v2, v0}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    goto :goto_35

    .line 103
    :cond_30
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v2, p1}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    .line 107
    :cond_35
    :goto_35
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5d

    .line 110
    iget-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCachedResult(Ljava/io/File;)V
    :try_end_50
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_15 .. :try_end_50} :catch_51

    goto :goto_5d

    :catch_51
    move-exception p0

    const-string p1, "PackageManager"

    const-string v0, "Failed to remove code path"

    .line 114
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 117
    :cond_5a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_5d
    :goto_5d
    return-void
.end method

.method public removePackageDataLIF(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/pm/PackageRemovedInfo;IZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_3e

    .line 254
    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v7, :cond_28

    .line 257
    invoke-interface {v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    move v4, v11

    goto :goto_29

    :cond_28
    move v4, v10

    :goto_29
    iput-boolean v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 258
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 259
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    .line 258
    invoke-virtual {v1, v4, v11}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/PackageRemovedInfo;->populateUsers([ILcom/android/server/pm/PackageSetting;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 263
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, -0x80000000

    and-int v6, p4, v6

    if-eqz v6, :cond_4a

    move v6, v11

    goto :goto_4b

    :cond_4a
    move v6, v10

    :goto_4b
    invoke-virtual {v0, v4, v6}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V

    and-int/lit8 v4, p4, 0x1

    const/4 v12, -0x1

    if-nez v4, :cond_72

    if-eqz v7, :cond_57

    move-object v6, v7

    goto :goto_63

    .line 272
    :cond_57
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v8

    .line 272
    invoke-static {v6, v8}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 275
    :goto_63
    iget-object v8, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v9, 0x7

    invoke-virtual {v8, v6, v12, v9}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 277
    iget-object v8, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    if-eqz v3, :cond_72

    .line 279
    iput-boolean v11, v3, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 283
    :cond_72
    invoke-virtual {v0, v3}, Lcom/android/server/pm/RemovePackageHelper;->removeSdpPackageDir(Lcom/android/server/pm/PackageRemovedInfo;)V

    if-nez v4, :cond_11d

    .line 290
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 291
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v14

    .line 292
    :try_start_81
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearPackage(Ljava/lang/String;)V

    .line 293
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 294
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 295
    iget-object v6, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 296
    invoke-interface {v4, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 295
    invoke-virtual {v6, v4, v8, v10}, Lcom/android/server/pm/AppsFilterImpl;->removePackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 297
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->removePackageLPw(Ljava/lang/String;)I

    move-result v15

    if-eqz v3, :cond_b4

    .line 299
    iput v15, v3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    .line 301
    :cond_b4
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 304
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    if-eqz v9, :cond_cd

    .line 306
    invoke-virtual {v9}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v4

    goto :goto_d1

    :cond_cd
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_d1
    move-object v8, v4

    .line 307
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v6

    const/16 v16, -0x1

    move-object v11, v9

    move/from16 v9, v16

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    if-eqz v11, :cond_e9

    .line 311
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v11}, Lcom/android/server/pm/Settings;->checkAndConvertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    .line 314
    :cond_e9
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {v4, v5, v13, v12}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 317
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->removeRenamedPackageLPw(Ljava/lang/String;)V

    .line 318
    monitor-exit v14
    :try_end_fe
    .catchall {:try_start_81 .. :try_end_fe} :catchall_11a

    .line 319
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-lez v4, :cond_11e

    .line 320
    new-instance v4, Lcom/android/server/pm/PreferredActivityHelper;

    iget-object v5, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v4, v5}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 322
    iget-object v5, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-virtual {v4, v5, v13}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 324
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    goto :goto_11e

    :catchall_11a
    move-exception v0

    .line 318
    :try_start_11b
    monitor-exit v14
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11a

    throw v0

    :cond_11d
    move v15, v12

    :cond_11e
    :goto_11e
    if-eqz v3, :cond_144

    .line 329
    iget-object v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    if-eqz v4, :cond_144

    .line 333
    array-length v4, v2

    move v5, v10

    move v6, v5

    :goto_127
    if-ge v5, v4, :cond_143

    aget v7, v2, v5

    .line 334
    iget-object v8, v3, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    .line 338
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eq v8, v9, :cond_138

    const/4 v6, 0x1

    .line 341
    :cond_138
    invoke-virtual {v1, v8, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v8, :cond_140

    .line 343
    invoke-virtual {v1, v10, v7}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    :cond_140
    add-int/lit8 v5, v5, 0x1

    goto :goto_127

    :cond_143
    move v10, v6

    .line 347
    :cond_144
    iget-object v2, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    if-eqz p5, :cond_153

    .line 351
    :try_start_14b
    iget-object v3, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    goto :goto_153

    :catchall_151
    move-exception v0

    goto :goto_170

    :cond_153
    :goto_153
    if-eqz v10, :cond_15c

    .line 354
    iget-object v3, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 356
    :cond_15c
    monitor-exit v2
    :try_end_15d
    .catchall {:try_start_14b .. :try_end_15d} :catchall_151

    if-eq v15, v12, :cond_16f

    .line 361
    iget-object v1, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v15}, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/RemovePackageHelper;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16f
    return-void

    .line 356
    :goto_170
    :try_start_170
    monitor-exit v2
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_151

    throw v0
.end method

.method public removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 134
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 136
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V

    :cond_17
    return-void
.end method

.method public final removePackageLI(Ljava/lang/String;Z)V
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 151
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 154
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V

    if-eqz v1, :cond_19

    .line 158
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanPackageDataStructuresLILPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 160
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final removeSdpPackageDir(Lcom/android/server/pm/PackageRemovedInfo;)V
    .registers 2

    return-void
.end method
