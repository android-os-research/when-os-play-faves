.class public Lcom/android/server/am/BroadcastDispatcher$2;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastDispatcher;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmLock(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 222
    :try_start_7
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_12

    const-string v1, "BroadcastDispatcher"

    const-string v2, "Deferral recheck of pending broadcasts"

    .line 223
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_12
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fgetmQueue(Lcom/android/server/am/BroadcastDispatcher;)Lcom/android/server/am/BroadcastQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 226
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/am/BroadcastDispatcher;->-$$Nest$fputmRecheckScheduled(Lcom/android/server/am/BroadcastDispatcher;Z)V

    .line 227
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0
.end method
