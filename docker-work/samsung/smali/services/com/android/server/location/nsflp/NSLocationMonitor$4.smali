.class public Lcom/android/server/location/nsflp/NSLocationMonitor$4;
.super Landroid/service/notification/NotificationListenerService;
.source "NSLocationMonitor.java"


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

    .line 594
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    monitor-enter v0

    .line 638
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmRegisteredNotificationListener(Lcom/android/server/location/nsflp/NSLocationMonitor;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string p0, "NSLocationMonitor"

    const-string v1, "Notification listener is disconnected so do not set the trim"

    .line 639
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit v0

    return-void

    :cond_18
    const/4 v1, 0x1

    .line 643
    invoke-virtual {p0, v1}, Landroid/service/notification/NotificationListenerService;->setOnNotificationPostedTrim(I)V

    .line 644
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 645
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_3e

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onListenerConnected for NotificationListener"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmForegroundNotificationList(Lcom/android/server/location/nsflp/NSLocationMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 650
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_LISTENER_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void

    :catchall_3e
    move-exception p0

    .line 645
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public onListenerDisconnected()V
    .registers 3

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onListenerDisconnected for NotificationListener"

    .line 655
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmForegroundNotificationList(Lcom/android/server/location/nsflp/NSLocationMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 658
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_LISTENER_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    if-eqz p1, :cond_38

    .line 598
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 599
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v1, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$misForegroundService(Lcom/android/server/location/nsflp/NSLocationMonitor;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_38

    .line 602
    :cond_11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 606
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v1, v0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$maddForegroundNotification(Lcom/android/server/location/nsflp/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 607
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 608
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_POSTED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    nop

    :cond_38
    :goto_38
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    if-eqz p1, :cond_38

    .line 618
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 619
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v1, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$misForegroundService(Lcom/android/server/location/nsflp/NSLocationMonitor;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_38

    .line 622
    :cond_11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 626
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {v1, v0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$mremoveForegroundNotification(Lcom/android/server/location/nsflp/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 627
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 628
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_REMOVED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    nop

    :cond_38
    :goto_38
    return-void
.end method
