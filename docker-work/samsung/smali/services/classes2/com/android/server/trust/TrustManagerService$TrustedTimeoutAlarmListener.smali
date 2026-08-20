.class public Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustedTimeoutAlarmListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 3

    .line 2111
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2112
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    return-void
.end method


# virtual methods
.method public final disableNonrenewableTrustWhileRenewableTrustIsPresent()V
    .registers 5

    .line 2132
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2133
    :try_start_7
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v1, v2, :cond_2c

    .line 2136
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2137
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 2139
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public handleAlarm()V
    .registers 3

    .line 2119
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->ENABLE_ACTIVE_UNLOCK_FLAG:Z

    if-eqz v0, :cond_2e

    .line 2120
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v0, :cond_1c

    .line 2121
    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_2e

    .line 2123
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmLock(Lcom/android/server/trust/TrustManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2124
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->disableNonrenewableTrustWhileRenewableTrustIsPresent()V

    .line 2125
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0

    :cond_2e
    return-void
.end method
