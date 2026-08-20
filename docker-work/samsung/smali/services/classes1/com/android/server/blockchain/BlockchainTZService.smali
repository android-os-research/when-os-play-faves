.class public Lcom/android/server/blockchain/BlockchainTZService;
.super Landroid/blockchain/IBlockchainManager$Stub;
.source "BlockchainTZService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
    }
.end annotation


# static fields
.field public static final BLOCKCHAIN_SERVICE_VERSION:I = 0x1

.field public static final DEBUG:Z

.field public static final SPAY_TA_TYPE_TEE_TUI:I = 0x101

.field public static final TAG:Ljava/lang/String; = "BlockchainTZService"

.field public static final TIMA_MSR_FILE_NAME:Ljava/lang/String; = "/system/tima_measurement_info"

.field public static mContext:Landroid/content/Context;


# instance fields
.field public mRegisteredFWKClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRegisteredFWKClientMap(Lcom/android/server/blockchain/BlockchainTZService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Landroid/blockchain/IBlockchainManager$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 60
    sget-boolean p0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    if-eqz p0, :cond_15

    const-string p0, "BlockchainTZService"

    const-string v0, "BlockchainTZService() called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_15
    sput-object p1, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5

    .line 47
    sget-object v0, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "BlockchainTZService"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "BlockchainTZService() - Valid Caller"

    .line 53
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_19
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

    const-string p0, "BlockchainTZService() - Invalid Caller"

    .line 50
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    throw v0
.end method


# virtual methods
.method public getCredential(I)[B
    .registers 4

    .line 189
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string v1, "getCredential"

    if-eqz v0, :cond_b

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_b
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/blockchain/BlockchainTZService;->nativeGetCredential(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getMeasurementFile()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "getMeasurementFile"

    .line 183
    invoke-static {p0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string p0, "/system/tima_measurement_info"

    .line 184
    invoke-static {p0}, Lcom/android/server/blockchain/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getPackageNameFromPid(II)Ljava/lang/String;
    .registers 7

    .line 223
    sget-object p0, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 224
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const-string v1, "BlockchainTZService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 225
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 226
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p2, :cond_1b

    .line 227
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v2, p0

    goto :goto_34

    :cond_2f
    const-string p0, "Error: am.getRunningAppProcesses() is null"

    .line 232
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    if-nez v2, :cond_3f

    const-string p0, "Error: can\'t find processname for PID"

    .line 236
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3f
    return-object v2
.end method

.method public native nativeGetCredential(I)[B
.end method

.method public native nativePutCredential(I[B)Z
.end method

.method public native nativeSspExit()I
.end method

.method public native nativeSspInit()I
.end method

.method public putCredential(I[B)Z
    .registers 5

    .line 196
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string/jumbo v1, "putCredential"

    if-eqz v0, :cond_c

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_c
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blockchain/BlockchainTZService;->nativePutCredential(I[B)Z

    move-result p0

    return p0
.end method

.method public registerBlockchainFW(Landroid/blockchain/BlockchainTZServiceConfig;)Landroid/blockchain/BlockchainTZServiceCommnInfo;
    .registers 13

    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 141
    invoke-virtual {p0, v4, v5}, Lcom/android/server/blockchain/BlockchainTZService;->getPackageNameFromPid(II)Ljava/lang/String;

    move-result-object v7

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside registerBlockchainFW, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "BlockchainTZService"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 144
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    .line 145
    iget v1, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPid:I

    if-eq v5, v1, :cond_51

    const-string v1, "Registered Client Died. Need to Rebind"

    .line 147
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->-$$Nest$mdeleteClient(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;)V

    goto :goto_58

    :cond_51
    const-string p0, "Error: Framework App is already registered. Re-Registration not allowed"

    .line 150
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_58
    :goto_58
    const-string/jumbo v0, "registerBlockchainFW"

    .line 155
    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 156
    new-instance v9, Landroid/blockchain/BlockchainTZServiceCommnInfo;

    invoke-direct {v9}, Landroid/blockchain/BlockchainTZServiceCommnInfo;-><init>()V

    const/4 v0, 0x1

    .line 157
    iput v0, v9, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mServiceVersion:I

    .line 159
    iget-object v0, p1, Landroid/blockchain/BlockchainTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    new-instance v2, Lcom/android/server/blockchain/TAController;

    sget-object v3, Lcom/android/server/blockchain/BlockchainTZService;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;

    invoke-direct {v2, v3, v6, v10}, Lcom/android/server/blockchain/TAController;-><init>(Landroid/content/Context;ILandroid/blockchain/BlockchainTZServiceConfig$TAConfig;)V

    .line 161
    iget-object v3, v9, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 164
    :cond_9f
    new-instance v10, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;-><init>(Lcom/android/server/blockchain/BlockchainTZService;Landroid/blockchain/BlockchainTZServiceConfig;Landroid/blockchain/BlockchainTZServiceCommnInfo;IILjava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {p1, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callingApp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is registered, current size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/blockchain/BlockchainTZService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

.method public sspExit()I
    .registers 3

    .line 210
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string/jumbo v1, "sspExit"

    if-eqz v0, :cond_c

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_c
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspExit()I

    move-result p0

    return p0
.end method

.method public sspInit()I
    .registers 3

    .line 203
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    const-string/jumbo v1, "sspInit"

    if-eqz v0, :cond_c

    const-string v0, "BlockchainTZService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_c
    invoke-static {v1}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZService;->nativeSspInit()I

    move-result p0

    return p0
.end method
