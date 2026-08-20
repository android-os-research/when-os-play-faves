.class public Lcom/android/server/notification/NotificationManagerService$16;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/ShortcutHelper$ShortcutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 8116
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutRemoved(Ljava/lang/String;)V
    .registers 12

    .line 8120
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8121
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 8122
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, v2

    .line 8123
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_72

    if-eqz v1, :cond_2f

    .line 8124
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    .line 8125
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move v7, v0

    .line 8127
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8128
    :try_start_36
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eqz v6, :cond_6d

    .line 8130
    invoke-virtual {v6, v2}, Lcom/android/server/notification/NotificationRecord;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 8132
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 8133
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object p1

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8135
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 8136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 8133
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8138
    :cond_6d
    monitor-exit v1

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_36 .. :try_end_71} :catchall_6f

    throw p0

    :catchall_72
    move-exception p0

    .line 8123
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method
