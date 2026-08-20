.class final Landroid/hardware/camera2/CameraManager$FoldStateListener;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FoldStateListener"
.end annotation


# instance fields
.field private blacklist mDeviceStateListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/camera2/CameraManager$DeviceStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFoldedDeviceState:Z

.field private final blacklist mFoldedDeviceStates:[I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/HashSet;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    .line 225
    return-void
.end method

.method private declared-synchronized blacklist handleStateChange(I)V
    .registers 7
    .param p1, "state"    # I

    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 230
    .local v0, "folded":Z
    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceState:Z

    .line 231
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 232
    .local v1, "invalidListeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 233
    .local v3, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    .line 234
    .local v4, "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    if-eqz v4, :cond_2c

    .line 235
    invoke-interface {v4, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    goto :goto_2f

    .line 237
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$FoldStateListener;
    :cond_2c
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v3    # "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    .end local v4    # "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :goto_2f
    goto :goto_14

    .line 240
    :cond_30
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 241
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 243
    :cond_3b
    monitor-exit p0

    return-void

    .line 227
    .end local v0    # "folded":Z
    .end local v1    # "invalidListeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    .end local p1    # "state":I
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist addDeviceStateListener(Landroid/hardware/camera2/CameraManager$DeviceStateListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    monitor-enter p0

    .line 246
    :try_start_1
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceState:Z

    invoke-interface {p1, v0}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 249
    .local v0, "invalidListeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 250
    .local v2, "oldListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    .line 251
    .local v3, "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    if-nez v3, :cond_28

    .line 252
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v2    # "oldListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;"
    .end local v3    # "callback":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    .end local p0    # "this":Landroid/hardware/camera2/CameraManager$FoldStateListener;
    :cond_28
    goto :goto_11

    .line 255
    :cond_29
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 256
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 259
    :cond_34
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mDeviceStateListeners:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 260
    monitor-exit p0

    return-void

    .line 245
    .end local v0    # "invalidListeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/WeakReference<Landroid/hardware/camera2/CameraManager$DeviceStateListener;>;>;"
    .end local p1    # "listener":Landroid/hardware/camera2/CameraManager$DeviceStateListener;
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final blacklist onBaseStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 264
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 265
    return-void
.end method

.method public final blacklist onStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 269
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    .line 270
    return-void
.end method
