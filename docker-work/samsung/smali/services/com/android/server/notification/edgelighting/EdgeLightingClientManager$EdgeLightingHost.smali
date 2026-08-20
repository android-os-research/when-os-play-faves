.class public Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EdgeLightingHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
    }
.end annotation


# static fields
.field public static final MSG_SCREEN_CHANGED:I = 0x3

.field public static final MSG_START_EDGHLIGHTING:I = 0x1

.field public static final MSG_STOP_EDGHLIGHTING:I = 0x2


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public condition:I

.field public mHandler:Landroid/os/Handler;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$m_onScreenChanged(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onScreenChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$m_onStartEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$m_onStopEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStopEdgeLighting(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartEdgeLightingService(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->startEdgeLightingService(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 8

    .line 494
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmHandler(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    .line 495
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 496
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 497
    iput p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 498
    iput p5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    .line 499
    iput p6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    if-eqz p2, :cond_2e

    const/4 p1, 0x0

    .line 502
    :try_start_21
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2e

    .line 505
    :catch_25
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingHost : linkToDeath error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public final _onScreenChanged(Z)V
    .registers 3

    .line 606
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 608
    invoke-interface {p0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onScreenChanged(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception p0

    .line 611
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onScreenChanged : RemoteException : "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public final _onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 4

    .line 584
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 586
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception p0

    .line 589
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onStartEdgeLighting : RemoteException : "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public final _onStopEdgeLighting(Ljava/lang/String;I)V
    .registers 3

    .line 595
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 597
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception p0

    .line 600
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onStopEdgeLighting : RemoteException : "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public binderDied()V
    .registers 6

    .line 511
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmEdgeLightingList(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 513
    :try_start_25
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmEdgeLightingList(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 514
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmEdgeLightingList(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_4f

    .line 515
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmEdgeLightingList(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4f

    .line 516
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmEdgeLightingListenerManager(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V

    .line 518
    :cond_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_9b

    .line 519
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmHosts(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 521
    :try_start_5d
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmHosts(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 522
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_98

    .line 523
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 524
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmIsConnectedMode(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Z

    move-result v0

    if-nez v0, :cond_85

    return-void

    .line 528
    :cond_85
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_98
    move-exception p0

    .line 522
    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p0

    :catchall_9b
    move-exception p0

    .line 518
    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method public onScreenChanged(Z)V
    .registers 5

    .line 572
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 573
    :cond_a
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_32

    .line 576
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onScreenChanged : token is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 579
    :cond_32
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 8

    .line 550
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 551
    :cond_a
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_33
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_42

    .line 554
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onStartEdgeLighting : token is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 557
    :cond_42
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStopEdgeLighting(Ljava/lang/String;I)V
    .registers 6

    .line 561
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 562
    :cond_a
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_2b
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_3a

    .line 565
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onStopEdgeLighting : token is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_3a
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startEdgeLightingService(Ljava/lang/String;)V
    .registers 3

    const-string v0, "com.android.systemui"

    .line 543
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 544
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "startEdgeLightingService"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    sget-object p1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$mcreateEdgeLightingService(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/UserHandle;)V

    :cond_29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Host: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") condition:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateCondition(I)V
    .registers 2

    .line 539
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    return-void
.end method
