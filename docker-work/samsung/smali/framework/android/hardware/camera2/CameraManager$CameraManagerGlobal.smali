.class final Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraManagerGlobal"
.end annotation


# static fields
.field private static final greylist-max-o CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManagerGlobal"

.field private static final greylist-max-o gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field public static final greylist-max-o sCameraServiceDisabled:Z


# instance fields
.field private final greylist-max-o CAMERA_SERVICE_RECONNECT_DELAY_MS:I

.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCameraDeviceStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraManager$CameraDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCameraService:Landroid/hardware/ICameraService;

.field private final blacklist mConcurrentCameraIdCombinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasOpenCloseListenerPermission:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final blacklist mOpenedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final blacklist mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTorchCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/camera2/CameraManager$TorchCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTorchClientBinder:Landroid/os/Binder;

.field private final greylist-max-o mTorchStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnavailablePhysicalDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1871
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 1919
    nop

    .line 1920
    const-string v0, "config.disable_cameraservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 1919
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 1917
    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 1866
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->DEBUG:Z

    .line 1868
    const/16 v1, 0x3e8

    iput v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->CAMERA_SERVICE_RECONNECT_DELAY_MS:I

    .line 1879
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1881
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    .line 1883
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 1886
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    .line 1888
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    .line 1892
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    .line 1896
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    .line 1899
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    .line 1902
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    .line 1906
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    .line 1907
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    .line 1910
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 1914
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 1917
    return-void
.end method

.method private static blacklist cameraStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraStatus"    # I

    .line 3229
    const-string v0, "STATUS_UNKNOWN"

    packed-switch p0, :pswitch_data_14

    .line 3237
    return-object v0

    .line 3232
    :pswitch_6
    const-string v0, "STATUS_ENUMERATING"

    return-object v0

    .line 3231
    :pswitch_9
    const-string v0, "STATUS_PRESENT"

    return-object v0

    .line 3230
    :pswitch_c
    const-string v0, "STATUS_NOT_PRESENT"

    return-object v0

    .line 3234
    :pswitch_f
    return-object v0

    .line 3233
    :pswitch_10
    const-string v0, "STATUS_NOT_AVAILABLE"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch -0x2
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist cameraStatusesContains([Landroid/hardware/CameraStatus;Ljava/lang/String;)Z
    .registers 7
    .param p0, "cameraStatuses"    # [Landroid/hardware/CameraStatus;
    .param p1, "id"    # Ljava/lang/String;

    .line 2102
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 2103
    .local v3, "c":Landroid/hardware/CameraStatus;
    iget-object v4, v3, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2104
    const/4 v0, 0x1

    return v0

    .line 2102
    .end local v3    # "c":Landroid/hardware/CameraStatus;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2107
    :cond_14
    return v1
.end method

.method private greylist-max-o connectCameraServiceLocked()V
    .registers 13

    .line 1956
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v0, :cond_9e

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_a

    goto/16 :goto_9e

    .line 1958
    :cond_a
    const-string v0, "CameraManagerGlobal"

    const-string v1, "Connecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const-string/jumbo v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1961
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_1b

    .line 1963
    return-void

    .line 1966
    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_9c

    .line 1970
    nop

    .line 1972
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    .line 1975
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    :try_start_24
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setupGlobalVendorTagDescriptor()V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_24 .. :try_end_27} :catch_28

    .line 1978
    goto :goto_2c

    .line 1976
    :catch_28
    move-exception v3

    .line 1977
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V

    .line 1981
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_2c
    :try_start_2c
    invoke-interface {v2, p0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v3

    .line 1982
    .local v3, "cameraStatuses":[Landroid/hardware/CameraStatus;
    array-length v4, v3

    move v5, v1

    :goto_32
    if-ge v5, v4, :cond_6c

    aget-object v6, v3, v5

    .line 1983
    .local v6, "c":Landroid/hardware/CameraStatus;
    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    iget-object v8, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 1985
    iget-object v7, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    if-eqz v7, :cond_51

    .line 1986
    iget-object v7, v6, Landroid/hardware/CameraStatus;->unavailablePhysicalCameras:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_45
    if-ge v9, v8, :cond_51

    aget-object v10, v7, v9

    .line 1987
    .local v10, "unavailPhysicalCamera":Ljava/lang/String;
    iget-object v11, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v1, v11, v10}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 1986
    .end local v10    # "unavailPhysicalCamera":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 1993
    :cond_51
    iget-boolean v7, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v7, :cond_69

    iget v7, v6, Landroid/hardware/CameraStatus;->status:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_69

    iget-object v7, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    .line 1995
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_69

    .line 1996
    iget-object v7, v6, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    iget-object v8, v6, Landroid/hardware/CameraStatus;->clientPackage:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    .end local v6    # "c":Landroid/hardware/CameraStatus;
    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 1999
    :cond_6c
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;
    :try_end_6e
    .catch Landroid/os/ServiceSpecificException; {:try_start_2c .. :try_end_6e} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_6e} :catch_6f

    .line 2005
    .end local v3    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    goto :goto_70

    .line 2003
    :catch_6f
    move-exception v3

    .line 2008
    :goto_70
    nop

    .line 2009
    :try_start_71
    invoke-interface {v2}, Landroid/hardware/ICameraService;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v3

    .line 2010
    .local v3, "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    array-length v4, v3

    :goto_76
    if-ge v1, v4, :cond_87

    aget-object v5, v3, v1

    .line 2011
    .local v5, "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-virtual {v5}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->getConcurrentCameraIdCombination()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Landroid/os/ServiceSpecificException; {:try_start_71 .. :try_end_83} :catch_8a
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_83} :catch_88

    .line 2010
    nop

    .end local v5    # "comb":Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 2019
    .end local v3    # "cameraIdCombinations":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :cond_87
    goto :goto_89

    .line 2017
    :catch_88
    move-exception v1

    .line 2020
    :goto_89
    return-void

    .line 2013
    :catch_8a
    move-exception v1

    .line 2015
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to get concurrent camera id combinations"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2000
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :catch_93
    move-exception v1

    .line 2002
    .restart local v1    # "e":Landroid/os/ServiceSpecificException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1967
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_9c
    move-exception v1

    .line 1969
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 1956
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9e
    :goto_9e
    return-void
.end method

.method private blacklist extractCameraIdListLocked()[Ljava/lang/String;
    .registers 7

    .line 2023
    const/4 v0, 0x0

    .line 2024
    .local v0, "cameraIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2025
    .local v1, "idCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v2, v3, :cond_22

    .line 2026
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2027
    .local v3, "status":I
    if-eqz v3, :cond_1f

    if-ne v3, v4, :cond_1d

    .line 2028
    goto :goto_1f

    .line 2029
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 2025
    .end local v3    # "status":I
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2031
    .end local v2    # "i":I
    :cond_22
    new-array v0, v1, [Ljava/lang/String;

    .line 2032
    const/4 v1, 0x0

    .line 2033
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_26
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 2034
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2035
    .restart local v3    # "status":I
    if-eqz v3, :cond_4b

    if-ne v3, v4, :cond_3f

    .line 2036
    goto :goto_4b

    .line 2037
    :cond_3f
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v1

    .line 2038
    add-int/lit8 v1, v1, 0x1

    .line 2033
    .end local v3    # "status":I
    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2040
    .end local v2    # "i":I
    :cond_4e
    return-object v0
.end method

.method private blacklist extractConcurrentCameraIdListLocked()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2044
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2045
    .local v0, "concurrentCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 2046
    .local v2, "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2047
    .local v3, "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2051
    .local v5, "cameraId":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2052
    .local v6, "status":Ljava/lang/Integer;
    if-nez v6, :cond_37

    .line 2054
    goto :goto_20

    .line 2056
    :cond_37
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_20

    .line 2057
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_45

    .line 2058
    goto :goto_20

    .line 2060
    :cond_45
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2061
    .end local v5    # "cameraId":Ljava/lang/String;
    .end local v6    # "status":Ljava/lang/Integer;
    goto :goto_20

    .line 2062
    :cond_49
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2063
    .end local v2    # "cameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "extractedCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_b

    .line 2064
    :cond_4d
    return-object v0
.end method

.method public static greylist-max-o get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .registers 1

    .line 1923
    sget-object v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    return-object v0
.end method

.method private greylist-max-o handleRecoverableSetupErrors(Landroid/os/ServiceSpecificException;)V
    .registers 4
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 2405
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v0, :pswitch_data_16

    .line 2410
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2407
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    nop

    .line 2412
    return-void

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_b
    .end packed-switch
.end method

.method private greylist-max-o isAvailable(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2415
    packed-switch p1, :pswitch_data_8

    .line 2419
    const/4 v0, 0x0

    return v0

    .line 2417
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$postSemSingleUpdate$3(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;I)V
    .registers 3
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 3079
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceRawStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchStrengthLevelUpdate$2(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 3
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 2582
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchStrengthLevelChanged(Ljava/lang/String;I)V

    .line 2583
    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$0(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V
    .registers 5
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 2552
    const-string v0, "CameraManagerGlobal"

    const-string/jumbo v1, "onTorchModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeChanged(Ljava/lang/String;Z)V

    .line 2555
    return-void
.end method

.method static synthetic blacklist lambda$postSingleTorchUpdate$1(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p1, "id"    # Ljava/lang/String;

    .line 2566
    const-string v0, "CameraManagerGlobal"

    const-string/jumbo v1, "onTorchModeUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager$TorchCallback;->onTorchModeUnavailable(Ljava/lang/String;)V

    .line 2568
    return-void
.end method

.method private blacklist onCameraClosedLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2972
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2974
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2975
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_24

    .line 2976
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 2977
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2979
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v3, v2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 2975
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2981
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method private blacklist onCameraDeviceStateChangedLocked(Landroid/hardware/camera2/CameraManager$CameraDeviceState;Ljava/lang/String;)V
    .registers 10
    .param p1, "state"    # Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    .param p2, "id"    # Ljava/lang/String;

    .line 2994
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 2995
    .local v0, "oldState":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    const-string v1, "CameraManagerGlobal"

    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2996
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "CameraDevice %s state changed to (%s), which is what it already was, skip callback"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    return-void

    .line 3002
    :cond_29
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3003
    .local v2, "semCallbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v2, :cond_48

    .line 3004
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 3005
    .local v4, "executor":Ljava/util/concurrent/Executor;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 3006
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    invoke-direct {p0, v5, v4, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 3003
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 3012
    .end local v2    # "semCallbackCount":I
    .end local v3    # "i":I
    :cond_48
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3013
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4f
    if-ge v3, v2, :cond_71

    .line 3014
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 3015
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3017
    .local v5, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    iget-boolean v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v6, :cond_6e

    .line 3018
    const-string/jumbo v6, "onCameraDeviceStateChangedLocked: post device state update"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-direct {p0, v5, v4, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 3013
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 3023
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_71
    return-void
.end method

.method private blacklist onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2938
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2940
    .local v0, "oldApk":Ljava/lang/String;
    if-eqz v0, :cond_54

    .line 2941
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "onCameraOpened was previously called for "

    const-string v3, "CameraManagerGlobal"

    if-eqz v1, :cond_30

    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now again called for the same package name, so no new client visible update will be sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    return-void

    .line 2948
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and is now called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without onCameraClosed being called first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    :cond_54
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2956
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5b
    if-ge v2, v1, :cond_73

    .line 2957
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2958
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2960
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 2962
    .end local v2    # "i":I
    :cond_73
    return-void
.end method

.method private blacklist onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "physicalId"    # Ljava/lang/String;

    .line 2721
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CameraManagerGlobal"

    const/4 v3, 0x1

    if-nez v0, :cond_22

    .line 2722
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v3

    const/4 v1, 0x2

    .line 2724
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2722
    const-string v1, "Ignoring invalid device %s physical device %s status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    return-void

    .line 2729
    :cond_22
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    .line 2730
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_94

    .line 2736
    :cond_45
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2737
    .local v0, "unavailablePhysicalDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 2738
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 2739
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 2740
    :cond_5d
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 2741
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 2742
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2756
    :goto_6c
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2757
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_73
    if-ge v2, v1, :cond_92

    .line 2758
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2759
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2761
    .local v10, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    move-object v4, p0

    move-object v5, v10

    move-object v6, v3

    move-object v7, p2

    move-object v8, p3

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2757
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v10    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 2763
    .end local v2    # "i":I
    :cond_92
    return-void

    .line 2753
    .end local v1    # "callbackCount":I
    :cond_93
    return-void

    .line 2731
    .end local v0    # "unavailablePhysicalDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_94
    :goto_94
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "Camera %s is not available. Ignore physical camera status change"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    return-void
.end method

.method private greylist-max-o onStatusChangedLocked(ILjava/lang/String;)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 2639
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validStatus(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2640
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2641
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2640
    const-string v1, "Ignoring invalid device %s status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    return-void

    .line 2646
    :cond_1f
    if-nez p1, :cond_2f

    .line 2647
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2648
    .local v0, "oldStatus":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 2650
    .end local v0    # "oldStatus":Ljava/lang/Integer;
    :cond_2f
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2651
    .restart local v0    # "oldStatus":Ljava/lang/Integer;
    if-nez v0, :cond_47

    .line 2652
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2656
    :cond_47
    :goto_47
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_50

    .line 2662
    return-void

    .line 2667
    :cond_50
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2668
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v1, :cond_73

    .line 2669
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2670
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2672
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    iget-boolean v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v5, :cond_70

    .line 2673
    invoke-direct {p0, v4, v3, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2668
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 2692
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_73
    if-eqz v0, :cond_84

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-ne v1, v2, :cond_84

    .line 2701
    return-void

    .line 2704
    :cond_84
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2705
    .restart local v1    # "callbackCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8b
    if-ge v2, v1, :cond_aa

    .line 2706
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2707
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2709
    .local v10, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, v10

    move-object v6, v3

    move-object v7, p2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2705
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v10    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 2711
    .end local v2    # "i":I
    :cond_aa
    return-void
.end method

.method private greylist-max-o onTorchStatusChangedLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 2779
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->validTorchStatus(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2780
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2781
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2780
    const-string v1, "Ignoring invalid device %s torch status 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    return-void

    .line 2785
    :cond_1f
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2786
    .local v0, "oldStatus":Ljava/lang/Integer;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_34

    .line 2792
    return-void

    .line 2795
    :cond_34
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2796
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    if-ge v2, v1, :cond_53

    .line 2797
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2798
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2799
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v4, v3, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2796
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 2801
    .end local v2    # "i":I
    :cond_53
    return-void
.end method

.method private blacklist onTorchStrengthLevelChangedLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 2811
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2812
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 2813
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 2814
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2815
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    invoke-direct {p0, v3, v2, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2812
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2817
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method private blacklist postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cameraId"    # Ljava/lang/String;
    .param p4, "state"    # Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3087
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3089
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$CameraDeviceState;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3129
    nop

    .line 3130
    return-void

    .line 3128
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3129
    throw v2
.end method

.method private blacklist postSemSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 3077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3079
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3081
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    nop

    .line 3083
    return-void

    .line 3081
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    throw v2
.end method

.method private blacklist postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2450
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2459
    nop

    .line 2460
    return-void

    .line 2458
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2459
    throw v2
.end method

.method private blacklist postSingleCameraClosedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;

    .line 2480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2482
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;

    invoke-direct {v2, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2491
    nop

    .line 2492
    return-void

    .line 2490
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2491
    throw v2
.end method

.method private blacklist postSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cameraId"    # Ljava/lang/String;
    .param p4, "state"    # Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3061
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3063
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;

    invoke-direct {v2, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$8;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3072
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3073
    nop

    .line 3074
    return-void

    .line 3072
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3073
    throw v2
.end method

.method private blacklist postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "packageId"    # Ljava/lang/String;

    .line 2464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2466
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;

    invoke-direct {v2, p0, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$4;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2475
    nop

    .line 2476
    return-void

    .line 2474
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2475
    throw v2
.end method

.method private blacklist postSingleTorchStrengthLevelUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "newStrengthLevel"    # I

    .line 2579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2581
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 2585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2586
    nop

    .line 2587
    return-void

    .line 2585
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2586
    throw v2
.end method

.method private greylist-max-o postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 2544
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "postSingleTorchUpdate device: camera id %s status %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    packed-switch p4, :pswitch_data_4a

    .line 2562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    goto :goto_37

    .line 2548
    .end local v0    # "ident":J
    :pswitch_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2550
    .restart local v0    # "ident":J
    :try_start_25
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p3, p4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_32

    .line 2557
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2558
    nop

    .line 2560
    .end local v0    # "ident":J
    goto :goto_43

    .line 2557
    .restart local v0    # "ident":J
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2558
    throw v2

    .line 2564
    :goto_37
    :try_start_37
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_44

    .line 2570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    nop

    .line 2575
    .end local v0    # "ident":J
    :goto_43
    return-void

    .line 2570
    .restart local v0    # "ident":J
    :catchall_44
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    throw v2

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private blacklist postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "physicalId"    # Ljava/lang/String;
    .param p5, "status"    # I

    .line 2497
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_11

    if-eqz p1, :cond_11

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2498
    return-void

    .line 2500
    :cond_11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 2501
    invoke-static {p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2500
    const-string/jumbo v1, "postSingleUpdate device: camera id %s status %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    invoke-direct {p0, p5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2507
    .local v0, "ident":J
    :try_start_34
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$6;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$6;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_41

    .line 2519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2520
    nop

    .line 2521
    .end local v0    # "ident":J
    goto :goto_56

    .line 2519
    .restart local v0    # "ident":J
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2520
    throw v2

    .line 2522
    .end local v0    # "ident":J
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2524
    .restart local v0    # "ident":J
    :try_start_4a
    new-instance v2, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$7;

    invoke-direct {v2, p0, p4, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$7;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_57

    .line 2536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2537
    nop

    .line 2539
    .end local v0    # "ident":J
    :goto_56
    return-void

    .line 2536
    .restart local v0    # "ident":J
    :catchall_57
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2537
    throw v2
.end method

.method private greylist-max-o scheduleCameraServiceReconnectionLocked()V
    .registers 6

    .line 3138
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3140
    return-void

    .line 3149
    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_27
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_19 .. :try_end_27} :catch_28

    .line 3179
    goto :goto_41

    .line 3177
    :catch_28
    move-exception v0

    .line 3178
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule camera service re-connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_41
    return-void
.end method

.method private static blacklist sortCameraIds([Ljava/lang/String;)V
    .registers 2
    .param p0, "cameraIds"    # [Ljava/lang/String;

    .line 2070
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2099
    return-void
.end method

.method private greylist-max-o updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
    .registers 15
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 2595
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2596
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    .line 2597
    .local v8, "status":Ljava/lang/Integer;
    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2599
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v2, :cond_31

    .line 2600
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2605
    :cond_31
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 2606
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mUnavailablePhysicalDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/ArrayList;

    .line 2607
    .local v9, "unavailableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_50
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 2608
    .local v11, "unavailableId":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v11

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2610
    .end local v11    # "unavailableId":Ljava/lang/String;
    goto :goto_50

    .line 2594
    .end local v1    # "id":Ljava/lang/String;
    .end local v8    # "status":Ljava/lang/Integer;
    .end local v9    # "unavailableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2615
    .end local v0    # "i":I
    :cond_6a
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v0, :cond_95

    .line 2616
    const-string v0, "CameraManagerGlobal"

    const-string/jumbo v1, "updateCallbackLocked: post device state update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_77
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_95

    .line 2619
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2620
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 2621
    .local v2, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 2618
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 2626
    .end local v0    # "i":I
    :cond_95
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_96
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_b4

    .line 2627
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2628
    .restart local v1    # "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mOpenedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2629
    .local v2, "clientPackageId":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraOpenedUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "clientPackageId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 2631
    .end local v0    # "i":I
    :cond_b4
    return-void
.end method

.method private blacklist updateSemCameraDeviceStateCallbackLocked(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3052
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 3053
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3054
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3055
    .local v2, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V

    .line 3052
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3057
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private greylist-max-o updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2767
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2768
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2769
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleTorchUpdate(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 2766
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2771
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method private greylist-max-o validStatus(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2424
    packed-switch p1, :pswitch_data_8

    .line 2431
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 2429
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch -0x2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o validTorchStatus(I)Z
    .registers 3
    .param p1, "status"    # I

    .line 2436
    packed-switch p1, :pswitch_data_8

    .line 2442
    const/4 v0, 0x0

    return v0

    .line 2440
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1928
    return-object p0
.end method

.method public whitelist binderDied()V
    .registers 10

    .line 3190
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3192
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 3194
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    .line 3201
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    const/4 v2, 0x0

    if-ltz v1, :cond_2c

    .line 3202
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3203
    .local v3, "cameraId":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 3205
    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    if-eqz v2, :cond_29

    .line 3206
    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Ljava/lang/String;)V

    .line 3201
    .end local v3    # "cameraId":Ljava/lang/String;
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 3209
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2d
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 3210
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3211
    .restart local v3    # "cameraId":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 3209
    .end local v3    # "cameraId":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 3215
    .end local v1    # "i":I
    :cond_43
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_44
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_6c

    .line 3216
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3217
    .restart local v3    # "cameraId":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraDeviceStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    .line 3218
    .local v4, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    new-instance v5, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v6, v4, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    const/4 v7, 0x3

    const-string v8, "android.system"

    invoke-direct {v5, v6, v7, v8, v2}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v5, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraDeviceStateChangedLocked(Landroid/hardware/camera2/CameraManager$CameraDeviceState;Ljava/lang/String;)V

    .line 3215
    .end local v3    # "cameraId":Ljava/lang/String;
    .end local v4    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 3221
    .end local v1    # "i":I
    :cond_6c
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3223
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3224
    monitor-exit v0

    .line 3225
    return-void

    .line 3224
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public blacklist cameraIdHasConcurrentStreamsLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2313
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2319
    return v1

    .line 2321
    :cond_a
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 2322
    .local v2, "comb":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2323
    const/4 v0, 0x1

    return v0

    .line 2325
    .end local v2    # "comb":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_24
    goto :goto_10

    .line 2326
    :cond_25
    return v1
.end method

.method public greylist-max-o getCameraIdList()[Ljava/lang/String;
    .registers 9

    .line 2217
    const/4 v0, 0x0

    .line 2218
    .local v0, "cameraIds":[Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2220
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2221
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2222
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_3d

    .line 2223
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2225
    const/4 v1, 0x0

    .line 2226
    .local v1, "publicIdCount":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    const/16 v5, 0x14

    if-ge v4, v2, :cond_25

    aget-object v6, v0, v4

    .line 2227
    .local v6, "cameraId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, v5, :cond_22

    .line 2228
    add-int/lit8 v1, v1, 0x1

    .line 2226
    .end local v6    # "cameraId":Ljava/lang/String;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 2231
    :cond_25
    new-array v2, v1, [Ljava/lang/String;

    .line 2232
    .local v2, "publicCameraIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2233
    array-length v4, v0

    :goto_29
    if-ge v3, v4, :cond_3b

    aget-object v6, v0, v3

    .line 2234
    .restart local v6    # "cameraId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, v5, :cond_38

    .line 2235
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "publicIdCount":I
    .local v7, "publicIdCount":I
    aput-object v6, v2, v1

    move v1, v7

    .line 2233
    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v7    # "publicIdCount":I
    .restart local v1    # "publicIdCount":I
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 2238
    :cond_3b
    move-object v0, v2

    .line 2240
    return-object v0

    .line 2222
    .end local v1    # "publicIdCount":I
    .end local v2    # "publicCameraIds":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .registers 11

    .line 2111
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2112
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 2116
    :cond_8
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V

    .line 2147
    .local v0, "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    const/4 v2, 0x0

    .line 2148
    .local v2, "cameraIds":[Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2149
    :try_start_11
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_ae

    .line 2163
    :try_start_14
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v4, v0}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v4

    .line 2164
    .local v4, "cameraStatuses":[Landroid/hardware/CameraStatus;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v5, v0}, Landroid/hardware/ICameraService;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 2165
    array-length v5, v4

    move v6, v1

    :goto_21
    if-ge v6, v5, :cond_2f

    aget-object v7, v4, v6

    .line 2166
    .local v7, "c":Landroid/hardware/CameraStatus;
    iget v8, v7, Landroid/hardware/CameraStatus;->status:I

    iget-object v9, v7, Landroid/hardware/CameraStatus;->cameraId:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2165
    .end local v7    # "c":Landroid/hardware/CameraStatus;
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 2168
    :cond_2f
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2169
    .local v5, "deviceCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    .local v6, "deviceIdsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2175
    .local v8, "deviceCameraId":Ljava/lang/String;
    invoke-static {v4, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraStatusesContains([Landroid/hardware/CameraStatus;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_53

    .line 2176
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2178
    .end local v8    # "deviceCameraId":Ljava/lang/String;
    :cond_53
    goto :goto_3e

    .line 2179
    :cond_54
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_58
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2180
    .local v8, "id":Ljava/lang/String;
    invoke-direct {p0, v1, v8}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2181
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchStatus:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_6c} :catch_a5
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_6c} :catch_6f
    .catchall {:try_start_14 .. :try_end_6c} :catchall_ae

    .line 2182
    nop

    .end local v8    # "id":Ljava/lang/String;
    goto :goto_58

    .line 2189
    .end local v5    # "deviceCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "deviceIdsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6e
    goto :goto_70

    .line 2187
    .end local v4    # "cameraStatuses":[Landroid/hardware/CameraStatus;
    :catch_6f
    move-exception v4

    .line 2190
    :goto_70
    :try_start_70
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractCameraIdListLocked()[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2191
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_ae

    .line 2192
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V

    .line 2194
    const/4 v3, 0x0

    .line 2195
    .local v3, "publicIdCount":I
    array-length v4, v2

    move v5, v1

    :goto_7c
    const/16 v6, 0x14

    if-ge v5, v4, :cond_8d

    aget-object v7, v2, v5

    .line 2196
    .local v7, "cameraId":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v8, v6, :cond_8a

    .line 2197
    add-int/lit8 v3, v3, 0x1

    .line 2195
    .end local v7    # "cameraId":Ljava/lang/String;
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 2200
    :cond_8d
    new-array v4, v3, [Ljava/lang/String;

    .line 2201
    .local v4, "publicCameraIds":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2202
    array-length v5, v2

    :goto_91
    if-ge v1, v5, :cond_a3

    aget-object v7, v2, v1

    .line 2203
    .restart local v7    # "cameraId":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v8, v6, :cond_a0

    .line 2204
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "publicIdCount":I
    .local v8, "publicIdCount":I
    aput-object v7, v4, v3

    move v3, v8

    .line 2202
    .end local v7    # "cameraId":Ljava/lang/String;
    .end local v8    # "publicIdCount":I
    .restart local v3    # "publicIdCount":I
    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 2207
    :cond_a3
    move-object v1, v4

    .line 2209
    .end local v2    # "cameraIds":[Ljava/lang/String;
    .local v1, "cameraIds":[Ljava/lang/String;
    return-object v1

    .line 2183
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v3    # "publicIdCount":I
    .end local v4    # "publicCameraIds":[Ljava/lang/String;
    .restart local v2    # "cameraIds":[Ljava/lang/String;
    :catch_a5
    move-exception v1

    .line 2185
    .local v1, "e":Landroid/os/ServiceSpecificException;
    :try_start_a6
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to register a camera service listener"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .end local v2    # "cameraIds":[Ljava/lang/String;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    throw v4

    .line 2191
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local v0    # "testListener":Landroid/hardware/ICameraServiceListener$Stub;
    .restart local v2    # "cameraIds":[Ljava/lang/String;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    :catchall_ae
    move-exception v1

    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_ae

    throw v1
.end method

.method public greylist-max-o getCameraService()Landroid/hardware/ICameraService;
    .registers 4

    .line 1939
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1940
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 1941
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v1, :cond_15

    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_15

    .line 1942
    const-string v1, "CameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_15
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 1945
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist getConcurrentCameraIds()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2244
    const/4 v0, 0x0

    .line 2245
    .local v0, "concurrentStreamingCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2247
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2248
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->extractConcurrentCameraIdListLocked()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 2249
    monitor-exit v1

    .line 2251
    return-object v0

    .line 2249
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public blacklist getTorchStrengthLevel(Ljava/lang/String;)I
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2380
    const/4 v0, 0x0

    .line 2381
    .local v0, "torchStrength":I
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2382
    if-eqz p1, :cond_2d

    .line 2386
    :try_start_6
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_2b

    .line 2387
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_23

    .line 2393
    :try_start_d
    invoke-interface {v2, p1}, Landroid/hardware/ICameraService;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v3
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_11} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_13
    .catchall {:try_start_d .. :try_end_11} :catchall_2b

    move v0, v3

    .line 2399
    :goto_12
    goto :goto_21

    .line 2396
    :catch_13
    move-exception v4

    .line 2397
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_14
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable."

    invoke-direct {v5, v3, v6}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 2394
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_1c
    move-exception v3

    .line 2395
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_12

    .line 2400
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    :goto_21
    monitor-exit v1

    .line 2401
    return v0

    .line 2388
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :cond_23
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 2400
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catchall_2b
    move-exception v2

    goto :goto_35

    .line 2383
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cameraId was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "torchStrength":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v2

    .line 2400
    .restart local v0    # "torchStrength":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_2b

    throw v2
.end method

.method public blacklist isConcurrentSessionConfigurationSupported(Ljava/util/Map;I)Z
    .registers 14
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2258
    .local p1, "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    if-eqz p1, :cond_88

    .line 2262
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 2263
    .local v0, "size":I
    if-eqz v0, :cond_80

    .line 2267
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2270
    const/4 v2, 0x0

    .line 2271
    .local v2, "subsetFound":Z
    :try_start_c
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mConcurrentCameraIdCombinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 2272
    .local v4, "combination":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 2273
    const/4 v2, 0x1

    .line 2275
    .end local v4    # "combination":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_29
    goto :goto_12

    .line 2276
    :cond_2a
    const/4 v3, 0x0

    if-nez v2, :cond_36

    .line 2277
    const-string v4, "CameraManagerGlobal"

    const-string v5, "isConcurrentSessionConfigurationSupported called with a subset ofcamera ids not returned by getConcurrentCameraIds"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    monitor-exit v1

    return v3

    .line 2281
    :cond_36
    new-array v4, v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2283
    .local v4, "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    const/4 v5, 0x0

    .line 2285
    .local v5, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2286
    .local v7, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    new-instance v8, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 2287
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v8, v9, v10}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V

    aput-object v8, v4, v5
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_7d

    .line 2288
    nop

    .end local v7    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    add-int/lit8 v5, v5, 0x1

    .line 2289
    goto :goto_41

    .line 2291
    :cond_64
    :try_start_64
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v6, v4, p2}, Landroid/hardware/ICameraService;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z

    move-result v3
    :try_end_6a
    .catch Landroid/os/ServiceSpecificException; {:try_start_64 .. :try_end_6a} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6a} :catch_6c
    .catchall {:try_start_64 .. :try_end_6a} :catchall_7d

    :try_start_6a
    monitor-exit v1

    return v3

    .line 2295
    :catch_6c
    move-exception v3

    .line 2297
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v6, Landroid/hardware/camera2/CameraAccessException;

    const/4 v7, 0x2

    const-string v8, "Camera service is currently unavailable"

    invoke-direct {v6, v7, v8, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .end local p2    # "targetSdkVersion":I
    throw v6

    .line 2293
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "size":I
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraIdsAndSessionConfigurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    .restart local p2    # "targetSdkVersion":I
    :catch_76
    move-exception v6

    .line 2294
    .local v6, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 2299
    .end local v6    # "e":Landroid/os/ServiceSpecificException;
    nop

    .line 2300
    .end local v2    # "subsetFound":Z
    .end local v4    # "cameraIdsAndConfigs":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v5    # "i":I
    monitor-exit v1

    .line 2302
    return v3

    .line 2300
    :catchall_7d
    move-exception v2

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_6a .. :try_end_7f} :catchall_7d

    throw v2

    .line 2264
    :cond_80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "camera id and session combination is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2259
    .end local v0    # "size":I
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraIdsAndSessionConfigurations was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic blacklist lambda$scheduleCameraServiceReconnectionLocked$4$android-hardware-camera2-CameraManager$CameraManagerGlobal()V
    .registers 7

    .line 3150
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 3151
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_11

    .line 3152
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3156
    :try_start_9
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3157
    monitor-exit v1

    goto :goto_49

    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v2

    .line 3160
    :cond_11
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3162
    :try_start_14
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3163
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_3d

    .line 3164
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 3165
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3166
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 3167
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3a} :catch_40
    .catchall {:try_start_14 .. :try_end_3a} :catchall_3e

    .line 3163
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 3172
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_3d
    goto :goto_48

    .line 3173
    :catchall_3e
    move-exception v2

    goto :goto_4a

    .line 3170
    :catch_40
    move-exception v2

    .line 3171
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v3, "CameraManagerGlobal"

    const-string v4, "Camera service is currently unavailable"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_48
    monitor-exit v1

    .line 3176
    :goto_49
    return-void

    .line 3173
    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_3e

    throw v2
.end method

.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 6

    .line 2919
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2920
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2921
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 2922
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 2923
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2925
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v4, v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2921
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2927
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_22
    monitor-exit v0

    .line 2928
    return-void

    .line 2927
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 2966
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2967
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraClosedLocked(Ljava/lang/String;)V

    .line 2968
    monitor-exit v0

    .line 2969
    return-void

    .line 2968
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I
    .param p6, "userId"    # I

    .line 2986
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2987
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    invoke-direct {v1, p2, p3, p4, p6}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;-><init>(IILjava/lang/String;I)V

    .line 2988
    .local v1, "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    const-string v2, "CameraManagerGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " API Level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "User Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    invoke-direct {p0, v1, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraDeviceStateChangedLocked(Landroid/hardware/camera2/CameraManager$CameraDeviceState;Ljava/lang/String;)V

    .line 2990
    .end local v1    # "state":Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    monitor-exit v0

    .line 2991
    return-void

    .line 2990
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2932
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2933
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onCameraOpenedLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    monitor-exit v0

    .line 2935
    return-void

    .line 2934
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2897
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2898
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onPhysicalCameraStatusChangedLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 2899
    monitor-exit v0

    .line 2900
    return-void

    .line 2899
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public greylist-max-o onStatusChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2889
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2890
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 2891
    monitor-exit v0

    .line 2892
    return-void

    .line 2891
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public greylist-max-o onTorchStatusChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2904
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2905
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStatusChangedLocked(ILjava/lang/String;)V

    .line 2906
    monitor-exit v0

    .line 2907
    return-void

    .line 2906
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2912
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2913
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->onTorchStrengthLevelChangedLocked(Ljava/lang/String;I)V

    .line 2914
    monitor-exit v0

    .line 2915
    return-void

    .line 2914
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "hasOpenCloseListenerPermission"    # Z

    .line 2830
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2833
    :try_start_3
    iput-boolean p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mHasOpenCloseListenerPermission:Z

    .line 2834
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2836
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 2838
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_15

    .line 2839
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    .line 2843
    :cond_15
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1c

    .line 2844
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2846
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1c
    monitor-exit v0

    .line 2847
    return-void

    .line 2846
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 3026
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3027
    :try_start_3
    const-string v1, "CameraManagerGlobal"

    const-string/jumbo v2, "registerSemCameraDeviceStateCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 3031
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 3033
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_1b

    .line 3034
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateSemCameraDeviceStateCallbackLocked(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 3038
    :cond_1b
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_22

    .line 3039
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 3041
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_22
    monitor-exit v0

    .line 3042
    return-void

    .line 3041
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public greylist-max-o registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 2862
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2863
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->connectCameraServiceLocked()V

    .line 2865
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 2867
    .local v1, "oldExecutor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_13

    .line 2868
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->updateTorchCallbackLocked(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 2872
    :cond_13
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCameraService:Landroid/hardware/ICameraService;

    if-nez v2, :cond_1a

    .line 2873
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V

    .line 2875
    .end local v1    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1a
    monitor-exit v0

    .line 2876
    return-void

    .line 2875
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o setTorchMode(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2330
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2332
    if-eqz p1, :cond_2c

    .line 2336
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2a

    .line 2337
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_22

    .line 2343
    :try_start_c
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v3}, Landroid/hardware/ICameraService;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_11} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_2a

    .line 2349
    :goto_11
    goto :goto_20

    .line 2346
    :catch_12
    move-exception v3

    .line 2347
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_13
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v4

    .line 2344
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :catch_1b
    move-exception v2

    .line 2345
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_11

    .line 2350
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :goto_20
    monitor-exit v0

    .line 2351
    return-void

    .line 2338
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_22
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable"

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v3

    .line 2350
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :catchall_2a
    move-exception v1

    goto :goto_34

    .line 2333
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "enabled":Z
    throw v1

    .line 2350
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_2a

    throw v1
.end method

.method public blacklist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 2355
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2357
    if-eqz p1, :cond_2c

    .line 2361
    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2a

    .line 2362
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x2

    if-eqz v1, :cond_22

    .line 2368
    :try_start_c
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchClientBinder:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v3}, Landroid/hardware/ICameraService;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_11} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_2a

    .line 2375
    :goto_11
    goto :goto_20

    .line 2372
    :catch_12
    move-exception v3

    .line 2373
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_13
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable."

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v4

    .line 2370
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :catch_1b
    move-exception v2

    .line 2371
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    goto :goto_11

    .line 2376
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :goto_20
    monitor-exit v0

    .line 2377
    return-void

    .line 2363
    .restart local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_22
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "Camera service is currently unavailable."

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v3

    .line 2376
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :catchall_2a
    move-exception v1

    goto :goto_34

    .line 2358
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId was null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "torchStrength":I
    throw v1

    .line 2376
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "torchStrength":I
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_2a

    throw v1
.end method

.method public greylist-max-o unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 2856
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2857
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2858
    monitor-exit v0

    .line 2859
    return-void

    .line 2858
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 3045
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3046
    :try_start_3
    const-string v1, "CameraManagerGlobal"

    const-string/jumbo v2, "unregisterSemCameraDeviceStateCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mSemCameraDeviceStateCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    monitor-exit v0

    .line 3049
    return-void

    .line 3048
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 2879
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2880
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->mTorchCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    monitor-exit v0

    .line 2882
    return-void

    .line 2881
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
