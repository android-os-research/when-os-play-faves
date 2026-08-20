.class public final Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
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
    name = "WriteBufferRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 413
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmHistoryDir(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->run(JLandroid/util/AtomicFile;)V

    return-void
.end method

.method public run(JLandroid/util/AtomicFile;)V
    .registers 8

    .line 417
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 418
    :try_start_7
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "NotiHistoryDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriteBufferRunnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_57

    .line 421
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v2, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-static {v1, p3, v2}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    .line 422
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 423
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    new-instance v2, Landroid/app/NotificationHistory;

    invoke-direct {v2}, Landroid/app/NotificationHistory;-><init>()V

    iput-object v2, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 425
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p3

    const/4 v1, 0x1

    invoke-static {p0, p3, p1, p2, v1}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mscheduleDeletion(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/io/File;JI)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4c} :catch_4d
    .catchall {:try_start_2b .. :try_end_4c} :catchall_57

    goto :goto_55

    :catch_4d
    move-exception p0

    :try_start_4e
    const-string p1, "NotiHistoryDatabase"

    const-string p2, "Failed to write buffer to disk. not flushing buffer"

    .line 427
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    :goto_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_57

    throw p0
.end method
