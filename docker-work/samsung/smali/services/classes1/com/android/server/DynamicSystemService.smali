.class public Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "DynamicSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DynamicSystemService$GsiServiceCallback;
    }
.end annotation


# static fields
.field public static final GSID_ROUGH_TIMEOUT_MS:I = 0x2000

.field public static final MINIMUM_SD_MB:J = 0x7800L

.field public static final PATH_DEFAULT:Ljava/lang/String; = "/data/gsi/"

.field public static final TAG:Ljava/lang/String; = "DynamicSystemService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDsuSlot:Ljava/lang/String;

.field public volatile mGsiService:Landroid/gsi/IGsiService;

.field public mInstallPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abort()Z
    .registers 1
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result p0

    return p0
.end method

.method public closePartition()Z
    .registers 2
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closePartition()I

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "DynamicSystemService"

    const-string v0, "Partition installation completes with error"

    .line 136
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public createPartition(Ljava/lang/String;JZ)I
    .registers 5
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    .line 124
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/gsi/IGsiService;->createPartition(Ljava/lang/String;JZ)I

    move-result p0

    if-eqz p0, :cond_20

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create partition: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicSystemService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return p0
.end method

.method public finishInstallation()Z
    .registers 2
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Landroid/gsi/IGsiService;->closeInstall()I

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "DynamicSystemService"

    const-string v0, "Failed to finish installation"

    .line 147
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .registers 2
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/gsi/IGsiService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_e

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0

    :catch_e
    move-exception p0

    .line 251
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getGsiService()Landroid/gsi/IGsiService;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-eqz v0, :cond_7

    .line 58
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    return-object p0

    :cond_7
    const-string/jumbo p0, "gsiservice"

    .line 60
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    move-result-object p0

    return-object p0
.end method

.method public getInstallationProgress()Landroid/gsi/GsiProgress;
    .registers 1
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result p0

    return p0
.end method

.method public isInUse()Z
    .registers 2
    .annotation build Landroid/annotation/RequiresNoPermission;
    .end annotation

    const-string/jumbo p0, "ro.gsid.image_running"

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isInstalled()Z
    .registers 3
    .annotation build Landroid/annotation/RequiresNoPermission;
    .end annotation

    const-string/jumbo p0, "gsid.image_installed"

    const/4 v0, 0x0

    .line 174
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInstalled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicSystemService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public remove()Z
    .registers 5
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    :try_start_1
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 190
    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_1f

    .line 191
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/gsi/IGsiService;->removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V

    const-wide/16 v2, 0x2000

    .line 192
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 193
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1c

    .line 194
    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result p0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_18} :catch_1f

    if-nez p0, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    :catchall_1c
    move-exception p0

    .line 193
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p0
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    const-string p0, "DynamicSystemService"

    const-string/jumbo v1, "remove() was interrupted"

    .line 196
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .registers 4
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/gsi/IGsiService;->setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 231
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnable(ZZ)Z
    .registers 7
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    if-eqz p1, :cond_36

    const/4 p1, 0x0

    .line 207
    :try_start_7
    iget-object v1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 208
    invoke-interface {v0}, Landroid/gsi/IGsiService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 210
    :cond_11
    new-instance v1, Lcom/android/server/DynamicSystemService$GsiServiceCallback;

    invoke-direct {v1, p0}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;-><init>(Lcom/android/server/DynamicSystemService;)V

    .line 211
    monitor-enter v1
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_17} :catch_2d

    .line 212
    :try_start_17
    iget-object p0, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    invoke-interface {v0, p2, p0, v1}, Landroid/gsi/IGsiService;->enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V

    const-wide/16 v2, 0x2000

    .line 213
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 214
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2a

    .line 215
    :try_start_22
    invoke-virtual {v1}, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->getResult()I

    move-result p0
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_26} :catch_2d

    if-nez p0, :cond_29

    const/4 p1, 0x1

    :cond_29
    return p1

    :catchall_2a
    move-exception p0

    .line 214
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p0
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2d} :catch_2d

    :catch_2d
    const-string p0, "DynamicSystemService"

    const-string/jumbo p2, "setEnable() was interrupted"

    .line 217
    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 221
    :cond_36
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsi()Z

    move-result p0

    return p0
.end method

.method public startInstallation(Ljava/lang/String;)Z
    .registers 12
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    const-string/jumbo v1, "os.aot.path"

    .line 83
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "DynamicSystemService"

    if-eqz v2, :cond_c9

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 86
    iget-object v4, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 87
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 88
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_2b

    .line 91
    :cond_3e
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-nez v6, :cond_45

    goto :goto_2b

    .line 94
    :cond_45
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    .line 95
    iget-wide v6, v6, Landroid/os/storage/DiskInfo;->size:J

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x7800

    cmp-long v6, v6, v8

    if-gez v6, :cond_8d

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": insufficient storage"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 101
    :cond_8d
    invoke-virtual {v5, v2}, Landroid/os/storage/VolumeInfo;->getInternalPathForUser(I)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 103
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 106
    :cond_9d
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/gsi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_b4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInstallation -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_c9
    iput-object v1, p0, Lcom/android/server/DynamicSystemService;->mInstallPath:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mDsuSlot:Ljava/lang/String;

    .line 113
    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->openInstall(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_e9

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to open "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_e9
    const/4 p0, 0x1

    return p0
.end method

.method public submitFromAshmem(J)Z
    .registers 3
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/gsi/IGsiService;->commitGsiChunkFromAshmem(J)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 241
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public suggestScratchSize()J
    .registers 3
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.MANAGE_DYNAMIC_SYSTEM"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p0

    invoke-interface {p0}, Landroid/gsi/IGsiService;->suggestScratchSize()J

    move-result-wide v0

    return-wide v0
.end method
