.class public Lcom/android/server/content/SyncStorageEngine$MyHandler;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V
    .registers 3

    .line 600
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 601
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 606
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 607
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 608
    :try_start_a
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 609
    monitor-exit v0

    goto :goto_26

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    .line 611
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter p1

    .line 612
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 613
    monitor-exit p1

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    return-void
.end method
