.class public Lcom/android/server/notification/NotificationManagerService$13;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerInternal;


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
.method public static synthetic $r8$lambda$BCjqh8RCCVOtoMvS4hTgMbKemyw(Lcom/android/server/notification/NotificationManagerService$13;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$13;->lambda$removeForegroundServiceFlagFromNotification$0(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 7474
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$removeForegroundServiceFlagFromNotification$0(Ljava/lang/String;II)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 7510
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v8

    .line 7512
    :try_start_9
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v1, v7, v9, v10, v2}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I

    move-result v11

    const/16 v1, 0x19

    const/4 v12, 0x0

    if-lt v11, v1, :cond_25

    .line 7515
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v13, v1

    goto :goto_26

    :cond_25
    move v13, v12

    :goto_26
    if-eqz v13, :cond_48

    .line 7521
    :goto_28
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mfindNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_69

    const-string v2, "NotificationService"

    const-string v3, "Remove FGS flag not allow. Removed enqueue"

    .line 7523
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7524
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 7529
    :cond_48
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mfindNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 7531
    :goto_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_69

    .line 7532
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$13;->removeForegroundServiceFlagLocked(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_57

    .line 7537
    :cond_69
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mfindNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v15

    if-eqz v15, :cond_d4

    if-eqz v13, :cond_bf

    const-string v1, "NotificationService"

    .line 7541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove FGS flag not allow. Package has already posted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifications. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7543
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7544
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7545
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x1

    const/16 v19, 0x0

    .line 7546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 7545
    invoke-static/range {v14 .. v21}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    goto :goto_d4

    .line 7548
    :cond_bf
    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationManagerService$13;->removeForegroundServiceFlagLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7549
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 7550
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, v15, v15}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7553
    :cond_d4
    :goto_d4
    monitor-exit v8

    return-void

    :catchall_d6
    move-exception v0

    monitor-exit v8
    :try_end_d8
    .catchall {:try_start_9 .. :try_end_d8} :catchall_d6

    throw v0
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 3

    .line 7584
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    .registers 16

    .line 7497
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    return-void
.end method

.method public enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 18

    move-object v0, p0

    .line 7490
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    return-void
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
    .registers 5

    .line 7478
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 4

    .line 7484
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getGroupForChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 4

    .line 7578
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7579
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public isNotificationShown(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 5

    .line 7502
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public onConversationRemoved(Ljava/lang/String;ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7559
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$monConversationRemovedInternal(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
    .registers 6

    .line 7508
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 7509
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$13;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeForegroundServiceFlagLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 7567
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 7572
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p1, p1, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public sendReviewPermissionsNotification()V
    .registers 5

    .line 7589
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    if-nez v1, :cond_7

    return-void

    .line 7597
    :cond_7
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 7598
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x47

    .line 7599
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7601
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->createReviewPermissionsNotification()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "NotificationService"

    .line 7599
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 7602
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x3

    const-string/jumbo v1, "review_permissions_notification_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
