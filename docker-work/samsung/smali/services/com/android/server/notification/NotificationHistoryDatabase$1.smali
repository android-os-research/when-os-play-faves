.class public Lcom/android/server/notification/NotificationHistoryDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationHistoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$1;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 390
    :cond_7
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetACTION_HISTORY_DELETION()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 392
    :try_start_11
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$1;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_5a

    :try_start_18
    const-string/jumbo v0, "key"

    .line 393
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 394
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 395
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "NotiHistoryDatabase"

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_4d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 399
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$1;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->removeFilePathFromHistory(Ljava/lang/String;)V

    .line 400
    monitor-exit p1

    goto :goto_62

    :catchall_57
    move-exception p0

    monitor-exit p1
    :try_end_59
    .catchall {:try_start_18 .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception p0

    const-string p1, "NotiHistoryDatabase"

    const-string p2, "Failed to delete notification history file"

    .line 402
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_62
    :goto_62
    return-void
.end method
