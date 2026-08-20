.class public final Lcom/android/server/pm/MoveInstallArgs;
.super Lcom/android/server/pm/InstallArgs;
.source "MoveInstallArgs.java"


# instance fields
.field public mCodeFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallParams;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-void
.end method


# virtual methods
.method public final cleanUp(Ljava/lang/String;)V
    .registers 14

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "PackageManager"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_45
    array-length v3, v0

    const/4 v4, 0x0

    :goto_47
    if-ge v4, v3, :cond_6a

    aget v8, v0, v4
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_71

    .line 116
    :try_start_4b
    iget-object v5, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v6, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v7, v6, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    const v9, 0x20003

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_5c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4b .. :try_end_5c} :catch_5d
    .catchall {:try_start_4b .. :try_end_5c} :catchall_71

    goto :goto_67

    :catch_5d
    move-exception v5

    :try_start_5e
    const-string v6, "PackageManager"

    .line 119
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 122
    :cond_6a
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 123
    monitor-exit v2

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_71

    throw p0
.end method

.method public cleanUpResourcesLI()V
    .registers 1

    .line 127
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public copyApk()I
    .registers 11

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v0

    .line 51
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, v1, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iget-object v7, v1, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iget-object v9, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_1c} :catch_3d
    .catchall {:try_start_5 .. :try_end_1c} :catchall_3b

    .line 58
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_3b

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/MoveInstallArgs;->mCodeFile:Ljava/io/File;

    const/4 p0, 0x1

    return p0

    :catchall_3b
    move-exception p0

    goto :goto_49

    :catch_3d
    move-exception p0

    :try_start_3e
    const-string v1, "PackageManager"

    const-string v2, "Failed to move app"

    .line 55
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x6e

    .line 56
    monitor-exit v0

    return p0

    .line 58
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_3b

    throw p0
.end method

.method public doPostDeleteLI(Z)Z
    .registers 2

    .line 131
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public doPostInstall(II)I
    .registers 3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_b

    .line 86
    iget-object p2, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    goto :goto_12

    .line 88
    :cond_b
    iget-object p2, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    :goto_12
    return p1
.end method

.method public doPreInstall(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    :cond_a
    return p1
.end method

.method public doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .registers 3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_c

    .line 77
    iget-object p1, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p1, p1, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/MoveInstallArgs;->cleanUp(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_c
    return p2
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/pm/MoveInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method
