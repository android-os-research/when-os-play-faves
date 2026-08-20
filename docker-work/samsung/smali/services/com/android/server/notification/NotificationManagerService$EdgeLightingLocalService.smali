.class public final Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;
.super Lcom/samsung/android/edge/EdgeManagerInternal;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EdgeLightingLocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 13795
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/samsung/android/edge/EdgeManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public hideForNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5

    .line 13809
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 13810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 13812
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 13814
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13815
    throw p0
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .registers 5

    .line 13852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13854
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForWakeLock(Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 13856
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13857
    throw p0
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13885
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 13886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 13888
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 13890
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13891
    throw p0
.end method

.method public setSuppressed(I)V
    .registers 2

    .line 13915
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->setSuppressed(I)V

    return-void
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .registers 5

    .line 13799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13801
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 13803
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13804
    throw p0
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .registers 4

    .line 13896
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13898
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForResumedActivity(Landroid/content/ComponentName;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 13900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13901
    throw p0
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 13820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 13821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 13823
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForToast(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 13825
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13826
    throw p0
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .registers 5

    .line 13842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13844
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLock(Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 13846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13847
    throw p0
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 13874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 13876
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 13878
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13879
    throw p0
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .registers 5

    .line 13832
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13834
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeUp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 13836
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13837
    throw p0
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 13862
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13864
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 13866
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13867
    throw p0
.end method

.method public statusBarDisabled(II)V
    .registers 5

    .line 13906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13908
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EdgeLightingLocalService;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->statusBarDisabled(II)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 13910
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13911
    throw p0
.end method
