.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoveNotificationRunnable"
.end annotation


# instance fields
.field public mNotificationHistory:Landroid/app/NotificationHistory;

.field public mPkg:Ljava/lang/String;

.field public mPostedTime:J

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V
    .registers 5

    .line 470
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 472
    iput-wide p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 482
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "NotiHistoryDatabase"

    const-string v1, "RemoveNotificationRunnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_d
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 485
    :try_start_14
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    .line 487
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 488
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_7b

    .line 491
    :try_start_33
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_38

    goto :goto_3d

    .line 493
    :cond_38
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 494
    :goto_3d
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 495
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 494
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 496
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 497
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_58} :catch_59
    .catchall {:try_start_33 .. :try_end_58} :catchall_7b

    goto :goto_27

    :catch_59
    move-exception v3

    :try_start_5a
    const-string v4, "NotiHistoryDatabase"

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on notification removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 504
    :cond_79
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public setNotificationHistory(Landroid/app/NotificationHistory;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    return-void
.end method
