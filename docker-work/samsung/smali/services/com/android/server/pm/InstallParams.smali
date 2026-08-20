.class public final Lcom/android/server/pm/InstallParams;
.super Lcom/android/server/pm/HandlerParams;
.source "InstallParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;
    }
.end annotation


# instance fields
.field public installerUid:I

.field public isMoveRequest:Z

.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mForceQueryableOverride:Z

.field public final mGrantedRuntimePermissions:[Ljava/lang/String;

.field public mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageSource:I

.field public mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mVolumeUuid:Ljava/lang/String;

.field public needToMove:Z

.field public origInstallerUid:I


# direct methods
.method public static synthetic $r8$lambda$jbPYK1dOf5qsZh9SAizHgadlSi0(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstallParams;->lambda$processInstallRequestsAsync$0(ZLjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessInstallRequestsAsync(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallParams;->processInstallRequestsAsync(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .registers 12

    .line 106
    invoke-direct {p0, p7, p11}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    const/4 p7, 0x0

    .line 98
    iput-boolean p7, p0, Lcom/android/server/pm/InstallParams;->isMoveRequest:Z

    .line 99
    iput-boolean p7, p0, Lcom/android/server/pm/InstallParams;->needToMove:Z

    .line 107
    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 108
    iput-object p2, p0, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 109
    iput-object p3, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 110
    iput p4, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    .line 111
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 112
    iput-object p6, p0, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    .line 113
    iput-object p8, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 p1, 0x3

    .line 117
    iput p1, p0, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    .line 118
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 119
    iput p7, p0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    .line 120
    iput p7, p0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    .line 121
    iput-boolean p7, p0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    .line 122
    iput p7, p0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    const-wide/16 p1, -0x1

    .line 123
    iput-wide p1, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    .line 124
    iput p9, p0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    .line 125
    iput-object p10, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .registers 11

    .line 132
    invoke-direct {p0, p6, p10}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    const/4 p6, 0x0

    .line 98
    iput-boolean p6, p0, Lcom/android/server/pm/InstallParams;->isMoveRequest:Z

    .line 99
    iput-boolean p6, p0, Lcom/android/server/pm/InstallParams;->needToMove:Z

    if-eqz p1, :cond_11

    .line 135
    invoke-static {p1}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    goto :goto_17

    .line 137
    :cond_11
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/OriginInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_17
    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 141
    iget-object p1, p5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p0, p1, p8, p2}, Lcom/android/server/pm/InstallParams;->fixUpInstallReason(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    .line 143
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    .line 144
    iput-object p3, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 145
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    .line 146
    iput-object p5, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 147
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    .line 148
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    .line 149
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    .line 150
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 151
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    .line 152
    iput-object p7, p0, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 153
    iget-boolean p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean p1, p0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    .line 154
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p1, :cond_52

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p6

    :cond_52
    iput p6, p0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    .line 156
    iget-wide p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p1, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    .line 157
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    .line 158
    iput-object p9, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 160
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->origInstallerUid:I

    .line 161
    iput p8, p0, Lcom/android/server/pm/InstallParams;->installerUid:I

    return-void
.end method

.method public static installOnExternalAsec(I)Z
    .registers 3

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    return v1
.end method

.method private synthetic lambda$processInstallRequestsAsync$0(ZLjava/util/List;)V
    .registers 3

    .line 363
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final createInstallArgs(Lcom/android/server/pm/InstallParams;)Lcom/android/server/pm/InstallArgs;
    .registers 2

    .line 329
    iget-object p0, p1, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_a

    .line 330
    new-instance p0, Lcom/android/server/pm/MoveInstallArgs;

    invoke-direct {p0, p1}, Lcom/android/server/pm/MoveInstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-object p0

    .line 331
    :cond_a
    iget p0, p1, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    invoke-static {p0}, Lcom/android/server/pm/InstallParams;->installOnExternalAsec(I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 335
    new-instance p0, Lcom/android/server/pm/AsecInstallArgs;

    invoke-direct {p0, p1}, Lcom/android/server/pm/AsecInstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-object p0

    .line 337
    :cond_18
    new-instance p0, Lcom/android/server/pm/FileInstallArgs;

    invoke-direct {p0, p1}, Lcom/android/server/pm/FileInstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-object p0
.end method

.method public final fixUpInstallReason(Ljava/lang/String;II)I
    .registers 6

    .line 389
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    return p3

    .line 395
    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 396
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 395
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p0, :cond_25

    .line 397
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    return p2

    :cond_25
    if-ne p3, p2, :cond_29

    const/4 p0, 0x0

    return p0

    :cond_29
    return p3
.end method

.method public handleReturnCode()V
    .registers 1

    .line 303
    invoke-virtual {p0}, Lcom/android/server/pm/InstallParams;->processPendingInstall()V

    return-void
.end method

.method public handleStartCopy()V
    .registers 11

    .line 253
    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 254
    iput v2, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    return-void

    .line 257
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v4, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 262
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    move v3, v2

    goto :goto_26

    :cond_25
    move v3, v4

    :goto_26
    if-eqz v3, :cond_3d

    .line 264
    iget-object v3, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-wide v5, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    invoke-virtual {v3, v0, v5, v6, v1}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 266
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    if-eq v1, v2, :cond_3d

    return-void

    .line 272
    :cond_3d
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_44

    move v4, v2

    .line 273
    :cond_44
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_61

    if-eqz v4, :cond_61

    const-string v1, "PackageManager"

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkgLite for install: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_61
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v3, v1, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v3, :cond_7c

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x1

    if-ne v5, v3, :cond_7c

    .line 281
    iget-object v4, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v7, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 286
    :cond_7c
    iget-boolean v1, p0, Lcom/android/server/pm/InstallParams;->isMoveRequest:Z

    if-nez v1, :cond_b8

    .line 288
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 289
    :try_start_85
    iget-object v3, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 290
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_85 .. :try_end_92} :catchall_b5

    if-eqz v3, :cond_b8

    .line 291
    invoke-static {v3}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_b8

    const-string v1, "PackageManager"

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found on sdcard, keep current location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput-boolean v2, p0, Lcom/android/server/pm/InstallParams;->needToMove:Z

    goto :goto_b8

    :catchall_b5
    move-exception p0

    .line 290
    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p0

    .line 297
    :cond_b8
    :goto_b8
    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/InstallParams;->overrideInstallLocation(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    return-void
.end method

.method public installStage()V
    .registers 14

    .line 418
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "installStage"

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/server/pm/HandlerParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    .line 420
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 422
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 423
    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v2, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    iget v6, p0, Lcom/android/server/pm/InstallParams;->origInstallerUid:I

    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/InstallParams;->installerUid:I

    .line 424
    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    iget-object v12, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v12, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v12, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 423
    invoke-static/range {v3 .. v12}, Lcom/android/server/pm/PersonaServiceHelper;->installStageForKnox(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v2

    if-eqz v2, :cond_40

    return-void

    .line 430
    :cond_40
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide/32 v3, 0x40000

    .line 430
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 432
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v2, "queueInstall"

    .line 432
    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START INSTALL PACKAGE: observer{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v3, "null"

    if-eqz v2, :cond_72

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_73

    :cond_72
    move-object v2, v3

    :goto_73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n          stagedDir{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n          stagedCid{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n          pkg{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v2, :cond_9e

    .line 441
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_9e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n          Request from{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 446
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 447
    invoke-static {}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal()J

    move-result-wide v1

    .line 446
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public installStage(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 456
    new-instance v1, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    iget-object v2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, p0, p0, p1, v2}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;-><init>(Lcom/android/server/pm/InstallParams;Lcom/android/server/pm/InstallParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo v2, "installStageMultiPackage"

    .line 458
    invoke-virtual {v1, v2}, Lcom/android/server/pm/HandlerParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v3

    .line 459
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    .line 460
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const-wide/32 v4, 0x40000

    .line 462
    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 464
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-string/jumbo v3, "queueInstall"

    .line 464
    invoke-static {v4, v5, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "START INSTALL MULTI PACKAGE:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-static {v1}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->-$$Nest$fgetmChildParams(Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "}\n"

    if-eqz v3, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallParams;

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "          observer{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v6, :cond_6b

    .line 471
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6e

    :cond_6b
    const-string/jumbo v6, "null"

    :goto_6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "          stagedDir{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "          Request from{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 476
    :cond_b2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallParams;

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "          pkg{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b6

    .line 479
    :cond_e0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 483
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 484
    invoke-static {}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal()J

    move-result-wide v1

    .line 483
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public movePackage()V
    .registers 6

    .line 491
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "movePackage"

    .line 492
    invoke-virtual {p0, v1}, Lcom/android/server/pm/HandlerParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    .line 493
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide/32 v3, 0x40000

    .line 495
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 497
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v2, "queueInstall"

    .line 497
    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 499
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final overrideInstallLocation(Ljava/lang/String;II)I
    .registers 8

    .line 181
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v1, :cond_28

    .line 183
    iget-object v1, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v1, :cond_13

    .line 184
    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    .line 186
    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    goto :goto_28

    .line 188
    :cond_13
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 189
    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    .line 190
    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    goto :goto_28

    .line 192
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid stage location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    if-gez p2, :cond_2f

    .line 196
    invoke-static {p2}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result p0

    return p0

    .line 199
    :cond_2f
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 201
    :try_start_34
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz p1, :cond_4e

    .line 204
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    .line 206
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result p1

    .line 204
    invoke-static {p3, p2, v1, v2, p1}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result p2

    .line 208
    :cond_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_95

    .line 210
    iget p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    and-int/lit8 p3, p1, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_59

    move p3, v1

    goto :goto_5a

    :cond_59
    move p3, v0

    :goto_5a
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_60

    move v2, v1

    goto :goto_61

    :cond_60
    move v2, v0

    :goto_61
    and-int/lit16 v3, p1, 0x800

    if-eqz v3, :cond_66

    move v0, v1

    :cond_66
    const/16 v3, -0x13

    if-eqz p3, :cond_74

    if-eqz v2, :cond_74

    const-string p0, "PackageManager"

    const-string p1, "Conflicting flags specified for installing on both internal and external"

    .line 219
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_74
    if-eqz v2, :cond_80

    if-eqz v0, :cond_80

    const-string p0, "PackageManager"

    const-string p1, "Conflicting flags specified for installing ephemeral on external"

    .line 222
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_80
    if-nez p3, :cond_94

    if-nez v2, :cond_94

    const/4 p3, 0x2

    if-ne p2, p3, :cond_8e

    or-int/lit8 p1, p1, 0x8

    and-int/lit8 p1, p1, -0x11

    .line 234
    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    goto :goto_94

    :cond_8e
    or-int/lit8 p1, p1, 0x10

    and-int/lit8 p1, p1, -0x9

    .line 239
    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    :cond_94
    :goto_94
    return v1

    :catchall_95
    move-exception p0

    .line 208
    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public final processInstallRequestsAsync(ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final processPendingInstall()V
    .registers 6

    .line 307
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstallParams;->createInstallArgs(Lcom/android/server/pm/InstallParams;)Lcom/android/server/pm/InstallArgs;

    move-result-object v0

    .line 309
    iget-boolean v1, p0, Lcom/android/server/pm/InstallParams;->needToMove:Z

    iput-boolean v1, v0, Lcom/android/server/pm/InstallArgs;->needToMove:Z

    .line 311
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 312
    invoke-virtual {v0}, Lcom/android/server/pm/InstallArgs;->copyApk()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    .line 314
    :cond_13
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    if-ne v1, v2, :cond_2b

    .line 315
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-static {v1, v3}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 318
    :cond_2b
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    if-eqz v1, :cond_35

    .line 319
    iget p0, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->tryProcessInstallRequest(Lcom/android/server/pm/InstallArgs;I)V

    goto :goto_4e

    .line 321
    :cond_35
    new-instance v1, Lcom/android/server/pm/PackageInstalledInfo;

    iget v3, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageInstalledInfo;-><init>(I)V

    .line 322
    iget v3, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v3, v2, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    new-instance v3, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)V

    .line 324
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/InstallParams;->processInstallRequestsAsync(ZLjava/util/List;)V

    :goto_4e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
