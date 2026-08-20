.class public Lcom/android/server/pm/AsecInstallHelper;
.super Ljava/lang/Object;
.source "AsecInstallHelper.java"


# static fields
.field public static final ASEC_INTERNAL_PATH:Ljava/lang/String;

.field public static final DEBUG_SD_INSTALL:Z = false

.field public static final SD_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final SD_ENCRYPTION_KEYSTORE_NAME:Ljava/lang/String; = "AppsOnSD"

.field public static mContext:Landroid/content/Context;

.field public static mPreMounted:Z


# instance fields
.field public mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAvailableMountLock:Ljava/lang/Object;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public mMediaMounted:Z

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/AsecInstallHelper;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateExternalMediaStatusInner(Lcom/android/server/pm/AsecInstallHelper;ZZZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatusInner(ZZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMediaStatus(Lcom/android/server/pm/AsecInstallHelper;IILjava/util/Set;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/AsecInstallHelper;->updateMediaStatus(IILjava/util/Set;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Ljava/io/File;

    .line 58
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app-asec"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    sput-boolean v0, Lcom/android/server/pm/AsecInstallHelper;->mPreMounted:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 82
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 85
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 86
    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v0, v1}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 87
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 88
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 89
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method

.method public static getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "-"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-object p0

    :cond_a
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 93
    sget-object v0, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEncryptKey()Ljava/lang/String;
    .registers 6

    const-string v0, "AppsOnSD"

    const-string v1, "PackageManager"

    const/4 v2, 0x0

    .line 646
    :try_start_5
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/security/SystemKeyStore;->retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    .line 649
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v3

    const/16 v4, 0x80

    const-string v5, "AES"

    invoke-virtual {v3, v4, v5, v0}, Landroid/security/SystemKeyStore;->generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    const-string v0, "Failed to create encryption keys"

    .line 652
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_22} :catch_3a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_22} :catch_24

    return-object v2

    :cond_23
    return-object v3

    :catch_24
    move-exception v0

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve encryption keys with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_3a
    move-exception v0

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create encryption keys with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getNextCodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 145
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 147
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_36

    .line 149
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextFloat()F

    move-result v4

    const/high16 v5, 0x42740000    # 61.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_22

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_22
    const/16 v5, 0x24

    if-ge v4, v5, :cond_2d

    add-int/lit8 v4, v4, 0x37

    int-to-char v4, v4

    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_2d
    add-int/lit8 v4, v4, 0x3d

    int-to-char v4, v4

    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 160
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/asec"

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "nextCodePath for ASEC: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getPreMountState()Z
    .registers 1

    .line 215
    sget-boolean v0, Lcom/android/server/pm/AsecInstallHelper;->mPreMounted:Z

    return v0
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

.method public static isAsecExternal(Ljava/lang/String;)Z
    .registers 2

    .line 129
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdFilesystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    sget-object v0, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isExternal(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2

    .line 182
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static isExternalAsec(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 168
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static packageFlagsToInstallFlags(Lcom/android/server/pm/PackageSetting;)I
    .registers 2

    .line 173
    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->isExternal(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x8

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method


# virtual methods
.method public checkAvailableMount()Z
    .registers 6

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_31

    .line 259
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2c

    const-string v1, "PackageManager"

    const-string v2, "checkAvailableMount Waiting Latch"

    .line 260
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xf0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "PackageManager"

    const-string v2, "checkAvailableMount Wake Latch"

    .line 262
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 263
    iput-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_2c

    :cond_25
    const-string p0, "PackageManager"

    const-string v1, "checkAvailableMount still wait......"

    .line 265
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_2c
    :goto_2c
    monitor-exit v0

    goto :goto_38

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    const-string p0, "PackageManager"

    const-string v0, "checkAvailableMount Latch Exception"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    const/4 p0, 0x1

    return p0
.end method

.method public getMountedExternalVolume()Landroid/os/storage/VolumeInfo;
    .registers 4

    .line 97
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 98
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_12

    .line 99
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 100
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    return-object v0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadMediaPackages(Landroid/util/ArrayMap;[IZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/AsecInstallArgs;",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallHelper;->checkAvailableMount()Z

    .line 442
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_182

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/AsecInstallArgs;

    .line 443
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, -0x12

    .line 450
    :try_start_25
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AsecInstallArgs;->doPreInstall(I)I

    move-result v6

    if-eq v6, v2, :cond_69

    const-string v4, "PackageManager"

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to mount cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " when installing from sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_48} :catch_13c
    .catchall {:try_start_25 .. :try_end_48} :catchall_13a

    const-string v2, "PackageManager"

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4f
    const-string v6, "Container "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is stale, retCode="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_69
    if-eqz v4, :cond_105

    .line 457
    :try_start_6b
    invoke-virtual {v1}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    goto/16 :goto_105

    .line 463
    :cond_77
    iget-object v6, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v6

    .line 464
    invoke-virtual {v1}, Lcom/android/server/pm/AsecInstallArgs;->isExternalAsec()Z

    move-result v7

    if-eqz v7, :cond_85

    or-int/lit8 v6, v6, 0x8

    .line 468
    :cond_85
    iget-object v7, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_8a
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_8a} :catch_13c
    .catchall {:try_start_6b .. :try_end_8a} :catchall_13a

    const/4 v8, 0x0

    .line 472
    :try_start_8b
    iget-object v9, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x800

    invoke-virtual {v9, v10, v6, v11, v8}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8
    :try_end_98
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8b .. :try_end_98} :catch_9b
    .catchall {:try_start_8b .. :try_end_98} :catchall_99

    goto :goto_be

    :catchall_99
    move-exception v4

    goto :goto_103

    :catch_9b
    move-exception v6

    :try_start_9c
    const-string v9, "PackageManager"

    .line 475
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to scan "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    if-eqz v8, :cond_dc

    .line 485
    iget-object v4, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4
    :try_end_c5
    .catchall {:try_start_9c .. :try_end_c5} :catchall_99

    .line 487
    :try_start_c5
    invoke-interface {v8}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v5

    .line 489
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/AsecInstallArgs;->doPostInstall(II)I

    .line 491
    monitor-exit v4

    move v5, v2

    goto :goto_f7

    :catchall_d6
    move-exception v5

    monitor-exit v4
    :try_end_d8
    .catchall {:try_start_c5 .. :try_end_d8} :catchall_d6

    :try_start_d8
    throw v5
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d9

    :catchall_d9
    move-exception v4

    move v5, v2

    goto :goto_103

    :cond_dc
    :try_start_dc
    const-string v6, "PackageManager"

    .line 493
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install pkg from  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from sdcard"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_f7
    monitor-exit v7
    :try_end_f8
    .catchall {:try_start_dc .. :try_end_f8} :catchall_99

    if-eq v5, v2, :cond_10

    const-string v2, "PackageManager"

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4f

    .line 495
    :goto_103
    :try_start_103
    monitor-exit v7
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_99

    :try_start_104
    throw v4

    :cond_105
    :goto_105
    const-string v6, "PackageManager"

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cachepath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not match one in settings "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_131} :catch_13c
    .catchall {:try_start_104 .. :try_end_131} :catchall_13a

    const-string v2, "PackageManager"

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4f

    :catchall_13a
    move-exception p0

    goto :goto_15f

    :catch_13c
    const/4 v4, 0x5

    .line 497
    :try_start_13d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadMediaPackage Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_154
    .catchall {:try_start_13d .. :try_end_154} :catchall_13a

    if-eq v5, v2, :cond_10

    const-string v2, "PackageManager"

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4f

    :goto_15f
    if-eq v5, v2, :cond_181

    const-string p1, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Container "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is stale, retCode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_181
    throw p0

    .line 505
    :cond_182
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p1

    if-eqz p3, :cond_192

    .line 512
    :try_start_189
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    goto :goto_19a

    .line 513
    :cond_192
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    :goto_19a
    if-eqz p3, :cond_1a0

    const-string/jumbo p3, "primary_physical"

    goto :goto_1a2

    .line 515
    :cond_1a0
    sget-object p3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 517
    :goto_1a2
    iget v1, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    iget-object v4, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getSdkVersion()I

    move-result v4

    if-eq v1, v4, :cond_1d6

    const/4 v1, 0x4

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Platform changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 519
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getSdkVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; regranting permissions for external"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 522
    :cond_1d6
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget v4, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    iget-object v5, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getSdkVersion()I

    move-result v5

    if-eq v4, v5, :cond_1e3

    goto :goto_1e4

    :cond_1e3
    const/4 v2, 0x0

    :goto_1e4
    invoke-interface {v1, p3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 525
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 529
    iget-object p3, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    .line 530
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;)V

    .line 531
    monitor-exit p1
    :try_end_1f8
    .catchall {:try_start_189 .. :try_end_1f8} :catchall_208

    .line 533
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_207

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    :cond_207
    return-void

    :catchall_208
    move-exception p0

    .line 531
    :try_start_209
    monitor-exit p1
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_208

    throw p0
.end method

.method public scanAvailableAsecs()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    :try_start_2
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatusInner(ZZZ)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_16

    :catch_6
    move-exception p0

    const-string v0, "PackageManager"

    const-string/jumbo v1, "updateExternalMediaStatus RuntimeException"

    .line 301
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x5

    const-string/jumbo v0, "updateExternalMediaStatus runtime exception: is asec cmd timeout?"

    .line 302
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_16
    return-void
.end method

.method public setAvailableMountSync(Z)V
    .registers 4

    if-eqz p1, :cond_27

    .line 277
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLock:Ljava/lang/Object;

    monitor-enter p1

    .line 278
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1a

    const-string v0, "PackageManager"

    const-string/jumbo v1, "setAvailableMountSync Create Latch"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_22

    :cond_1a
    const-string p0, "PackageManager"

    const-string/jumbo v0, "setAvailableMountSync Unknown Latch"

    .line 282
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_22
    monitor-exit p1

    goto :goto_38

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw p0

    .line 286
    :cond_27
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_38

    const-string p1, "PackageManager"

    const-string/jumbo v0, "setAvailableMountSync Latch CountDown"

    .line 287
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mAvailableMountLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_38
    :goto_38
    return-void
.end method

.method public setMoveCallback(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 5

    .line 109
    sget-object v0, Lcom/android/server/pm/AsecInstallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/AsecInstallHelper$1;-><init>(Lcom/android/server/pm/AsecInstallHelper;Landroid/content/pm/PackageManager;Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 125
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public unloadAllContainers(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/pm/AsecInstallArgs;",
            ">;)V"
        }
    .end annotation

    .line 543
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/AsecInstallArgs;

    .line 544
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 545
    :try_start_16
    invoke-virtual {v0, v2}, Lcom/android/server/pm/AsecInstallArgs;->doPostDeleteLI(Z)Z

    .line 546
    monitor-exit v1

    goto :goto_4

    :catchall_1b
    move-exception p0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    return-void
.end method

.method public final unloadMediaPackages(Landroid/util/ArrayMap;[IZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/AsecInstallArgs;",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 564
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 568
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/AsecInstallArgs;

    .line 569
    invoke-virtual {v7}, Lcom/android/server/pm/AsecInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 574
    new-instance v14, Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v14, v9}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    .line 575
    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v13

    .line 578
    :try_start_38
    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "unloadMediaPackages"

    invoke-virtual {v9, v15, v8, v10}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v8
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_c3

    .line 580
    :try_start_41
    iget-object v9, v0, Lcom/android/server/pm/AsecInstallHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v10, v0, Lcom/android/server/pm/AsecInstallHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 581
    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_b3

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move/from16 v14, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move/from16 v16, v18

    .line 580
    :try_start_5e
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v9
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_b1

    if-eqz v8, :cond_67

    .line 582
    :try_start_64
    invoke-virtual {v8}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_67
    if-eqz v9, :cond_76

    move-object/from16 v8, v20

    .line 584
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v7}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_91

    :cond_76
    move-object/from16 v8, v20

    const-string v9, "PackageManager"

    .line 587
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to delete pkg from sdcard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :goto_91
    monitor-exit v19
    :try_end_92
    .catchall {:try_start_64 .. :try_end_92} :catchall_c8

    const-string v7, "PackageManager"

    .line 593
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@Remove package from AttributeCache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_1b

    :catchall_b1
    move-exception v0

    goto :goto_b6

    :catchall_b3
    move-exception v0

    move-object/from16 v19, v13

    :goto_b6
    move-object v1, v0

    if-eqz v8, :cond_c2

    .line 578
    :try_start_b9
    invoke-virtual {v8}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_c2

    :catchall_bd
    move-exception v0

    move-object v2, v0

    :try_start_bf
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c2
    :goto_c2
    throw v1

    :catchall_c3
    move-exception v0

    move-object/from16 v19, v13

    .line 590
    :goto_c6
    monitor-exit v19
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_c8

    throw v0

    :catchall_c8
    move-exception v0

    goto :goto_c6

    .line 598
    :cond_ca
    iget-object v2, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 601
    :try_start_cf
    iget-object v5, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 602
    iget-object v7, v0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v5}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;)V

    .line 603
    monitor-exit v2
    :try_end_dd
    .catchall {:try_start_cf .. :try_end_dd} :catchall_13e

    .line 609
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_139

    .line 610
    invoke-virtual {v0, v8}, Lcom/android/server/pm/AsecInstallHelper;->setAvailableMountSync(Z)V

    const-string v2, "PackageManager"

    const-string/jumbo v5, "setAvailableMountSync true"

    .line 611
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v2, v0, Lcom/android/server/pm/AsecInstallHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/server/pm/AsecInstallHelper$3;

    invoke-direct {v8, v0, v1, v4}, Lcom/android/server/pm/AsecInstallHelper$3;-><init>(Lcom/android/server/pm/AsecInstallHelper;ZLjava/util/Set;)V

    move-object v0, v2

    move v1, v5

    move v2, v7

    move-object/from16 v4, p2

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 632
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_104
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 633
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    goto :goto_104

    .line 636
    :cond_118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 637
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    const-string v0, "PackageManager"

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flush ResourceManager path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    :cond_139
    const/4 v2, -0x1

    .line 640
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/pm/AsecInstallHelper;->updateMediaStatus(IILjava/util/Set;)V

    :goto_13d
    return-void

    :catchall_13e
    move-exception v0

    .line 603
    :try_start_13f
    monitor-exit v2
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_13e

    throw v0
.end method

.method public updateExternalMediaStatus(ZZ)V
    .registers 7

    const-string v0, "Media status can only be updated by the system"

    .line 222
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    :try_start_a
    const-string v1, "PackageManager"

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating external media status from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-boolean v3, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    if-eqz v3, :cond_1e

    const-string/jumbo v3, "mounted"

    goto :goto_21

    :cond_1e
    const-string/jumbo v3, "unmounted"

    :goto_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2f

    const-string/jumbo v3, "mounted"

    goto :goto_32

    :cond_2f
    const-string/jumbo v3, "unmounted"

    .line 228
    :goto_32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    if-ne p1, v1, :cond_59

    .line 234
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    if-eqz p2, :cond_4a

    const/4 p2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p2, 0x0

    :goto_4b
    const/4 v2, -0x1

    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 236
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    monitor-exit v0

    return-void

    .line 239
    :cond_59
    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper;->mMediaMounted:Z

    .line 240
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_a .. :try_end_5c} :catchall_69

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/AsecInstallHelper$2;-><init>(Lcom/android/server/pm/AsecInstallHelper;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_69
    move-exception p0

    .line 240
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final updateExternalMediaStatusInner(ZZZ)V
    .registers 14

    .line 315
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 316
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 318
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1b

    const-string v2, "PackageManager"

    const-string v3, "No secure containers found"

    .line 320
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_158

    .line 326
    :cond_1b
    iget-object v3, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    .line 327
    :try_start_20
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v2}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_154

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 330
    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    goto :goto_29

    .line 335
    :cond_3c
    invoke-static {v5}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5e

    const-string v6, "PackageManager"

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found stale container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with no package name"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 344
    :cond_5e
    iget-object v7, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-nez v6, :cond_88

    const-string v6, "PackageManager"

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found stale container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with no matching settings"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_88
    if-eqz p3, :cond_93

    if-nez p1, :cond_93

    .line 354
    invoke-static {v6}, Lcom/android/server/pm/AsecInstallHelper;->isExternal(Lcom/android/server/pm/PackageSetting;)Z

    move-result v7

    if-nez v7, :cond_93

    goto :goto_29

    :cond_93
    const-string v7, "PackageManager"

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isMounted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", PreMounted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/android/server/pm/AsecInstallHelper;->mPreMounted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_d6

    .line 360
    sget-boolean v7, Lcom/android/server/pm/AsecInstallHelper;->mPreMounted:Z

    if-eq p1, v7, :cond_d6

    if-nez p2, :cond_d6

    if-nez v7, :cond_d6

    const-string p0, "PackageManager"

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Already unmounted!! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    monitor-exit v3

    return-void

    .line 367
    :cond_d6
    new-instance v7, Lcom/android/server/pm/AsecInstallArgs;

    .line 368
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v7, v5, v8, v9}, Lcom/android/server/pm/AsecInstallArgs;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 370
    iget-boolean v8, v7, Lcom/android/server/pm/AsecInstallArgs;->isException:Z

    if-eqz v8, :cond_109

    if-nez p1, :cond_f1

    if-nez p2, :cond_109

    :cond_f1
    const-string p0, "PackageManager"

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "args has unknown exception!! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v3

    return-void

    .line 379
    :cond_109
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_130

    .line 380
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_130

    .line 387
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    if-eq v5, v4, :cond_29

    .line 390
    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    goto/16 :goto_29

    :cond_130
    const-string v7, "PackageManager"

    .line 393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found stale container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": expected codePath="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 393
    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 397
    :cond_154
    monitor-exit v3
    :try_end_155
    .catchall {:try_start_20 .. :try_end_155} :catchall_199

    .line 399
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    :goto_158
    if-eqz p1, :cond_163

    .line 407
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/pm/AsecInstallHelper;->loadMediaPackages(Landroid/util/ArrayMap;[IZ)V

    .line 408
    iget-object p2, p0, Lcom/android/server/pm/AsecInstallHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerService;->onSecureContainersAvailable()V

    goto :goto_166

    .line 413
    :cond_163
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/AsecInstallHelper;->unloadMediaPackages(Landroid/util/ArrayMap;[IZ)V

    .line 416
    :goto_166
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz p2, :cond_198

    if-nez p1, :cond_198

    .line 417
    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    monitor-enter p1

    .line 420
    :try_start_16f
    sget-object p2, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_189

    .line 421
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    sget-object p2, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget p2, p2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 423
    :cond_189
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->mMoveIdMapForSd:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 424
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 425
    monitor-exit p1

    goto :goto_198

    :catchall_195
    move-exception p0

    monitor-exit p1
    :try_end_197
    .catchall {:try_start_16f .. :try_end_197} :catchall_195

    throw p0

    :cond_198
    :goto_198
    return-void

    :catchall_199
    move-exception p0

    .line 397
    :try_start_19a
    monitor-exit v3
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw p0
.end method

.method public final updateMediaStatus(IILjava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lcom/android/server/pm/AsecInstallArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PackageManager"

    const-string v1, "Got message UPDATED_MEDIA_STATUS!"

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    move p1, v1

    :goto_e
    if-ne p2, v2, :cond_11

    move v1, v2

    .line 189
    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportStatus: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", doGc: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_37

    .line 193
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->gc()V

    :cond_37
    if-eqz p3, :cond_41

    const-string p2, "Unloading all containers"

    .line 196
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, p3}, Lcom/android/server/pm/AsecInstallHelper;->unloadAllContainers(Ljava/util/Set;)V

    :cond_41
    if-eqz p1, :cond_55

    :try_start_43
    const-string p0, "Invoking MountService call back"

    .line 202
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManagerExt()Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt$StorageManagerExt;->finishMediaUpdate()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    const-string p0, "MountService not running?"

    .line 205
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method

.method public updatePreMountState(Z)V
    .registers 2

    .line 211
    sput-boolean p1, Lcom/android/server/pm/AsecInstallHelper;->mPreMounted:Z

    return-void
.end method
