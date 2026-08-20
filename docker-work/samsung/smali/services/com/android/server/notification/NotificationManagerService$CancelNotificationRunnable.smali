.class public Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
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
    name = "CancelNotificationRunnable"
.end annotation


# instance fields
.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCancellationElapsedTimeMs:J

.field public final mCount:I

.field public final mId:I

.field public final mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final mMustHaveFlags:I

.field public final mMustNotHaveFlags:I

.field public final mPkg:Ljava/lang/String;

.field public final mRank:I

.field public final mReason:I

.field public final mSendDelete:Z

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$gX0CbWustzm_mz1YYQF5D4h-1ug(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->lambda$run$0(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V
    .registers 20

    move-object v0, p0

    move-object v1, p1

    .line 8516
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p2

    .line 8517
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    move v1, p3

    .line 8518
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    move-object v1, p4

    .line 8519
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    move-object v1, p5

    .line 8520
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    move v1, p6

    .line 8521
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    move v1, p7

    .line 8522
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    move v1, p8

    .line 8523
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    move v1, p9

    .line 8524
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    move v1, p10

    .line 8525
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    move v1, p11

    .line 8526
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    move v1, p12

    .line 8527
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    move/from16 v1, p13

    .line 8528
    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    move-object/from16 v1, p14

    .line 8529
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-wide/from16 v1, p15

    .line 8530
    iput-wide v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    return-void
.end method

.method private synthetic lambda$run$0(I)Z
    .registers 6

    .line 8573
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_16

    if-eq v0, v1, :cond_16

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    goto :goto_16

    :cond_d
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1b

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1b

    return v2

    :cond_16
    :goto_16
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1b

    return v2

    .line 8586
    :cond_1b
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_21

    return v2

    :cond_21
    return v1
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 8535
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 8536
    :goto_c
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 8537
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 8541
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 8543
    :try_start_29
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v12

    if-eqz v12, :cond_103

    .line 8549
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v13, 0x1

    if-ne v1, v13, :cond_47

    .line 8550
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 8553
    :cond_47
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_57

    .line 8554
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v1

    if-nez v1, :cond_67

    :cond_57
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    if-ne v1, v13, :cond_8d

    .line 8555
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 8556
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v1

    if-eqz v1, :cond_8d

    :cond_67
    const/4 v0, 0x0

    .line 8558
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 8559
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v0

    :cond_7e
    or-int/lit8 v0, v0, 0x2

    .line 8562
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/android/server/notification/NotificationDelegate;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 8563
    monitor-exit v11

    return-void

    .line 8565
    :cond_8d
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_9a

    .line 8566
    monitor-exit v11

    return-void

    .line 8568
    :cond_9a
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_a7

    .line 8569
    monitor-exit v11

    return-void

    .line 8572
    :cond_a7
    new-instance v14, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v14, p0}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 8593
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveFromNotificationListsLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    .line 8594
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    iget-wide v9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    move-object v2, v12

    move-object v8, v0

    invoke-static/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    .line 8598
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget-wide v8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    move-object v2, v12

    move-object v5, v0

    invoke-static/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZIJ)V

    .line 8601
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget-wide v9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    move-object v2, v12

    move-object v5, v0

    move-object v7, v14

    invoke-static/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    .line 8604
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 8605
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v0

    if-eqz v0, :cond_120

    .line 8606
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object p0

    invoke-virtual {v0, v12, v13, p0}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    goto :goto_120

    .line 8612
    :cond_103
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_120

    .line 8613
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 8615
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 8619
    :cond_120
    :goto_120
    monitor-exit v11

    return-void

    :catchall_122
    move-exception p0

    monitor-exit v11
    :try_end_124
    .catchall {:try_start_29 .. :try_end_124} :catchall_122

    throw p0
.end method
