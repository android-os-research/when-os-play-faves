.class public Lcom/android/server/location/nsflp/NSLocationMonitor$2;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNullBinding is called, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NSLocationMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmContext(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const-string v0, "NSLocationMonitor"

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitorService is connected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$sfgetMONITOR_SERVICE_LOCK()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 421
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p2}, Landroid/location/INSLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationManager;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fputmMonitorService(Lcom/android/server/location/nsflp/NSLocationMonitor;Landroid/location/INSLocationManager;)V

    .line 422
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmMonitorService(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/location/INSLocationManager;

    move-result-object p2

    if-nez p2, :cond_35

    const-string p0, "NSLocationMonitor"

    const-string p2, "Failed to stub interface to MonitorService"

    .line 423
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_d1

    return-void

    .line 428
    :cond_35
    :try_start_35
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmMonitorService(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/location/INSLocationManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-interface {p2, v0}, Landroid/location/INSLocationManager;->setCallback(Landroid/location/INSLocationCallback;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_40} :catch_41
    .catchall {:try_start_35 .. :try_end_40} :catchall_d1

    goto :goto_48

    :catch_41
    :try_start_41
    const-string p2, "NSLocationMonitor"

    const-string v0, "Failed to set callback"

    .line 430
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_48
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmMonitorService(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/location/INSLocationManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onServiceConnected(Landroid/location/INSLocationManager;)V

    .line 434
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_d1

    .line 436
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$msendConnectionInfo(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 439
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->sendSupportedBdmsgFormat()V

    .line 442
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object p2

    monitor-enter p2

    .line 443
    :try_start_6d
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmRegisteredNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Z

    move-result p1
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_ce

    if-nez p1, :cond_c7

    .line 445
    :try_start_75
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmContext(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmContext(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmContext(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v3

    .line 446
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 445
    invoke-virtual {p1, v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 447
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fputmRegisteredNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;Z)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_ab} :catch_ac
    .catchall {:try_start_75 .. :try_end_ab} :catchall_ce

    goto :goto_c7

    :catch_ac
    move-exception p1

    :try_start_ad
    const-string v0, "NSLocationMonitor"

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register notification listener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_c7
    :goto_c7
    monitor-exit p2
    :try_end_c8
    .catchall {:try_start_ad .. :try_end_c8} :catchall_ce

    .line 455
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$minitNetworkStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    return-void

    :catchall_ce
    move-exception p0

    .line 452
    :try_start_cf
    monitor-exit p2
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw p0

    :catchall_d1
    move-exception p0

    .line 434
    :try_start_d2
    monitor-exit p1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7

    const-string v0, "NSLocationMonitor"

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitorService has unexpectedly disconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$sfgetMONITOR_SERVICE_LOCK()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 463
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fputmMonitorService(Lcom/android/server/location/nsflp/NSLocationMonitor;Landroid/location/INSLocationManager;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onServiceDisconnected()V

    .line 465
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_96

    .line 466
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmDisconnectedHistory(Lcom/android/server/location/nsflp/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->noteGpsOp(II)V

    .line 472
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    monitor-enter v0

    .line 473
    :try_start_4a
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmRegisteredNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Z

    move-result p1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_93

    if-eqz p1, :cond_7c

    .line 475
    :try_start_52
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 476
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fputmRegisteredNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;Z)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_60} :catch_61
    .catchall {:try_start_52 .. :try_end_60} :catchall_93

    goto :goto_7c

    :catch_61
    move-exception p1

    :try_start_62
    const-string v2, "NSLocationMonitor"

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unregister notification listener, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_7c
    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_93

    .line 484
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$mdeinitNetworkStateListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 486
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->SEVICE_DISCONNECT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    invoke-static {p1, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$mdisableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor;Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    .line 488
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSLocationProviderHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V

    return-void

    :catchall_93
    move-exception p0

    .line 481
    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0

    :catchall_96
    move-exception p0

    .line 465
    :try_start_97
    monitor-exit p1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0
.end method
