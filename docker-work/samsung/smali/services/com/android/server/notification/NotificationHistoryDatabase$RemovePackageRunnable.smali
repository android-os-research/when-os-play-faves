.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;
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
    name = "RemovePackageRunnable"
.end annotation


# instance fields
.field public mPkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V
    .registers 3

    .line 436
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 442
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "NotiHistoryDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemovePackageRunnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1e
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 445
    :try_start_25
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_80

    .line 451
    :try_start_42
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 452
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 453
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 452
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 454
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    .line 455
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5d} :catch_5e
    .catchall {:try_start_42 .. :try_end_5d} :catchall_80

    goto :goto_36

    :catch_5e
    move-exception v3

    :try_start_5f
    const-string v4, "NotiHistoryDatabase"

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on pkg removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 461
    :cond_7e
    monitor-exit v0

    return-void

    :catchall_80
    move-exception p0

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_5f .. :try_end_82} :catchall_80

    throw p0
.end method
