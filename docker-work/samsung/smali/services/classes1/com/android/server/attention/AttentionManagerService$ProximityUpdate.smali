.class final Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProximityUpdate"
.end annotation


# instance fields
.field public final mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

.field public final mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

.field public mStartedUpdates:Z

.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIProximityUpdateCallback(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/service/attention/IProximityUpdateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartedUpdates(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .registers 3

    .line 663
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 665
    new-instance p2, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;-><init>(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;Lcom/android/server/attention/AttentionManagerService;)V

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    return-void
.end method


# virtual methods
.method public cancelUpdates()V
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 700
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    if-eqz v1, :cond_24

    .line 701
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 702
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 703
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_26

    return-void

    .line 706
    :cond_16
    :try_start_16
    invoke-interface {v1}, Landroid/service/attention/IAttentionService;->onStopProximityUpdates()V

    .line 707
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_26

    goto :goto_24

    :catch_1c
    move-exception p0

    :try_start_1d
    const-string v1, "AttentionManagerService"

    const-string v2, "Cannot call into the AttentionService"

    .line 709
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_26

    throw p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 716
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is StartedUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public startUpdates()Z
    .registers 5

    .line 677
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 678
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    const-string p0, "AttentionManagerService"

    const-string v1, "Already registered to a proximity service."

    .line 679
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    monitor-exit v0

    return v2

    .line 682
    :cond_15
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_24

    const-string p0, "AttentionManagerService"

    const-string v1, "There is no service bound. Proximity update request rejected."

    .line 683
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_38

    return v2

    .line 688
    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Landroid/service/attention/IProximityUpdateCallback;

    invoke-interface {v1, v3}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V

    const/4 v1, 0x1

    .line 689
    iput-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_2e
    .catchall {:try_start_24 .. :try_end_2c} :catchall_38

    .line 694
    :try_start_2c
    monitor-exit v0

    return v1

    :catch_2e
    move-exception p0

    const-string v1, "AttentionManagerService"

    const-string v3, "Cannot call into the AttentionService"

    .line 691
    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    monitor-exit v0

    return v2

    :catchall_38
    move-exception p0

    .line 694
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw p0
.end method
