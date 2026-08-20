.class public final Lcom/android/server/am/ActiveServices$ServiceMap;
.super Landroid/os/Handler;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceMap"
.end annotation


# static fields
.field public static final MSG_BG_START_TIMEOUT:I = 0x1

.field public static final MSG_ENSURE_NOT_START_BG:I = 0x3

.field public static final MSG_UPDATE_FOREGROUND_APPS:I = 0x2


# instance fields
.field public final mActiveForegroundApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ActiveServices$ActiveForegroundApp;",
            ">;"
        }
    .end annotation
.end field

.field public mActiveForegroundAppsChanged:Z

.field public final mDelayedStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mServicesByInstanceName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mServicesByIntent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mStartingBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V
    .registers 4

    .line 508
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 509
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 485
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 486
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    .line 488
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 501
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 510
    iput p3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    return-void
.end method


# virtual methods
.method public ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_2f

    .line 534
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-$$Nest$sfgetDEBUG_DELAYED_STARTS()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer background starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x3

    .line 536
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 538
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    :cond_2f
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 541
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-$$Nest$sfgetDEBUG_DELAYED_STARTS()Z

    move-result p0

    if-eqz p0, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No longer delaying start: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 515
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_37

    .line 525
    :cond_c
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 526
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 527
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_37

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 522
    :cond_22
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActiveServices;->updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V

    goto :goto_37

    .line 517
    :cond_28
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_2d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 518
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 519
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_37
    return-void

    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public rescheduleDelayedStartsLocked()V
    .registers 16

    const/4 v0, 0x1

    .line 546
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 548
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    const-string v6, "ActivityManager"

    if-ge v5, v3, :cond_41

    .line 549
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 550
    iget-wide v8, v7, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v8, v8, v1

    if-gtz v8, :cond_3f

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waited long enough for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    :cond_3f
    add-int/2addr v5, v0

    goto :goto_10

    .line 557
    :catch_41
    :cond_41
    :goto_41
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_105

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 558
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget v5, v5, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v3, v5, :cond_105

    .line 559
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    .line 560
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-$$Nest$sfgetDEBUG_DELAYED_STARTS()Z

    move-result v3

    if-eqz v3, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REM FR DELAY LIST (exec next): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_78
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-$$Nest$sfgetDEBUG_DELAYED_SERVICE()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 563
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b9

    const-string v3, "Remaining delayed list:"

    .line 564
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 565
    :goto_8c
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b9

    .line 566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 570
    :cond_b9
    iput-boolean v4, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 571
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_ed

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** NO PENDING STARTS! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " startReq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " delayedStop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 576
    :cond_ed
    :try_start_ed
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 577
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget v13, v3, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    iget-boolean v14, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move-object v8, p0

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZIZ)Landroid/content/ComponentName;
    :try_end_103
    .catch Landroid/os/TransactionTooLargeException; {:try_start_ed .. :try_end_103} :catch_41

    goto/16 :goto_41

    .line 584
    :cond_105
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_145

    .line 585
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 586
    iget-wide v4, v3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v7, v4, v1

    if-lez v7, :cond_11c

    move-wide v1, v4

    .line 587
    :cond_11c
    invoke-static {}, Lcom/android/server/am/ActiveServices;->-$$Nest$sfgetDEBUG_DELAYED_SERVICE()Z

    move-result v4

    if-eqz v4, :cond_13e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top bg start is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", can delay others up to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_13e
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 590
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 592
    :cond_145
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget v2, v1, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v0, v2, :cond_158

    .line 593
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->backgroundServicesFinishedLocked(I)V

    :cond_158
    return-void
.end method
