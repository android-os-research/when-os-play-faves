.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "IcccManagerService.java"


# static fields
.field public static final ACTION_BCS_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field public static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field public static final COMPONENT_TYPE_HARD_INTEGRITY:I = 0x1

.field public static final COMPONENT_TYPE_SOFT_INTEGRITY:I = 0x2

.field public static final CURR_BIN_STATUS:I = -0xffff6

.field public static final HDM_STATUS:I = -0xfffffa

.field public static final ICCC_DRK_KEY_DIR:Ljava/lang/String; = "/data/misc/tz_iccc/"

.field public static final ICCC_DRK_KEY_FILENAME:Ljava/lang/String; = "key.dat"

.field public static final ICCC_DRK_KEY_FILENAME_BKP:Ljava/lang/String; = "key.dat.bkp"

.field public static final ICCC_DRK_SERVICE_NAME:Ljava/lang/String; = "ICCC"

.field public static final ICCC_ERROR_DEVICE_STATUS_FAILED_VERSION_MISMATCH:I = 0x18

.field public static final ICCC_GET_DEVICE_STATUS_RETRY_COUNT:I = 0x1

.field public static final NONCE_SIZE:I = 0x20

.field public static final REQUEST_AT_COMMAND:Ljava/lang/String; = "AT+ICCCINFO=1,0,0"

.field public static TAG:Ljava/lang/String; = "IcccManagerService"

.field public static final URANDOM_DRIVER_PATH:Ljava/lang/String; = "/dev/urandom"

.field public static final WARRANTY_BIT:I = -0xffff4

.field public static mContext:Landroid/content/Context;


# instance fields
.field public icccBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mget_iccc_response_data(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v0, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    sget-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Start IcccManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 71
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.BCS_REQUEST"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 254
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 256
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5

    .line 142
    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "IcccManagerService"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 148
    sget-object p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v0, "IcccManagerService() - Valid Caller"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 145
    sget-object p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "IcccManagerService() - Invalid Caller"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    throw v0
.end method

.method public static native get_Trusted_Boot_Data()I
.end method

.method public static native iccc_attestation_platform([B)[B
.end method

.method public static native iccc_device_info([B)[B
.end method

.method public static native iccc_device_status(I[B)[B
.end method

.method public static native iccc_load()I
.end method

.method public static native iccc_readData_platform(I)I
.end method

.method public static native iccc_saveData_platform(II)I
.end method

.method public static native iccc_unload()I
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 262
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public final createNonce()Ljava/lang/String;
    .registers 6

    .line 231
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 235
    :try_start_c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_2f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_29
    .catchall {:try_start_c .. :try_end_11} :catchall_27

    .line 236
    :try_start_11
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_15} :catch_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_23
    .catchall {:try_start_11 .. :try_end_15} :catchall_38

    if-eq v0, v1, :cond_1b

    .line 246
    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    .line 240
    :cond_1b
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/IcccManagerService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1f} :catch_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_23
    .catchall {:try_start_1b .. :try_end_1f} :catchall_38

    .line 246
    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_23
    move-exception v0

    goto :goto_2b

    :catch_25
    move-exception v0

    goto :goto_31

    :catchall_27
    move-exception v0

    goto :goto_3a

    :catch_29
    move-exception v0

    move-object v4, v3

    .line 244
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    :catch_2f
    move-exception v0

    move-object v4, v3

    .line 242
    :goto_31
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_38

    .line 246
    :goto_34
    invoke-virtual {p0, v4}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :catchall_38
    move-exception v0

    move-object v3, v4

    :goto_3a
    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    throw v0
.end method

.method public final enforcePermission()Z
    .registers 2

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized getDeviceInfo([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "getDeviceInfo"

    .line 224
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 226
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_device_info([B)[B

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 227
    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeviceStatus(I[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "getDeviceStatus"

    .line 204
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_load()I

    move-result v0

    if-eqz v0, :cond_17

    .line 207
    sget-object p1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "iccc_load failure"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2b

    const/4 p1, 0x0

    .line 208
    monitor-exit p0

    return-object p1

    .line 211
    :cond_17
    :try_start_17
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_device_status(I[B)[B

    move-result-object p1

    .line 213
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_unload()I

    move-result p2

    if-eqz p2, :cond_29

    .line 214
    sget-object p2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "iccc_unload failure"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_2b

    .line 217
    :cond_29
    monitor-exit p0

    return-object p1

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSecureData(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_1
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 168
    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTrustedBootData()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_1
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 187
    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const v0, -0xffff4

    .line 155
    :try_start_4
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, -0xffff6

    .line 157
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_55

    .line 161
    monitor-exit p0

    return-object p1

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttestationData([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "setAttestationData"

    .line 194
    invoke-static {v0}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 196
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_attestation_platform([B)[B

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 197
    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecureData(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 175
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    move-result p1

    goto :goto_14

    .line 177
    :cond_c
    sget-object p1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string p2, "Not System UID. Only system UID caller can change status"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    const/4 p1, -0x1

    .line 180
    :goto_14
    monitor-exit p0

    return p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method
