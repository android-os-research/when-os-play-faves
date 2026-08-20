.class public final Lcom/samsung/android/authnrservice/service/DrkOperation;
.super Ljava/lang/Object;
.source "DrkOperation.java"


# static fields
.field public static final AUTHNR_SERVICE_NAME:Ljava/lang/String; = "AUTHNR"

.field public static final TAG:Ljava/lang/String; = "DO"

.field public static sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;


# instance fields
.field public mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/DrkOperation;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    if-nez v1, :cond_e

    .line 42
    new-instance v1, Lcom/samsung/android/authnrservice/service/DrkOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/DrkOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    .line 45
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getDrkKeyHandle()[B
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "DO"

    const-string v1, "getDrkKeyHandle"

    .line 102
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    const-string v0, "DO"

    const-string v2, "not initialized"

    .line 105
    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_5b

    .line 106
    monitor-exit p0

    return-object v0

    .line 111
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const-string v4, "AUTHNR"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v0

    .line 114
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_31

    .line 115
    array-length v2, v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_3c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_5b

    if-nez v2, :cond_2f

    goto :goto_31

    .line 124
    :cond_2f
    monitor-exit p0

    return-object v0

    :cond_31
    :goto_31
    :try_start_31
    const-string v0, "DO"

    const-string v2, "createServiceKeySession failed"

    .line 116
    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3c
    .catchall {:try_start_31 .. :try_end_3a} :catchall_5b

    .line 117
    monitor-exit p0

    return-object v0

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string v2, "DO"

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get drk fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_5b

    .line 121
    monitor-exit p0

    return-object v0

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "DO"

    const-string v1, "initialize"

    .line 49
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v0, :cond_13

    .line 52
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 55
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_25

    const-string p1, "DO"

    const-string v1, "isAliveDeviceRootKeyService failed"

    .line 56
    invoke-static {p1, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_5d

    .line 57
    monitor-exit p0

    return v0

    .line 61
    :cond_25
    :try_start_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 62
    iget-object p1, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result p1

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_3e

    const-string p1, "DO"

    const-string v1, "isExistDeviceRootKey failed"

    .line 65
    invoke-static {p1, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3c} :catch_40
    .catchall {:try_start_25 .. :try_end_3c} :catchall_5d

    .line 66
    monitor-exit p0

    return v0

    .line 73
    :cond_3e
    monitor-exit p0

    return v3

    :catch_40
    move-exception p1

    :try_start_41
    const-string v1, "DO"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drk init failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_5d

    .line 70
    monitor-exit p0

    return v0

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate()Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "DO"

    const-string/jumbo v1, "terminate"

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string v0, "DO"

    const-string v2, "not initialized"

    .line 80
    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_53

    .line 81
    monitor-exit p0

    return v1

    .line 85
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v0

    .line 87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_30

    const-string v0, "DO"

    const-string/jumbo v2, "releaseServiceKeySession failed"

    .line 89
    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2e} :catch_36
    .catchall {:try_start_17 .. :try_end_2e} :catchall_53

    .line 90
    monitor-exit p0

    return v1

    :cond_30
    const/4 v0, 0x0

    .line 92
    :try_start_31
    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_36
    .catchall {:try_start_31 .. :try_end_33} :catchall_53

    const/4 v0, 0x1

    .line 98
    monitor-exit p0

    return v0

    :catch_36
    move-exception v0

    :try_start_37
    const-string v2, "DO"

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drk terminate failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_53

    .line 95
    monitor-exit p0

    return v1

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method
