.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$FoldStateListener;,
        Landroid/hardware/camera2/CameraManager$DeviceStateListener;,
        Landroid/hardware/camera2/CameraManager$CameraDeviceState;
    }
.end annotation


# static fields
.field private static final greylist-max-o API_VERSION_1:I = 0x1

.field private static final greylist-max-o API_VERSION_2:I = 0x2

.field private static final blacklist CAMERA_OPEN_CLOSE_LISTENER_PERMISSION:Ljava/lang/String; = "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

.field private static final greylist-max-o CAMERA_TYPE_ALL:I = 0x1

.field private static final greylist-max-o CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraManager"

.field public static final blacklist TORCH_STRENGTH_1:I = 0x1

.field public static final blacklist TORCH_STRENGTH_2:I = 0x2

.field public static final blacklist TORCH_STRENGTH_3:I = 0x3

.field public static final blacklist TORCH_STRENGTH_4:I = 0x4

.field public static final blacklist TORCH_STRENGTH_5:I = 0x5

.field public static final blacklist TORCH_STRENGTH_DEFAULT:I = 0x0

.field private static final blacklist TORCH_STRENGTH_MAX:I = 0x5

.field private static final greylist-max-o USE_CALLING_UID:I = -0x1


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mHasOpenCloseListenerPermission:Z

.field private blacklist mHiddenCameraPermittedState:Ljava/lang/Boolean;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 104
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 206
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    .line 180
    monitor-enter v1

    .line 181
    :try_start_11
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 182
    const-string v3, "android.permission.CAMERA_OPEN_CLOSE_LISTENER"

    .line 183
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 185
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_6d

    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 188
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Landroid/hardware/camera2/CameraManager$FoldStateListener;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 192
    :try_start_3f
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 193
    invoke-virtual {v0, v1, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_53} :catch_54

    .line 200
    goto :goto_6c

    .line 194
    :catch_54
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraManager"

    const-string v3, "Failed to register device state listener!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "CameraManager"

    const-string v3, "Device state dependent characteristics updates will not be functional!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 198
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager;->mHandler:Landroid/os/Handler;

    .line 199
    iput-object v2, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    .line 201
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_6c
    return-void

    .line 185
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0
.end method

.method private blacklist getDisplaySize()Landroid/util/Size;
    .registers 9

    .line 622
    const-string v0, "CameraManager"

    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 625
    .local v1, "ret":Landroid/util/Size;
    :try_start_8
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v4, "display"

    .line 626
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 627
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 628
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_32

    .line 629
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 630
    .local v4, "sz":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 631
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 632
    .local v5, "width":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 634
    .local v6, "height":I
    if-le v6, v5, :cond_2a

    .line 635
    move v6, v5

    .line 636
    iget v7, v4, Landroid/graphics/Point;->y:I

    move v5, v7

    .line 639
    :cond_2a
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    move-object v0, v7

    .line 640
    .end local v1    # "ret":Landroid/util/Size;
    .end local v4    # "sz":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .local v0, "ret":Landroid/util/Size;
    move-object v1, v0

    goto :goto_37

    .line 641
    .end local v0    # "ret":Landroid/util/Size;
    .restart local v1    # "ret":Landroid/util/Size;
    :cond_32
    const-string v4, "Invalid default display!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    .line 645
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    :goto_37
    goto :goto_4f

    .line 643
    :catch_38
    move-exception v2

    .line 644
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4f
    return-object v1
.end method

.method private blacklist getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "cameraService"    # Landroid/hardware/ICameraService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/ICameraService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 667
    .local v0, "multiResolutionStreamConfigurations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 669
    .local v1, "multiResolutionStreamSupported":Ljava/lang/Boolean;
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_6c

    .line 677
    :cond_16
    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    .line 678
    .local v2, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 679
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 681
    .local v3, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v3, :cond_33

    .line 682
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_33
    return-object v0

    .line 687
    .end local v3    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_34
    :try_start_34
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 688
    .local v4, "physicalCameraId":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 690
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 689
    invoke-interface {p3, v4, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 691
    .local v5, "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_PHYSICAL_CAMERA_MULTI_RESOLUTION_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 694
    .local v6, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-eqz v6, :cond_5d

    .line 695
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_5d} :catch_5f

    .line 697
    .end local v4    # "physicalCameraId":Ljava/lang/String;
    .end local v5    # "physicalCameraInfo":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_5d
    goto :goto_38

    .line 703
    :cond_5e
    goto :goto_6b

    .line 698
    :catch_5f
    move-exception v3

    .line 699
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/os/ServiceSpecificException;

    const/4 v5, 0x4

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v4, v5, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 702
    .local v4, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 705
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "sse":Landroid/os/ServiceSpecificException;
    :goto_6b
    return-object v0

    .line 670
    .end local v2    # "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6c
    :goto_6c
    return-object v0
.end method

.method private blacklist getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;
    .registers 7
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 830
    .local v0, "physicalIdsToChars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    .line 831
    .local v1, "physicalCameraIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 832
    .local v3, "physicalCameraId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 833
    .local v4, "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .end local v3    # "physicalCameraId":Ljava/lang/String;
    .end local v4    # "physicalChars":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_d

    .line 835
    :cond_21
    return-object v0
.end method

.method public static blacklist isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .registers 3
    .param p0, "cameraId"    # Ljava/lang/String;

    .line 1786
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 1788
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_c

    return v0

    .line 1790
    :cond_c
    invoke-interface {v1, p0}, Landroid/hardware/ICameraService;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    return v0

    .line 1791
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :catch_11
    move-exception v1

    .line 1794
    return v0
.end method

.method private blacklist openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)Landroid/hardware/camera2/CameraDevice;
    .registers 29
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "uid"    # I
    .param p5, "oomScoreOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 864
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 865
    .local v10, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v11, 0x0

    .line 866
    .local v11, "device":Landroid/hardware/camera2/CameraDevice;
    nop

    .line 867
    invoke-direct {v1, v10}, Landroid/hardware/camera2/CameraManager;->getPhysicalIdToCharsMap(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Map;

    move-result-object v12

    .line 868
    .local v12, "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    iget-object v13, v1, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 870
    const/4 v14, 0x0

    .line 871
    .local v14, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_10
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 878
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v9, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v10

    move-object v7, v12

    invoke-direct/range {v2 .. v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;ILandroid/content/Context;)V

    move-object v2, v0

    .line 881
    .local v2, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v16
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_ba

    .line 884
    .local v16, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    const/4 v3, 0x4

    :try_start_2e
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 885
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_5b

    .line 890
    iget-object v4, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 891
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v4, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v19

    iget-object v4, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 892
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 890
    move-object v15, v0

    move-object/from16 v17, p1

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, v4

    invoke-interface/range {v15 .. v22}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v3

    move-object v14, v3

    .line 923
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_5a
    :goto_5a
    goto :goto_ac

    .line 886
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_5b
    new-instance v4, Landroid/os/ServiceSpecificException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "uid":I
    .end local p5    # "oomScoreOffset":I
    throw v4
    :try_end_63
    .catch Landroid/os/ServiceSpecificException; {:try_start_2e .. :try_end_63} :catch_73
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_63} :catch_63
    .catchall {:try_start_2e .. :try_end_63} :catchall_ba

    .line 916
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "uid":I
    .restart local p5    # "oomScoreOffset":I
    :catch_63
    move-exception v0

    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_64
    new-instance v4, Landroid/os/ServiceSpecificException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    .line 921
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 922
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_ac

    .line 893
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    :catch_73
    move-exception v0

    .line 894
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_b2

    .line 896
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v5, 0x6

    const/4 v6, 0x7

    if-eq v4, v6, :cond_99

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_99

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v5, :cond_99

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v3, :cond_99

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v7, 0xa

    if-ne v4, v7, :cond_95

    goto :goto_99

    .line 914
    :cond_95
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 904
    :cond_99
    :goto_99
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 906
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v5, :cond_a8

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v4, v3, :cond_a8

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-ne v3, v6, :cond_5a

    .line 910
    :cond_a8
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 930
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_ac
    invoke-virtual {v2, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 931
    move-object v11, v2

    .line 932
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    monitor-exit v13

    .line 934
    return-object v11

    .line 895
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .restart local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :cond_b2
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Should\'ve gone down the shim path"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "uid":I
    .end local p5    # "oomScoreOffset":I
    throw v3

    .line 932
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v16    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v11    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v12    # "physicalIdsToChars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "uid":I
    .restart local p5    # "oomScoreOffset":I
    :catchall_ba
    move-exception v0

    monitor-exit v13
    :try_end_bc
    .catchall {:try_start_64 .. :try_end_bc} :catchall_ba

    throw v0
.end method

.method public static greylist-max-o throwAsPublicException(Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1729
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_38

    .line 1730
    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 1731
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v1, 0x3

    .line 1732
    .local v1, "reason":I
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_5a

    .line 1756
    :pswitch_d
    const/4 v1, 0x3

    goto :goto_2e

    .line 1746
    :pswitch_f
    const/16 v1, 0x3e8

    .line 1747
    goto :goto_2e

    .line 1743
    :pswitch_12
    const/4 v1, 0x5

    .line 1744
    goto :goto_2e

    .line 1740
    :pswitch_14
    const/4 v1, 0x4

    .line 1741
    goto :goto_2e

    .line 1737
    :pswitch_16
    const/4 v1, 0x1

    .line 1738
    goto :goto_2e

    .line 1734
    :pswitch_18
    const/4 v1, 0x2

    .line 1735
    goto :goto_2e

    .line 1750
    :pswitch_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1752
    :pswitch_24
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1758
    :goto_2e
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1759
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "reason":I
    :cond_38
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_51

    .line 1763
    instance-of v0, p0, Landroid/os/RemoteException;

    if-nez v0, :cond_49

    .line 1766
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_45

    .line 1770
    return-void

    .line 1767
    :cond_45
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    .line 1768
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 1764
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1760
    :cond_51
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1a
        :pswitch_1a
        :pswitch_18
        :pswitch_d
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public whitelist getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-boolean v1, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_e6

    .line 740
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 741
    :try_start_8
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e3

    .line 742
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    const/4 v3, 0x2

    if-eqz v2, :cond_db

    .line 749
    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_4a

    .line 750
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 752
    .local v4, "currentPackage":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    if-nez v5, :cond_2f

    .line 753
    invoke-interface {v2, v4}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    .line 756
    :cond_2f
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mHiddenCameraPermittedState:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_4a

    .line 757
    :cond_38
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown camera ID %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_4a} :catch_c1
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4a} :catch_b8
    .catchall {:try_start_13 .. :try_end_4a} :catchall_e3

    .line 766
    .end local v4    # "currentPackage":Ljava/lang/String;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :cond_4a
    :goto_4a
    nop

    .line 770
    :try_start_4b
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v4

    .line 772
    .local v4, "displaySize":Landroid/util/Size;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 773
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 772
    invoke-interface {v2, p1, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5
    :try_end_5b
    .catch Landroid/os/ServiceSpecificException; {:try_start_4b .. :try_end_5b} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5b} :catch_a5
    .catchall {:try_start_4b .. :try_end_5b} :catchall_e3

    .line 775
    .local v5, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_5b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setCameraId(I)V
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_62} :catch_63
    .catch Landroid/os/ServiceSpecificException; {:try_start_5b .. :try_end_62} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_62} :catch_a5
    .catchall {:try_start_5b .. :try_end_62} :catchall_e3

    .line 778
    goto :goto_82

    .line 776
    :catch_63
    move-exception v6

    .line 777
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_64
    const-string v7, "CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse camera Id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to integer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_82
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->cameraIdHasConcurrentStreamsLocked(Ljava/lang/String;)Z

    move-result v6

    .line 782
    .local v6, "hasConcurrentStreams":Z
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setHasMandatoryConcurrentStreams(Z)V

    .line 783
    invoke-virtual {v5, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setDisplaySize(Landroid/util/Size;)V

    .line 785
    nop

    .line 786
    invoke-direct {p0, p1, v5, v2}, Landroid/hardware/camera2/CameraManager;->getPhysicalCameraMultiResolutionConfigs(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/ICameraService;)Ljava/util/Map;

    move-result-object v7

    .line 787
    .local v7, "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_9e

    .line 788
    invoke-virtual {v5, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V

    .line 791
    :cond_9e
    new-instance v8, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v8, v5}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_a3
    .catch Landroid/os/ServiceSpecificException; {:try_start_64 .. :try_end_a3} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_a3} :catch_a5
    .catchall {:try_start_64 .. :try_end_a3} :catchall_e3

    move-object v0, v8

    goto :goto_b2

    .line 794
    .end local v4    # "displaySize":Landroid/util/Size;
    .end local v5    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v6    # "hasConcurrentStreams":Z
    .end local v7    # "multiResolutionSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :catch_a5
    move-exception v4

    .line 796
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_a6
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v5, v3, v6, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 792
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_ae
    move-exception v3

    .line 793
    .local v3, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 798
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :goto_b2
    nop

    .line 799
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_e3

    .line 800
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraManager;->registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 801
    return-object v0

    .line 763
    .restart local v2    # "cameraService":Landroid/hardware/ICameraService;
    :catch_b8
    move-exception v4

    .line 764
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_b9
    new-instance v5, Landroid/hardware/camera2/CameraAccessException;

    const-string v6, "Camera service is currently unavailable"

    invoke-direct {v5, v3, v6, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v5

    .line 760
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catch_c1
    move-exception v3

    .line 761
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 743
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :cond_db
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .end local p1    # "cameraId":Ljava/lang/String;
    throw v4

    .line 799
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local p0    # "this":Landroid/hardware/camera2/CameraManager;
    .restart local p1    # "cameraId":Ljava/lang/String;
    :catchall_e3
    move-exception v2

    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_b9 .. :try_end_e5} :catchall_e3

    throw v2

    .line 738
    :cond_e6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No cameras available on device"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getCameraExtensionCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 822
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 823
    .local v0, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v1, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-object v1
.end method

.method public whitelist getCameraIdList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 307
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraIdListNoLazy()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConcurrentCameraIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getConcurrentCameraIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTorchStrengthLevel(Ljava/lang/String;)I
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1374
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_d

    .line 1377
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1375
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "internalCamId"    # Ljava/lang/String;
    .param p3, "externalCamId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1829
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_44

    .line 1832
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1833
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_3b

    .line 1837
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1839
    :try_start_11
    new-instance v2, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {v2, p5, p4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;-><init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V

    .line 1841
    .local v2, "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    nop

    .line 1842
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    move-result-object v3

    .line 1843
    .local v3, "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-interface {v0, p1, p2, p3, v3}, Landroid/hardware/ICameraService;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v4

    .line 1845
    .local v4, "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    :try_end_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_22} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_25
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    .end local v2    # "injectionSessionImpl":Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .end local v3    # "cameraInjectionCallback":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v4    # "injectionSession":Landroid/hardware/camera2/ICameraInjectionSession;
    goto :goto_36

    .line 1855
    :catchall_23
    move-exception v2

    goto :goto_39

    .line 1848
    :catch_25
    move-exception v2

    .line 1850
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 1853
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_37

    .line 1846
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    :catch_32
    move-exception v2

    .line 1847
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 1854
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :goto_36
    nop

    .line 1855
    :goto_37
    monitor-exit v1

    .line 1856
    return-void

    .line 1855
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_23

    throw v2

    .line 1834
    :cond_3b
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1830
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isConcurrentSessionConfigurationSupported(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/params/SessionConfiguration;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 412
    .local p1, "cameraIdAndSessionConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;>;"
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 412
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->isConcurrentSessionConfigurationSupported(Ljava/util/Map;I)Z

    move-result v0

    return v0
.end method

.method public whitelist openCamera(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "oomScoreOffset"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1120
    if-eqz p3, :cond_17

    .line 1123
    if-ltz p2, :cond_e

    .line 1127
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V

    .line 1128
    return-void

    .line 1124
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "oomScoreOffset < 0, cannot increase priority of camera client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1019
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 1021
    return-void
.end method

.method public whitelist openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1056
    if-eqz p2, :cond_7

    .line 1059
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 1060
    return-void

    .line 1057
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V
    .registers 11
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1181
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V

    .line 1182
    return-void
.end method

.method public blacklist openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientUid"    # I
    .param p5, "oomScoreOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1151
    if-eqz p1, :cond_1c

    .line 1153
    if-eqz p2, :cond_14

    .line 1156
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_c

    .line 1160
    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;II)Landroid/hardware/camera2/CameraDevice;

    .line 1161
    return-void

    .line 1157
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 446
    if-eqz p1, :cond_53

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "isHiddenIdPermittedPackage":Z
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 449
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 450
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 452
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x1

    const-string v3, "Camera service is currently unavailable"

    const-string v4, "CameraManager"

    if-nez v1, :cond_26

    .line 453
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {p1, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    goto :goto_37

    .line 457
    :cond_26
    :try_start_26
    invoke-static {p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_30

    move v0, v2

    .line 461
    goto :goto_37

    .line 458
    :catch_30
    move-exception v5

    .line 459
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {p1, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 460
    invoke-static {v4, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_37
    invoke-static {p1, v0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAvailabilityCallback: Is device callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v0    # "isHiddenIdPermittedPackage":Z
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_53
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 469
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    .line 468
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V

    .line 470
    return-void
.end method

.method public whitelist registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 487
    if-eqz p1, :cond_5f

    .line 491
    if-eqz p2, :cond_55

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "isHiddenIdPermittedPackage":Z
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 495
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 497
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    const/4 v2, 0x1

    const-string v3, "Camera service is currently unavailable"

    const-string v4, "CameraManager"

    if-nez v1, :cond_28

    .line 498
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {p2, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    goto :goto_39

    .line 502
    :cond_28
    :try_start_28
    invoke-static {p2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/hardware/ICameraService;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_32

    move v0, v2

    .line 506
    goto :goto_39

    .line 503
    :catch_32
    move-exception v5

    .line 504
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {p2, v2}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 505
    invoke-static {v4, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_39
    invoke-static {p2, v0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->-$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAvailabilityCallback: Is device callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "isHiddenIdPermittedPackage":Z
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    :cond_55
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/camera2/CameraManager;->mHasOpenCloseListenerPermission:Z

    invoke-virtual {v0, p2, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Z)V

    .line 515
    return-void

    .line 488
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerDeviceStateListener(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 5
    .param p1, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 282
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getDeviceStateListener()Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    move-result-object v1

    .line 285
    .local v1, "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mFoldStateListener:Landroid/hardware/camera2/CameraManager$FoldStateListener;

    if-eqz v2, :cond_e

    .line 286
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V

    .line 289
    .end local v1    # "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :cond_e
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 603
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 604
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 603
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 605
    return-void
.end method

.method public whitelist registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 552
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    .line 553
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 552
    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 554
    return-void
.end method

.method public whitelist registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 571
    if-eqz p1, :cond_a

    .line 574
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    .line 575
    return-void

    .line 572
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semSetTorchMode(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "strength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetTorchMode: cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    if-eqz p2, :cond_47

    .line 1274
    if-ltz p3, :cond_3f

    const/4 v0, 0x5

    if-gt p3, v0, :cond_3f

    .line 1279
    if-nez p3, :cond_3b

    .line 1281
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 1282
    return-void

    .line 1284
    :cond_3b
    invoke-virtual {p0, p1, p3}, Landroid/hardware/camera2/CameraManager;->turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V

    .line 1285
    return-void

    .line 1275
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strength is out of supported range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 1288
    return-void
.end method

.method public whitelist setTorchMode(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1225
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_c

    .line 1228
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 1229
    return-void

    .line 1226
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;)V
    .registers 12
    .param p1, "targetPackages"    # [Ljava/lang/String;
    .param p2, "targetCameraIds"    # [Ljava/lang/String;
    .param p3, "sourceCameraId"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3268
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_bd

    .line 3272
    if-eqz p1, :cond_b4

    .line 3276
    if-eqz p2, :cond_ab

    .line 3280
    if-eqz p3, :cond_a2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 3284
    if-eqz p4, :cond_9a

    .line 3288
    if-eqz p5, :cond_92

    .line 3292
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_2f

    aget-object v3, p1, v2

    .line 3293
    .local v3, "targetPackage":Ljava/lang/String;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    .line 3292
    .end local v3    # "targetPackage":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3294
    .restart local v3    # "targetPackage":Ljava/lang/String;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetPackages contains empty of null package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3298
    .end local v3    # "targetPackage":Ljava/lang/String;
    :cond_2f
    array-length v0, p2

    :goto_30
    if-ge v1, v0, :cond_57

    aget-object v2, p2, v1

    .line 3299
    .local v2, "targetId":Ljava/lang/String;
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 3303
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 3298
    .end local v2    # "targetId":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 3304
    .restart local v2    # "targetId":Ljava/lang/String;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetCameraIds contains source camera Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3300
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetCameraIds contains empty of null camera Id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3308
    .end local v2    # "targetId":Ljava/lang/String;
    :cond_57
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 3309
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-eqz v0, :cond_89

    .line 3313
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3315
    :try_start_64
    new-instance v2, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {v2, p5, p4}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;-><init>(Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;Ljava/util/concurrent/Executor;)V

    .line 3316
    .local v2, "injectorSessionImpl":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->getCallback()Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

    move-result-object v3

    .line 3317
    .local v3, "deviceInjectorCallback":Landroid/hardware/IDeviceInjectorCallback;
    invoke-interface {v0, p1, p2, p3, v3}, Landroid/hardware/ICameraService;->startDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/hardware/IDeviceInjectorCallback;)V
    :try_end_70
    .catch Landroid/os/ServiceSpecificException; {:try_start_64 .. :try_end_70} :catch_80
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_70} :catch_73
    .catchall {:try_start_64 .. :try_end_70} :catchall_71

    .end local v2    # "injectorSessionImpl":Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
    .end local v3    # "deviceInjectorCallback":Landroid/hardware/IDeviceInjectorCallback;
    goto :goto_84

    .line 3328
    :catchall_71
    move-exception v2

    goto :goto_87

    .line 3323
    :catch_73
    move-exception v2

    .line 3325
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_74
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    const-string v5, "Camera service is currently unavailable"

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 3326
    .local v3, "sse":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_85

    .line 3321
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "sse":Landroid/os/ServiceSpecificException;
    :catch_80
    move-exception v2

    .line 3322
    .local v2, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    .line 3327
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :goto_84
    nop

    .line 3328
    :goto_85
    monitor-exit v1

    .line 3329
    return-void

    .line 3328
    :goto_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_71

    throw v2

    .line 3310
    :cond_89
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 3289
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3285
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3281
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sourceCameraId was null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3277
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetCameraIds was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3273
    :cond_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetPackages was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3269
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "torchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1348
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_c

    .line 1351
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->turnOnTorchWithStrengthLevel(Ljava/lang/String;I)V

    .line 1352
    return-void

    .line 1349
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 526
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 527
    return-void
.end method

.method public whitelist unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 616
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    .line 617
    return-void
.end method

.method public whitelist unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 586
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 587
    return-void
.end method
