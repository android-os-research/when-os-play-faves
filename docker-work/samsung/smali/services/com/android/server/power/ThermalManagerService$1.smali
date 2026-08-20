.class public Lcom/android/server/power/ThermalManagerService$1;
.super Landroid/os/IThermalService$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/IThermalService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 505
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 508
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    :try_start_15
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p1}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_103

    .line 511
    :try_start_1c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsStatusOverride: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;)Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "ThermalEventListeners:"

    .line 512
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p3

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p3, "ThermalStatusListeners:"

    .line 514
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p3

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 516
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thermal Status: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmStatus(Lcom/android/server/power/ThermalManagerService;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "Cached temperatures:"

    .line 517
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "\t"

    .line 518
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmTemperatureMap(Lcom/android/server/power/ThermalManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 519
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL Ready: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_fb

    const-string p3, "HAL connection:"

    .line 521
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object p3

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p3, "Current temperatures from HAL:"

    .line 523
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "\t"

    .line 524
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x0

    .line 525
    invoke-virtual {v2, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v2

    .line 524
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    const-string p3, "Current cooling devices from HAL:"

    .line 526
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "\t"

    .line 527
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    .line 528
    invoke-virtual {v2, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object v2

    .line 527
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    const-string p3, "Temperature static thresholds from HAL:"

    .line 529
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "\t"

    .line 530
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    .line 531
    invoke-virtual {v2, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object v2

    .line 530
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 533
    :cond_fb
    monitor-exit p1
    :try_end_fc
    .catchall {:try_start_1c .. :try_end_fc} :catchall_100

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_100
    move-exception p0

    .line 533
    :try_start_101
    monitor-exit p1
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    :try_start_102
    throw p0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_103

    :catchall_103
    move-exception p0

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw p0
.end method

.method public final dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 498
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_25

    .line 499
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_25
    return-void
.end method

.method public getCurrentCoolingDevices()[Landroid/os/CoolingDevice;
    .registers 5

    .line 455
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_23

    new-array p0, v3, [Landroid/os/CoolingDevice;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_3d

    .line 466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 462
    :cond_23
    :try_start_23
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object p0

    .line 464
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/CoolingDevice;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_3d

    .line 466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    throw p0
.end method

.method public getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;
    .registers 5

    .line 472
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 476
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/os/CoolingDevice;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_3e

    .line 483
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 479
    :cond_23
    :try_start_23
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object p0

    .line 481
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/CoolingDevice;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3e

    .line 483
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 484
    throw p0
.end method

.method public getCurrentTemperatures()[Landroid/os/Temperature;
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 384
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_23

    new-array p0, v3, [Landroid/os/Temperature;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_3d

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 387
    :cond_23
    :try_start_23
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object p0

    .line 389
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Temperature;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Temperature;
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_3d

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    throw p0
.end method

.method public getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 401
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/os/Temperature;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_3e

    .line 407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 404
    :cond_23
    :try_start_23
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object p0

    .line 405
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Temperature;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Temperature;
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3e

    .line 407
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    throw p0
.end method

.method public getCurrentThermalStatus()I
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 444
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1b

    .line 446
    :try_start_b
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmStatus(Lcom/android/server/power/ThermalManagerService;)I

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_16

    .line 448
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    throw p0

    :catchall_1b
    move-exception p0

    .line 450
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getThermalHeadroom(I)F
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 493
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result p0

    return p0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 548
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$1;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_10

    .line 549
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Only shell is allowed to call thermalservice shell commands"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 552
    :cond_10
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 7

    .line 327
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 330
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_39

    .line 332
    :try_start_17
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v1}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_34

    if-nez v1, :cond_29

    const/4 p0, 0x0

    .line 339
    :try_start_24
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_39

    return p0

    .line 336
    :cond_29
    :try_start_29
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$mpostEventListenerCurrentTemperatures(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    const/4 p0, 0x1

    .line 339
    :try_start_2f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    throw p0

    :catchall_39
    move-exception p0

    .line 341
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    .registers 8

    .line 347
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 350
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_43

    .line 352
    :try_start_17
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v3
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_3e

    if-nez v3, :cond_2e

    const/4 p0, 0x0

    .line 359
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_43

    return p0

    .line 356
    :cond_2e
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, p1, v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$mpostEventListenerCurrentTemperatures(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3e

    const/4 p0, 0x1

    .line 359
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_3e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    throw p0

    :catchall_43
    move-exception p0

    .line 361
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 6

    .line 413
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 415
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2d

    .line 417
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_28

    if-nez v3, :cond_1d

    const/4 p0, 0x0

    .line 424
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_2d

    return p0

    .line 421
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$mpostStatusListener(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_28

    const/4 p0, 0x1

    .line 424
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    throw p0

    :catchall_2d
    move-exception p0

    .line 426
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 369
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_2b

    .line 371
    :try_start_17
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_26

    .line 373
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    throw p0

    :catchall_2b
    move-exception p0

    .line 375
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 432
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1f

    .line 434
    :try_start_b
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 436
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    throw p0

    :catchall_1f
    move-exception p0

    .line 438
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw p0
.end method
