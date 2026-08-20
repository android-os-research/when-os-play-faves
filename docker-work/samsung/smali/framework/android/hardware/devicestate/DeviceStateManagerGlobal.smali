.class public final Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;,
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;,
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;,
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;
    }
.end annotation


# static fields
.field public static final blacklist FOLD_STATE_CLOSE:I = 0x0

.field public static final blacklist FOLD_STATE_HALF_OPEN:I = 0x2

.field public static final blacklist FOLD_STATE_OPEN:I = 0x3

.field public static final blacklist FOLD_STATE_TENT:I = 0x1

.field public static final blacklist FOLD_STATE_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceStateManager"

.field private static blacklist sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# instance fields
.field private blacklist mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

.field private final blacklist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

.field private final blacklist mFoldStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestActive(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleRequestActive(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestCanceled(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleRequestCanceled(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/devicestate/IDeviceStateManager;)V
    .registers 3
    .param p1, "deviceStateManager"    # Landroid/hardware/devicestate/IDeviceStateManager;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mFoldStateListeners:Ljava/util/ArrayList;

    .line 96
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    .line 97
    return-void
.end method

.method private blacklist findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I
    .registers 4
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 245
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->-$$Nest$fgetmDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 246
    return v0

    .line 244
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findFoldStateListenersLocked(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 468
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mFoldStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 469
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 470
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mFoldStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;

    iget-object v2, v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 471
    return v1

    .line 469
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 474
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;
    .registers 4
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 255
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->-$$Nest$fgetmRequest(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 256
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    return-object v1

    .line 254
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .registers 4

    .line 67
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    if-nez v1, :cond_1a

    .line 69
    const-string v1, "device_state"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 70
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_1a

    .line 71
    new-instance v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 72
    invoke-static {v1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;-><init>(Landroid/hardware/devicestate/IDeviceStateManager;)V

    sput-object v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 75
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1a
    sget-object v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static blacklist getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 478
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 479
    .local v0, "looper":Landroid/os/Looper;
    :goto_b
    if-nez v0, :cond_11

    .line 480
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 482
    :cond_11
    if-eqz v0, :cond_14

    .line 485
    return-object v0

    .line 483
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get Looper for the UI thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist handleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 266
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 268
    .local v1, "oldInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;>;"
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_6a

    .line 278
    if-nez v1, :cond_13

    const/4 v0, -0x1

    goto :goto_17

    :cond_13
    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceStateInfo;->diff(Landroid/hardware/devicestate/DeviceStateInfo;)I

    move-result v0

    .line 279
    .local v0, "diff":I
    :goto_17
    and-int/lit8 v3, v0, 0x1

    if-lez v3, :cond_37

    .line 280
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 282
    iget-object v4, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iget-object v5, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 284
    .local v4, "supportedStates":[I
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    invoke-virtual {v5, v4}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifySupportedStatesChanged([I)V

    .line 280
    .end local v4    # "supportedStates":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 287
    .end local v3    # "i":I
    :cond_37
    and-int/lit8 v3, v0, 0x2

    if-lez v3, :cond_50

    .line 288
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 289
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget v5, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    invoke-virtual {v4, v5}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyBaseStateChanged(I)V

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 292
    .end local v3    # "i":I
    :cond_50
    and-int/lit8 v3, v0, 0x4

    if-lez v3, :cond_69

    .line 293
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_55
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_69

    .line 294
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget v5, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-virtual {v4, v5}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyStateChanged(I)V

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 297
    .end local v3    # "i":I
    :cond_69
    return-void

    .line 270
    .end local v0    # "diff":I
    .end local v1    # "oldInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;>;"
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method private blacklist handleRequestActive(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 305
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    .line 307
    .local v1, "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 308
    if-eqz v1, :cond_11

    .line 309
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->notifyRequestActive()V

    .line 311
    :cond_11
    return-void

    .line 307
    .end local v1    # "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist handleRequestCanceled(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 319
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    .line 321
    .local v1, "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 322
    if-eqz v1, :cond_11

    .line 323
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->notifyRequestCanceled()V

    .line 325
    :cond_11
    return-void

    .line 321
    .end local v1    # "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist registerCallbackIfNeededLocked()V
    .registers 4

    .line 232
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    if-nez v0, :cond_1a

    .line 233
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback-IA;)V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    .line 235
    :try_start_c
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v2, v0}, Landroid/hardware/devicestate/IDeviceStateManager;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 239
    goto :goto_1a

    .line 236
    :catch_12
    move-exception v0

    .line 237
    .local v0, "ex":Landroid/os/RemoteException;
    iput-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    .line 238
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 241
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public blacklist cancelStateRequest()V
    .registers 4

    .line 170
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 174
    :try_start_6
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->cancelStateRequest()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_e
    .catchall {:try_start_6 .. :try_end_b} :catchall_14

    .line 177
    nop

    .line 178
    :try_start_c
    monitor-exit v0

    .line 179
    return-void

    .line 175
    :catch_e
    move-exception v1

    .line 176
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    throw v2

    .line 178
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist getSupportedStates()[I
    .registers 5

    .line 105
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_21

    if-eqz v1, :cond_9

    .line 110
    nop

    .local v1, "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    goto :goto_10

    .line 115
    .end local v1    # "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_1b
    .catchall {:try_start_9 .. :try_end_f} :catchall_21

    .line 118
    .restart local v1    # "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    nop

    .line 121
    :goto_10
    :try_start_10
    iget-object v2, v1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iget-object v3, v1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 116
    .end local v1    # "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    :catch_1b
    move-exception v1

    .line 117
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    throw v2

    .line 122
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 8
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 189
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I

    move-result v1

    .line 191
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 193
    monitor-exit v0

    return-void

    .line 196
    :cond_c
    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 201
    new-instance v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    invoke-direct {v2, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 202
    .local v2, "wrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    if-eqz v3, :cond_39

    .line 206
    iget-object v3, v3, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    iget-object v4, v4, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 208
    .local v3, "supportedStates":[I
    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifySupportedStatesChanged([I)V

    .line 209
    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    iget v4, v4, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    invoke-virtual {v2, v4}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyBaseStateChanged(I)V

    .line 210
    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    iget v4, v4, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-virtual {v2, v4}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyStateChanged(I)V

    .line 212
    .end local v1    # "index":I
    .end local v2    # "wrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;
    .end local v3    # "supportedStates":[I
    :cond_39
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public blacklist registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/view/SemWindowManager$FoldStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 440
    const-string v0, "DeviceStateManager"

    const-string v1, "This device does not support FoldStateListener!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method

.method public blacklist requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 9
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 134
    if-nez p3, :cond_d

    if-nez p2, :cond_5

    goto :goto_d

    .line 135
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must be supplied with executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_d
    :goto_d
    if-nez p2, :cond_1a

    if-nez p3, :cond_12

    goto :goto_1a

    .line 137
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must be supplied with callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_1d
    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 143
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 145
    monitor-exit v0

    return-void

    .line 151
    :cond_28
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 152
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    new-instance v3, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-direct {v3, p1, p3, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_52

    .line 155
    :try_start_37
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getState()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getFlags()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Landroid/hardware/devicestate/IDeviceStateManager;->requestState(Landroid/os/IBinder;II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_44} :catch_47
    .catchall {:try_start_37 .. :try_end_44} :catchall_52

    .line 159
    nop

    .line 160
    .end local v1    # "token":Landroid/os/IBinder;
    :try_start_45
    monitor-exit v0

    .line 161
    return-void

    .line 156
    .restart local v1    # "token":Landroid/os/IBinder;
    :catch_47
    move-exception v2

    .line 157
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .end local p1    # "request":Landroid/hardware/devicestate/DeviceStateRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    throw v3

    .line 160
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .restart local p1    # "request":Landroid/hardware/devicestate/DeviceStateRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public blacklist unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 223
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I

    move-result v1

    .line 225
    .local v1, "indexToRemove":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 226
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    .end local v1    # "indexToRemove":I
    :cond_f
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 458
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mFoldStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 459
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findFoldStateListenersLocked(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)I

    move-result v1

    .line 460
    .local v1, "index":I
    if-ltz v1, :cond_19

    .line 461
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mFoldStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 462
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mFoldStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 464
    .end local v1    # "index":I
    :cond_19
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
