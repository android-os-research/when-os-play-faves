.class public Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
.super Ljava/lang/Object;
.source "StorageManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "StorageManagerAdapter"

.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    if-nez v1, :cond_1d

    .line 54
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mContext:Landroid/content/Context;

    .line 55
    new-instance p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;-><init>()V

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 56
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 59
    :cond_1d
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getExternalSdCardPath()Ljava/lang/String;
    .registers 4

    .line 87
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 91
    :cond_a
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_4f

    .line 95
    aget-object v1, p0, v2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 96
    aget-object p0, p0, v2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subsystem : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    return-object v0
.end method

.method public getExternalSdCardState()Ljava/lang/String;
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternalSdCardPath()Ljava/lang/String;
    .registers 4

    .line 106
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 110
    :cond_a
    array-length v1, p0

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    .line 114
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 115
    aget-object p0, p0, v1

    .line 118
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fuse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string p0, "/"

    return-object p0

    .line 121
    :cond_27
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object v0
.end method

.method public getInternalSdCardState()Ljava/lang/String;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_8
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 1

    .line 127
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 132
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolumes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 137
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isExternalSdCardPresent()Z
    .registers 2

    .line 63
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 64
    array-length p0, p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
