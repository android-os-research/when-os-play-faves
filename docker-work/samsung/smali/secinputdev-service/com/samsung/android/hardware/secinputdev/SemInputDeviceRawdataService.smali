.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
.super Ljava/lang/Object;
.source "SemInputDeviceRawdataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
    }
.end annotation


# static fields
.field public static PHYS_CHANNEL_X:I = 0x0

.field public static PHYS_CHANNEL_Y:I = 0x0

.field private static final RAWDATA_POSTFIX_SIZE:I = 0x1

.field private static final RAWDATA_PREFIX_SIZE:I = 0x4

.field public static RAWDATA_SIZE:I = 0x0

.field private static final SUPPORT_TSP_RAWDATA:Z

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceRawdataService"

.field private static enabledByCallback:I

.field private static enabledByListener:I

.field private static enabledBySettings:I


# instance fields
.field private final bootingDump:Ljava/lang/StringBuilder;

.field private final callbackClientList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private frameCount:I

.field private volatile isScreenOn:Z

.field private motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

.field private pollCount:I

.field private rawdata:[I

.field private readRawdataEnable:I

.field private supportRawService:Z

.field private final sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;


# direct methods
.method static bridge synthetic -$$Nest$sfgetenabledByCallback()I
    .registers 1

    sget v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetenabledByListener()I
    .registers 1

    sget v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByListener:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetenabledBySettings()I
    .registers 1

    sget v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledBySettings:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputenabledByCallback(I)V
    .registers 1

    sput p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputenabledByListener(I)V
    .registers 1

    sput p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByListener:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputenabledBySettings(I)V
    .registers 1

    sput p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledBySettings:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 26
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PROVIDE_TSP_RAWDATA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->SUPPORT_TSP_RAWDATA:Z

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    .line 29
    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    .line 30
    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    .line 38
    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    .line 39
    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledBySettings:I

    .line 40
    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByListener:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 43
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->frameCount:I

    .line 44
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pollCount:I

    .line 46
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    .line 50
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->context:Landroid/content/Context;

    .line 51
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    .line 56
    sget-boolean v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->SUPPORT_TSP_RAWDATA:Z

    const-string v2, "SemInputDeviceRawdataService"

    if-nez v1, :cond_3c

    .line 57
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PROVIDE_TSP_RAWDATA = FALSE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v1, "- SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PROVIDE_TSP_RAWDATA = FALSE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    return-void

    .line 62
    :cond_3c
    invoke-interface {p2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getVersion()F

    move-result v1

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_54

    .line 63
    const-string v1, "hidl 1.2, not support"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v1, "- hidl 1.2, not support\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    return-void

    .line 68
    :cond_54
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->initPanelInformation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    .line 69
    if-nez v0, :cond_5d

    .line 70
    return-void

    .line 72
    :cond_5d
    sget v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->rawdata:[I

    .line 73
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 75
    const-string v0, "done"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method private deliveryRawdata([Ljava/lang/Object;)V
    .registers 11
    .param p1, "data"    # [Ljava/lang/Object;

    .line 315
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 317
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v2, :cond_b

    .line 318
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->deliveryRawdata([Ljava/lang/Object;)V

    .line 321
    :cond_b
    sget v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    if-lez v2, :cond_71

    .line 322
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_10
    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    if-ge v2, v3, :cond_23

    .line 323
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->rawdata:[I

    aget-object v4, p1, v2

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput v4, v3, v2

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 325
    .end local v2    # "ii":I
    :cond_23
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->rawdata:[I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 331
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_34} :catch_72

    .line 332
    :try_start_34
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_6e

    .line 333
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_3b
    if-ge v4, v3, :cond_6c

    .line 335
    :try_start_3d
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->rawdata:[I

    invoke-interface {v5, v6}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;->deliveryRawdata([I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_4b
    .catchall {:try_start_3d .. :try_end_4a} :catchall_6e

    .line 338
    goto :goto_64

    .line 336
    :catch_4b
    move-exception v5

    .line 337
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_4c
    const-string v6, "SemInputDeviceRawdataService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliveryRawdata: e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_64
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 341
    .end local v3    # "N":I
    .end local v4    # "ii":I
    :cond_6c
    monitor-exit v2

    goto :goto_71

    :catchall_6e
    move-exception v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_4c .. :try_end_70} :catchall_6e

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .end local p1    # "data":[Ljava/lang/Object;
    :try_start_70
    throw v3
    :try_end_71
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_70 .. :try_end_71} :catch_72

    .line 345
    .end local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .restart local p1    # "data":[Ljava/lang/Object;
    :cond_71
    :goto_71
    goto :goto_8b

    .line 343
    :catch_72
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "SemInputDeviceRawdataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliveryRawdata: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_8b
    return-void
.end method

.method private initPanelInformation()Z
    .registers 11

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "xNum":I
    const/4 v1, 0x0

    .line 86
    .local v1, "yNum":I
    const/4 v2, 0x2

    .line 87
    .local v2, "retry":I
    :goto_3
    const-string v3, "\n"

    const/4 v4, 0x0

    const-string v5, "SemInputDeviceRawdataService"

    const/4 v6, 0x1

    if-lez v2, :cond_6d

    .line 90
    :try_start_b
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const-string v8, "get_x_num"

    invoke-interface {v7, v6, v8}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->runTspCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "temp":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 93
    iget-object v8, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    const-string v9, "get_y_num"

    invoke-interface {v8, v6, v9}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->runTspCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_25} :catch_27

    move v1, v8

    .line 95
    goto :goto_6d

    .line 96
    .end local v7    # "temp":Ljava/lang/String;
    :catch_27
    move-exception v6

    .line 97
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initPanelInformation: NumberFormatException e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 99
    if-nez v2, :cond_6c

    .line 100
    const-string v7, "initPanelInformation failed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- initPanelInformation failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    return v4

    .line 104
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_6c
    goto :goto_3

    .line 107
    :cond_6d
    :goto_6d
    if-eqz v0, :cond_e0

    if-nez v1, :cond_72

    goto :goto_e0

    .line 111
    :cond_72
    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    .line 112
    sput v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    .line 113
    mul-int v4, v0, v1

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v6

    sput v4, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initPanelInformation: x: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " y: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v8, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " RAWDATA_SIZE: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v9, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- x: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v9, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    return v6

    .line 108
    :cond_e0
    :goto_e0
    return v4
.end method


# virtual methods
.method public deliveryLastData([IF)V
    .registers 10
    .param p1, "croppedVideoClip"    # [I
    .param p2, "result"    # F

    .line 350
    :try_start_0
    sget v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    if-lez v0, :cond_5d

    .line 351
    const-string v0, "SemInputDeviceRawdataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliveryLastData: callback: croppedVideoClip: length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->rawdata:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_22} :catch_5e

    .line 355
    :try_start_22
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_5a

    .line 356
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_29
    if-ge v2, v1, :cond_58

    .line 358
    :try_start_2b
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;->deliveryLastData([IF)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_37
    .catchall {:try_start_2b .. :try_end_36} :catchall_5a

    .line 361
    goto :goto_50

    .line 359
    :catch_37
    move-exception v3

    .line 360
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v4, "SemInputDeviceRawdataService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deliveryLastData: e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_50
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 364
    .end local v1    # "N":I
    .end local v2    # "ii":I
    :cond_58
    monitor-exit v0

    goto :goto_5d

    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_38 .. :try_end_5c} :catchall_5a

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .end local p1    # "croppedVideoClip":[I
    .end local p2    # "result":F
    :try_start_5c
    throw v1
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5c .. :try_end_5d} :catch_5e

    .line 368
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .restart local p1    # "croppedVideoClip":[I
    .restart local p2    # "result":F
    :cond_5d
    :goto_5d
    goto :goto_77

    .line 366
    :catch_5e
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "SemInputDeviceRawdataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliveryLastData: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_77
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pauseService()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_d

    .line 125
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->destroy()V

    .line 128
    :cond_d
    const-string v0, "SemInputDeviceRawdataService"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public declared-synchronized disableService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z
    .registers 7
    .param p1, "enabledType"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    monitor-enter p0

    .line 190
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 191
    const-string v0, "SemInputDeviceRawdataService"

    const-string v2, "disableService: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_9f

    .line 192
    monitor-exit p0

    return v1

    .line 194
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    :cond_f
    :try_start_f
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    if-gtz v0, :cond_1c

    .line 195
    const-string v0, "SemInputDeviceRawdataService"

    const-string v2, "disableService: not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_9f

    .line 196
    monitor-exit p0

    return v1

    .line 199
    :cond_1c
    :try_start_1c
    const-string v0, "SemInputDeviceRawdataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->disable()V

    .line 202
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5a

    .line 203
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->initTspRawData(II)I

    move-result v0

    .line 204
    .local v0, "ret":I
    const-string v1, "SemInputDeviceRawdataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableService: initTspRawData(0) ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "ret":I
    :cond_5a
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 207
    const-string v0, "SemInputDeviceRawdataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableService: total:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " callback:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " setting:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledBySettings:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByListener:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_1c .. :try_end_9d} :catchall_9f

    .line 208
    monitor-exit p0

    return v2

    .line 189
    .end local p1    # "enabledType":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
    :catchall_9f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 212
    const-string v0, "dumping SemInputDeviceRawdataService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_13

    .line 215
    return-void

    .line 218
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledBySettings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    sget v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    if-lez v0, :cond_85

    .line 220
    const-string v0, "- registered callback client list"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "client":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    .end local v1    # "client":Ljava/lang/String;
    goto :goto_62

    .line 226
    :cond_85
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_93

    .line 227
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->dump(Ljava/io/PrintWriter;)V

    .line 230
    :cond_93
    return-void
.end method

.method public declared-synchronized enableService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z
    .registers 8
    .param p1, "enabledType"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    monitor-enter p0

    .line 162
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 163
    const-string v0, "SemInputDeviceRawdataService"

    const-string v2, "enableService: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_a7

    .line 164
    monitor-exit p0

    return v1

    .line 167
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    :cond_f
    :try_start_f
    const-string v0, "SemInputDeviceRawdataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->enable()V

    .line 170
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 171
    if-ne v0, v2, :cond_67

    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    if-eqz v0, :cond_5e

    .line 173
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, v2, v2}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->initTspRawData(II)I

    move-result v0

    .line 174
    .local v0, "ret":I
    const-string v3, "SemInputDeviceRawdataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableService: initTspRawData(1) ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-gez v0, :cond_5d

    .line 176
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->disable()V
    :try_end_5b
    .catchall {:try_start_f .. :try_end_5b} :catchall_a7

    .line 178
    monitor-exit p0

    return v1

    .line 180
    .end local v0    # "ret":I
    :cond_5d
    goto :goto_65

    .line 181
    :cond_5e
    :try_start_5e
    const-string v0, "SemInputDeviceRawdataService"

    const-string v3, "enableService: main screen off"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_65
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->frameCount:I

    .line 185
    :cond_67
    const-string v0, "SemInputDeviceRawdataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableService: total:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " callback:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByCallback:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " setting:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledBySettings:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledByListener:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_5e .. :try_end_a5} :catchall_a7

    .line 186
    monitor-exit p0

    return v2

    .line 161
    .end local p1    # "enabledType":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;
    :catchall_a7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isSupport()Z
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceRawdataService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    return v0
.end method

.method public onReportRawData(ILjava/util/ArrayList;)I
    .registers 10
    .param p1, "pollCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    .line 296
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const-string v0, ", total:"

    const-string v1, "onReportRawData: "

    const-string v2, "SemInputDeviceRawdataService"

    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pollCount:I

    .line 298
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_9
    if-ge v3, p1, :cond_65

    .line 300
    :try_start_b
    sget v4, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    mul-int v5, v3, v4

    add-int/lit8 v6, v3, 0x1

    mul-int/2addr v6, v4

    invoke-virtual {p2, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->deliveryRawdata([Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_1d} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1d} :catch_1e

    goto :goto_61

    .line 303
    :catch_1e
    move-exception v4

    .line 304
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 301
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_40
    move-exception v4

    .line 302
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_61
    nop

    .line 298
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 308
    .end local v3    # "ii":I
    :cond_65
    const/4 v0, 0x0

    return v0
.end method

.method public pauseService()V
    .registers 5

    .line 147
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_5

    .line 148
    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_c

    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->pause()V

    .line 154
    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1e

    .line 155
    const-string v0, "SemInputDeviceRawdataService"

    const-string v3, "pauseService"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->initTspRawData(II)I

    .line 158
    :cond_1e
    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    .line 159
    return-void
.end method

.method public registerCallback(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "client"    # Ljava/lang/String;

    .line 233
    const-string v0, "SemInputDeviceRawdataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback: client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 235
    const-string v0, "SemInputDeviceRawdataService"

    const-string v2, "registerCallback: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v1

    .line 238
    :cond_25
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v0

    .line 239
    .local v0, "callback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    if-nez v0, :cond_33

    .line 240
    const-string v2, "SemInputDeviceRawdataService"

    const-string v3, "registerCallback: binder/callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1

    .line 244
    :cond_33
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    .line 245
    .local v1, "findCallback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    if-eqz v1, :cond_6e

    .line 246
    const-string v2, "SemInputDeviceRawdataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallback: already registered from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 248
    :try_start_58
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 249
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_6b

    .line 250
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "SemInputDeviceRawdataService"

    const-string v3, "registerCallback: replace callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 249
    :catchall_6b
    move-exception v3

    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v3

    .line 253
    :cond_6e
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->CALLBACK:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enableService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    .line 255
    :goto_73
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 256
    :try_start_76
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 257
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_8a

    .line 258
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v2, "SemInputDeviceRawdataService"

    const-string v3, "registerCallback: done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v2, 0x1

    return v2

    .line 257
    :catchall_8a
    move-exception v3

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v3
.end method

.method public restartService()V
    .registers 4

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_5

    .line 133
    return-void

    .line 136
    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    .line 137
    const-string v0, "SemInputDeviceRawdataService"

    const-string v2, "restartService"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->initTspRawData(II)I

    .line 140
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_1d

    .line 141
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->restart()V

    .line 143
    :cond_1d
    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    .line 144
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "client"    # Ljava/lang/String;

    .line 264
    const-string v0, "SemInputDeviceRawdataService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallback: client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 266
    const-string v0, "SemInputDeviceRawdataService"

    const-string v2, "unregisterCallback: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v1

    .line 269
    :cond_25
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v0

    .line 270
    .local v0, "callback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    if-nez v0, :cond_33

    .line 271
    const-string v2, "SemInputDeviceRawdataService"

    const-string v3, "registerCallback: binder/callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1

    .line 275
    :cond_33
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    .line 276
    .local v2, "findCallback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    if-eqz v2, :cond_43

    .line 277
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    .line 279
    :cond_43
    const-string v3, "SemInputDeviceRawdataService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterCallback: not registered from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_5b
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    .line 282
    :try_start_5e
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v4

    .line 283
    .local v4, "ret":Z
    if-eqz v4, :cond_75

    .line 284
    const-string v1, "SemInputDeviceRawdataService"

    const-string v5, "unregisterCallback: done"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;->CALLBACK:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;

    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->disableService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService$Type;)Z

    .line 286
    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 288
    .end local v4    # "ret":Z
    :cond_75
    monitor-exit v3

    .line 289
    return v1

    .line 288
    :catchall_77
    move-exception v1

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_5e .. :try_end_79} :catchall_77

    throw v1
.end method
