.class public Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;
.super Landroid/os/Handler;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropBoxManagerBroadcastHandler"
.end annotation


# static fields
.field public static final MSG_SEND_BROADCAST:I = 0x1

.field public static final MSG_SEND_DEFERRED_BROADCAST:I = 0x2


# instance fields
.field public final mDeferredMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 259
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 260
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    .line 256
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final createIntent(Ljava/lang/String;J)Landroid/content/Intent;
    .registers 5

    .line 290
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    .line 291
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "time"

    .line 292
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_29

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_c
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 273
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1f

    if-eqz p1, :cond_29

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;)V

    goto :goto_29

    :catchall_1f
    move-exception p0

    .line 273
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 267
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public maybeDeferBroadcast(Ljava/lang/String;J)V
    .registers 6

    .line 309
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_26

    .line 313
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->createIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 314
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p2}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fgetmLowPriorityRateLimitPeriod(Lcom/android/server/DropBoxManagerService;)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    monitor-exit v0

    return-void

    :cond_26
    const-string/jumbo p0, "time"

    .line 318
    invoke-virtual {v1, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "android.os.extra.DROPPED_COUNT"

    const/4 p1, 0x0

    .line 319
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "android.os.extra.DROPPED_COUNT"

    add-int/lit8 p0, p0, 0x1

    .line 320
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    .line 323
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final prepareAndSendBroadcast(Landroid/content/Intent;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fgetmBooted(Lcom/android/server/DropBoxManagerService;)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, 0x40000000    # 2.0f

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    :cond_d
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;J)V
    .registers 4

    .line 300
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->createIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
