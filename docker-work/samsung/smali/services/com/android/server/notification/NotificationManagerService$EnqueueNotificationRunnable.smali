.class public Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnqueueNotificationRunnable"
.end annotation


# instance fields
.field public final enqueueElapsedTimeMs:J

.field public final isAppForeground:Z

.field public final r:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V
    .registers 7

    .line 8668
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8669
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 8670
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8671
    iput-boolean p4, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->isAppForeground:Z

    .line 8672
    iput-wide p5, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->enqueueElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 8678
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8679
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8680
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_32

    move v6, v8

    goto :goto_33

    :cond_32
    move v6, v7

    .line 8679
    :goto_33
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v0

    if-nez v0, :cond_3a

    return-void

    .line 8684
    :cond_3a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8685
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8687
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8688
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 8686
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 8689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8690
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_91

    .line 8691
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 8692
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v12, v5, v2

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4, p0}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 8693
    monitor-exit v0

    return-void

    .line 8696
    :cond_91
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8698
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8699
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 8697
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_d4

    .line 8701
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8702
    invoke-virtual {v1, p0}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 8703
    monitor-exit v0

    return-void

    .line 8706
    :cond_d4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8707
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 8710
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v1, :cond_f1

    const-string v1, "NotificationService"

    const-string v2, "Doesn\'t turn on screen for notification."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8711
    :cond_f1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_104

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_104

    .line 8712
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8714
    :cond_104
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string/jumbo v3, "prevent full-screen wakelock in EnqueueNotificationRunnable"

    .line 8715
    invoke-virtual {v2, v8, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    .line 8716
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 8719
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 8720
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_148

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnqueueNotificationRunnable.run for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8721
    :cond_148
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_15d

    .line 8724
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 8727
    :cond_15d
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    .line 8728
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v4

    .line 8729
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 8730
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8731
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 8732
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 8735
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-boolean v13, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->isAppForeground:Z

    invoke-static {v11, v12, v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateNotificationBubbleFlags(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V

    .line 8739
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v11, v12, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleGroupedNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 8742
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v11

    if-eqz v11, :cond_1a2

    invoke-virtual {v10}, Landroid/app/Notification;->isGroupChild()Z

    move-result v11

    if-eqz v11, :cond_1a2

    .line 8743
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v12

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v5, v12, v1}, Lcom/android/server/notification/SnoozeHelper;->repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V

    .line 8753
    :cond_1a2
    sget-boolean v1, Lcom/android/server/notification/NmRune;->NM_ETC_LOG_DEBUG:Z

    if-eqz v1, :cond_1a7

    goto :goto_1b8

    :cond_1a7
    const-string v1, "com.android.providers.downloads"

    .line 8754
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b8

    const-string v1, "DownloadManager"

    const/4 v11, 0x2

    .line 8755
    invoke-static {v1, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d9

    :cond_1b8
    :goto_1b8
    if-eqz v2, :cond_1bb

    goto :goto_1bc

    :cond_1bb
    move v8, v7

    .line 8761
    :goto_1bc
    iget-object v1, v10, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1c3

    const-string v1, "NULL"

    goto :goto_1c7

    :cond_1c3
    invoke-virtual {v1}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c7
    move-object v11, v1

    .line 8762
    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 8763
    invoke-virtual {v10}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v12

    move v1, v3

    move v2, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v9

    move v6, v7

    move-object v7, v12

    move-object v9, v11

    .line 8762
    invoke-static/range {v1 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 8768
    :cond_1d9
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_222

    invoke-virtual {v10}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v1

    if-nez v1, :cond_222

    .line 8769
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->-$$Nest$monNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V

    .line 8770
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8771
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8772
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    iget-wide v7, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->enqueueElapsedTimeMs:J

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IJ)V

    const-wide/16 v2, 0xc8

    .line 8770
    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_24b

    .line 8775
    :cond_222
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 8776
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    iget-wide v7, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->enqueueElapsedTimeMs:J

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 8775
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8778
    :goto_24b
    monitor-exit v0

    return-void

    :catchall_24d
    move-exception p0

    monitor-exit v0
    :try_end_24f
    .catchall {:try_start_3f .. :try_end_24f} :catchall_24d

    throw p0
.end method
