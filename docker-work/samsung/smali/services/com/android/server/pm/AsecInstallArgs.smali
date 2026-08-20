.class public Lcom/android/server/pm/AsecInstallArgs;
.super Lcom/android/server/pm/InstallArgs;
.source "AsecInstallArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;
    }
.end annotation


# static fields
.field public static final CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field public static final PUBLIC_RES_FILE_NAME:Ljava/lang/String; = "res.zip"

.field public static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field public cid:Ljava/lang/String;

.field public isException:Z

.field public packagePath:Ljava/lang/String;

.field public resourcePath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ikiowI9KJCURJdJQbEuPujc-X3Q(Lcom/android/server/pm/AsecInstallArgs;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AsecInstallArgs;->lambda$pendingPostDeleteLI$1(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$kH4YeGAcewa-HPb7SoiaUBxNyNw(Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallArgs;->lambda$copyApk$0(Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.container"

    const-string v2, "com.samsung.android.container.ContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/AsecInstallArgs;->CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallParams;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallArgs;->isException:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 26

    move-object/from16 v8, p0

    .line 89
    invoke-static {}, Lcom/android/server/pm/OriginInfo;->fromNothing()Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/AsecInstallHelper;->isAsecExternal(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_12

    const/16 v0, 0x8

    move/from16 v21, v0

    goto :goto_14

    :cond_12
    move/from16 v21, v4

    :goto_14
    sget-object v5, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v21

    move-object/from16 v8, p2

    move-object/from16 v21, p3

    invoke-direct/range {v0 .. v21}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lcom/android/server/pm/AsecInstallArgs;->isException:Z

    move-object/from16 v1, p1

    .line 94
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 96
    :try_start_3e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_50

    :catch_46
    const/4 v1, 0x1

    .line 98
    iput-boolean v1, v0, Lcom/android/server/pm/AsecInstallArgs;->isException:Z

    const-string v0, "PackageManager"

    const-string v1, "Catch nullpointer exception"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;ZLcom/android/server/pm/PackageManagerService;)V
    .registers 27

    move-object/from16 v8, p0

    move-object/from16 v4, p1

    .line 70
    invoke-static {}, Lcom/android/server/pm/OriginInfo;->fromNothing()Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p3, :cond_10

    const/16 v2, 0x8

    move/from16 v21, v2

    goto :goto_12

    :cond_10
    move/from16 v21, v0

    :goto_12
    sget-object v5, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v21

    move-object/from16 v8, p2

    move-object/from16 v21, p4

    invoke-direct/range {v0 .. v21}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lcom/android/server/pm/AsecInstallArgs;->isException:Z

    const-string/jumbo v2, "pkg.apk"

    move-object/from16 v3, p1

    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 77
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    :cond_4d
    move-object v2, v3

    :goto_4e
    const-string v3, "/"

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 82
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 84
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$copyApk$0(Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;)V
    .registers 1

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    invoke-interface {p0}, Lcom/samsung/android/core/pm/containerservice/IContainerService;->doForceGC()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method private synthetic lambda$pendingPostDeleteLI$1(ZI)V
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    add-int/lit8 p2, p2, 0x1

    .line 367
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(ZI)Z

    .line 368
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p0
.end method


# virtual methods
.method public final cleanUp()V
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    return-void
.end method

.method public cleanUpResourcesLI()V
    .registers 2

    .line 317
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    return-void
.end method

.method public final cleanUpResourcesLI(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->cleanUp()V

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mInstructionSets:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AsecInstallArgs;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method

.method public copyApk()I
    .registers 12

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 116
    iput-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    return v2

    .line 121
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->createCopyFile()V

    .line 123
    new-instance v0, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;-><init>(Lcom/android/server/pm/AsecInstallArgs;Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection-IA;)V

    .line 124
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/AsecInstallArgs;->CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 128
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    const/16 v4, -0x12

    if-eqz v3, :cond_a0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    .line 132
    monitor-enter v0

    .line 133
    :catch_3f
    :goto_3f
    :try_start_3f
    iget-object v3, v0, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-nez v3, :cond_51

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_9d

    cmp-long v3, v7, v5

    if-gez v3, :cond_51

    const-wide/16 v7, 0x64

    .line 136
    :try_start_4d
    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_3f
    .catchall {:try_start_4d .. :try_end_50} :catchall_9d

    goto :goto_3f

    .line 140
    :cond_51
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_9d

    .line 142
    iget-object v5, v0, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-nez v5, :cond_57

    return v4

    .line 147
    :cond_57
    :try_start_57
    iget-object v3, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->isExternalAsec()Z

    move-result v9

    iget-object v3, p0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    .line 149
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/core/pm/containerservice/IContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_73} :catch_7f
    .catchall {:try_start_57 .. :try_end_73} :catchall_7d

    .line 154
    iget-object v3, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;)V

    goto :goto_8c

    :catchall_7d
    move-exception v1

    goto :goto_90

    :catch_7f
    move-exception v3

    .line 152
    :try_start_80
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7d

    .line 154
    iget-object v3, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;)V

    :goto_8c
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a0

    :goto_90
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    throw v1

    :catchall_9d
    move-exception p0

    .line 140
    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0

    :cond_a0
    :goto_a0
    if-eqz v1, :cond_a6

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    return v2

    :cond_a6
    return v4
.end method

.method public createCopyFile()V
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateExternalStageCidLegacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    return-void
.end method

.method public doPostCopy(I)I
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public doPostDeleteLI(Z)Z
    .registers 3

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(ZI)Z

    move-result p0

    return p0
.end method

.method public doPostInstall(II)I
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->cleanUp()V

    goto :goto_2b

    :cond_7
    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_2c

    .line 277
    iget-object p2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    const/4 v1, -0x1

    .line 278
    invoke-static {p2, v1, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_2c

    .line 284
    :cond_16
    iget-object p2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2b

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    :cond_2b
    :goto_2b
    return p1

    .line 279
    :cond_2c
    :goto_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to finalize "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    const/16 p0, -0x12

    return p0
.end method

.method public doPreCopy()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public doPreInstall(I)I
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    .line 184
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_26

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    goto :goto_26

    :cond_23
    const/16 p0, -0x12

    return p0

    :cond_26
    :goto_26
    return p1
.end method

.method public doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .registers 10

    .line 201
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/AsecInstallHelper;->getNextCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "PackageManager"

    if-eqz v0, :cond_38

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_38

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to unmount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " before renaming"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 210
    :cond_38
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v4, " to "

    if-nez v0, :cond_a6

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " which might be stale. Will try to clean up"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Very strange. Cannot clean up stale container "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 219
    :cond_7e
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " inspite of cleaning it up"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 225
    :cond_a6
    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mounting container "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3e8

    .line 227
    invoke-static {p1, v0, v5}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cf

    .line 230
    :cond_cb
    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_cf
    if-nez v0, :cond_e6

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get cache path for  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 236
    :cond_e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully renamed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at new path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 240
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 247
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-static {p1, v0, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 249
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {p1, v0, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return v1
.end method

.method public final getAllCodePaths()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 304
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object p0

    const/4 v1, 0x0

    .line 305
    invoke-static {p0, v0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 307
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 309
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 312
    :cond_2d
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourcePath()Ljava/lang/String;
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->resourcePath:Ljava/lang/String;

    return-object p0
.end method

.method public isExternalAsec()Z
    .registers 1

    .line 255
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final pendingPostDeleteLI(ZI)Z
    .registers 10

    .line 347
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 349
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 351
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsecInstallArgs.doPostDeleteLI("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", codePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    .line 353
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 358
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 361
    iget-object v2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v1, 0x0

    goto :goto_99

    :cond_6a
    if-eqz p1, :cond_99

    const/4 v2, 0x5

    if-ge p2, v2, :cond_80

    .line 365
    iget-object v3, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AsecInstallArgs;ZI)V

    const v5, 0xea60

    mul-int/2addr v5, p2

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_80
    const/4 v3, 0x4

    if-ne p2, v3, :cond_99

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASEC unmount failed and will try for last chance: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_99
    :goto_99
    if-nez v1, :cond_a0

    if-eqz p1, :cond_a0

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    :cond_a0
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 326
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p2, :cond_2c

    .line 330
    invoke-static {p2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_10

    aget-object v3, p2, v2

    .line 334
    :try_start_22
    iget-object v4, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_22 .. :try_end_29} :catch_29

    :catch_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 328
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "instructionSet == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    return-void
.end method

.method public final setMountPath(Ljava/lang/String;)V
    .registers 4

    .line 259
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "pkg.apk"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 263
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    goto :goto_20

    .line 265
    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 267
    :goto_20
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->resourcePath:Ljava/lang/String;

    return-void
.end method
