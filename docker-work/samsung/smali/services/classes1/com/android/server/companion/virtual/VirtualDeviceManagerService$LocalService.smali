.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;
.super Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    return-void
.end method


# virtual methods
.method public getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
    .registers 2

    .line 397
    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getBaseVirtualDisplayFlags()I

    move-result p0

    return p0
.end method

.method public isAppOwnerOfAnyVirtualDevice(I)Z
    .registers 7

    .line 402
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 403
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_2d

    .line 405
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getOwnerUid()I

    move-result v4

    if-ne v4, p1, :cond_2a

    .line 406
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 409
    :cond_2d
    monitor-exit v0

    return v2

    :catchall_2f
    move-exception p0

    .line 410
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public isAppRunningOnAnyVirtualDevice(I)Z
    .registers 7

    .line 415
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_2d

    .line 418
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isAppRunningOnVirtualDevice(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 419
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 422
    :cond_2d
    monitor-exit v0

    return v2

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public isDisplayOwnedByAnyVirtualDevice(I)Z
    .registers 7

    .line 428
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 429
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_2d

    .line 431
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isDisplayOwnedByVirtualDevice(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 432
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 435
    :cond_2d
    monitor-exit v0

    return v2

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public isValidVirtualDevice(Landroid/companion/virtual/IVirtualDevice;)Z
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 384
    :try_start_7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$misValidVirtualDeviceLocked(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/virtual/IVirtualDevice;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 385
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 3

    .line 390
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 391
    :try_start_7
    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onVirtualDisplayRemovedLocked(I)V

    .line 392
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
