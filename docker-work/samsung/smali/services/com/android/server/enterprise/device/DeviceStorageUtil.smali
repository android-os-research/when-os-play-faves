.class public Lcom/android/server/enterprise/device/DeviceStorageUtil;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceStorageUtil"


# instance fields
.field public final ERROR:I

.field public final SIZE_INVALID:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->ERROR:I

    .line 199
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->SIZE_INVALID:I

    .line 70
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final externalSdCardAvailable()Z
    .registers 2

    .line 224
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;->getExternalSdCardState()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const-string/jumbo v0, "mounted"

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAvailableExternalMemorySize()J
    .registers 6

    const-wide/16 v0, -0x1

    .line 137
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 138
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_f

    return-wide v0

    .line 142
    :cond_f
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 144
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    mul-long/2addr v0, v3

    return-wide v0

    :catch_22
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    return-wide v0
.end method

.method public getAvailableExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 189
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableInternalMemorySize()J
    .registers 8

    const-wide/16 v0, -0x1

    .line 80
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 81
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 83
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 87
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1f

    return-wide v0

    .line 91
    :cond_1f
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 93
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_33

    mul-long/2addr v0, v5

    add-long/2addr v2, v0

    return-wide v2

    :catch_33
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0
.end method

.method public getAvailableInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 175
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getExternalSdCardDirectory()Ljava/io/File;
    .registers 2

    .line 216
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInternalSdCardDirectory()Ljava/io/File;
    .registers 2

    .line 232
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSizeStr(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 207
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-object v1
.end method

.method public final getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;
    .registers 1

    .line 240
    const-class p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    return-object p0
.end method

.method public getTotalExternalMemorySize()J
    .registers 6

    const-wide/16 v0, -0x1

    .line 155
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 156
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_f

    return-wide v0

    .line 160
    :cond_f
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 162
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    mul-long/2addr v0, v3

    return-wide v0

    :catch_22
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    return-wide v0
.end method

.method public getTotalExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 196
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalInternalMemorySize()J
    .registers 8

    const-wide/16 v0, -0x1

    .line 111
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 112
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 114
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 118
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1f

    return-wide v0

    .line 122
    :cond_1f
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 124
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_33

    mul-long/2addr v0, v5

    add-long/2addr v2, v0

    return-wide v2

    :catch_33
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0
.end method

.method public getTotalInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
