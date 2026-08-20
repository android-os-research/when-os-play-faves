.class public final Lcom/android/server/pm/PackageManagerNative;
.super Landroid/content/pm/IPackageManagerNative$Stub;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;
    }
.end annotation


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/PackageManagerNative;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/content/pm/IPackageManagerNative$Stub;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public getAllPackages()[Ljava/lang/String;
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getAllPackages()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 108
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    return-object v0

    .line 113
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-wide/16 v1, 0x0

    .line 114
    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 117
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2b

    const-string/jumbo p0, "preload"

    return-object p0

    :cond_2b
    const-string p0, ""

    return-object p0
.end method

.method public getLocationFlags(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 175
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 182
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    .line 183
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    or-int/2addr p1, v0

    .line 184
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 v1, 0x4

    :cond_2c
    or-int p0, p1, v1

    return p0

    .line 179
    :cond_2f
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t get ApplicationInfo for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModuleMetadataPackageName()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_85

    .line 82
    :try_start_3
    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_85

    .line 85
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2f

    if-eqz p0, :cond_16

    move-object v0, p0

    goto :goto_19

    .line 86
    :cond_16
    :try_start_16
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    .line 88
    :goto_19
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1c
    if-ltz v1, :cond_29

    .line 89
    aget-object v2, v0, v1

    if-nez v2, :cond_26

    const-string v2, ""

    .line 90
    aput-object v2, v0, v1
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_2a

    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_29
    return-object v0

    :catchall_2a
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_31

    :catchall_2f
    move-exception v1

    move-object p0, v0

    .line 96
    :goto_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uids: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PackageManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "names: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "results: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "throwing exception"

    .line 99
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    throw v1

    :cond_85
    :goto_85
    return-object v0
.end method

.method public getStagedApexInfo(Ljava/lang/String;)Landroid/content/pm/StagedApexInfo;
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagingManager()Lcom/android/server/pm/StagingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->getStagedApexInfo(Ljava/lang/String;)Landroid/content/pm/StagedApexInfo;

    move-result-object p0

    return-object p0
.end method

.method public getStagedApexModuleNames()[Ljava/lang/String;
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagingManager()Lcom/android/server/pm/StagingManager;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexModuleNames()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getTargetSdkVersionForPackage(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    return p0

    .line 144
    :cond_e
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t get targetSdkVersion for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersionCodeForPackage(Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 126
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 127
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 128
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 130
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    return-wide p0

    :catch_1b
    :cond_1b
    return-wide v0
.end method

.method public hasSha256SigningCertificate(Ljava/lang/String;[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v0, 0x1

    .line 196
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/pm/Computer;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    return p0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 3

    .line 201
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 163
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 164
    array-length v1, p1

    new-array v2, v1, [Z

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_13
    if-ltz v1, :cond_2d

    .line 166
    aget-object v4, p1, v1

    const-wide/16 v5, 0x0

    invoke-interface {p0, v4, v5, v6, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 167
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    move-result v4

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2d
    return-object v2
.end method

.method public isPackageDebuggable(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 150
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 151
    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 153
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0

    .line 156
    :cond_1c
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t get debug flag for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerPackageChangeObserver(Landroid/content/pm/IPackageChangeObserver;)V
    .registers 6

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_5
    invoke-interface {p1}, Landroid/content/pm/IPackageChangeObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;-><init>(Lcom/android/server/pm/PackageManagerNative;Landroid/content/pm/IPackageChangeObserver;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_15
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_1f

    :catchall_13
    move-exception p0

    goto :goto_46

    :catch_15
    move-exception v1

    :try_start_16
    const-string v2, "PackageManager"

    .line 55
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_1f
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "PackageManager"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of mPackageChangeObservers after registry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_13

    throw p0
.end method

.method public registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagingManager()Lcom/android/server/pm/StagingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    return-void
.end method

.method public unregisterPackageChangeObserver(Landroid/content/pm/IPackageChangeObserver;)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 66
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "PackageManager"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of mPackageChangeObservers after unregistry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagingManager()Lcom/android/server/pm/StagingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    return-void
.end method
