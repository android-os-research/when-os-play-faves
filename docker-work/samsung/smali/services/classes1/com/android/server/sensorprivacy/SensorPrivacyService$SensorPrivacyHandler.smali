.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;
.super Landroid/os/Handler;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SensorPrivacyHandler"
.end annotation


# static fields
.field public static final MESSAGE_SENSOR_PRIVACY_CHANGED:I = 0x1


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeathRecipients:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListenerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/ISensorPrivacyListener;",
            "Landroid/util/Pair<",
            "Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mListenerLock:Ljava/lang/Object;

.field public final mListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListenerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mToggleSensorListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListenerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static synthetic $r8$lambda$kK7dGjbzXkmNXdpnyFoFCdyQRPw(Ljava/lang/Object;Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->lambda$removeSuppressPackageReminderToken$0(Ljava/lang/Object;Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 4

    .line 1453
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 1454
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1440
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 1442
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1445
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 1455
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 1456
    iput-object p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$removeSuppressPackageReminderToken$0(Ljava/lang/Object;Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 3

    .line 1538
    check-cast p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$mremoveSuppressPackageReminderToken(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 6

    .line 1543
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 1545
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {v2, v3, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_33

    .line 1547
    :cond_1c
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    .line 1548
    new-instance v1, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 1550
    :goto_33
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4

    .line 1460
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1461
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1462
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1464
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public addToggleListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4

    .line 1468
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1472
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public handleSensorPrivacyChanged(IIIZ)V
    .registers 12

    .line 1506
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    move-result-object v0

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->-$$Nest$mdispatch(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;IIZ)V

    .line 1508
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v0

    if-ne p1, v0, :cond_24

    .line 1509
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    .line 1510
    invoke-virtual {v1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v1

    .line 1509
    invoke-static {v0, p3, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetGlobalRestriction(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IZ)V

    .line 1513
    :cond_24
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v0

    if-eq p1, v0, :cond_2d

    return-void

    .line 1516
    :cond_2d
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1518
    :try_start_30
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v0, :cond_66

    .line 1520
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/hardware/ISensorPrivacyListener;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_6d

    .line 1523
    :try_start_41
    invoke-interface {v2, p2, p3, p4}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(IIZ)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_6d

    goto :goto_63

    :catch_45
    move-exception v3

    .line 1525
    :try_start_46
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught an exception notifying listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_6d

    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1530
    :cond_66
    :try_start_66
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1532
    monitor-exit p1

    return-void

    :catchall_6d
    move-exception p2

    .line 1530
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1531
    throw p2

    :catchall_74
    move-exception p0

    .line 1532
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_74

    throw p0
.end method

.method public handleSensorPrivacyChanged(Z)V
    .registers 9

    .line 1492
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_37

    .line 1494
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/hardware/ISensorPrivacyListener;

    const/4 v3, -0x1

    .line 1496
    :try_start_12
    invoke-interface {v2, v3, v3, p1}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(IIZ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_34

    :catch_16
    move-exception v3

    .line 1498
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught an exception notifying listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1501
    :cond_37
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 5

    .line 1554
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_b

    return-void

    .line 1558
    :cond_b
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_24

    .line 1560
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->destroy()V

    return-void

    .line 1564
    :cond_24
    new-instance v2, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1566
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4

    .line 1476
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1477
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1478
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1480
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1537
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeToggleListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4

    .line 1484
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1485
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1488
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method
