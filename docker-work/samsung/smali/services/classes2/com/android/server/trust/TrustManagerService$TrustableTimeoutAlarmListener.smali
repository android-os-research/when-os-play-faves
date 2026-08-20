.class public Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustableTimeoutAlarmListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 3

    .line 2145
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2146
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    return-void
.end method


# virtual methods
.method public final cancelBothTrustableAlarms()V
    .registers 5

    .line 2167
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmIdleTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 2168
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 2170
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 2171
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 2173
    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2174
    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 2175
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_31
    if-eqz v1, :cond_45

    .line 2177
    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2178
    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 2179
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_45
    return-void
.end method

.method public final disableRenewableTrustWhileNonrenewableTrustIsPresent()V
    .registers 3

    .line 2186
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmActiveAgents(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 2187
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->setUntrustable()V

    goto :goto_a

    .line 2189
    :cond_1c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    return-void
.end method

.method public handleAlarm()V
    .registers 3

    .line 2153
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->ENABLE_ACTIVE_UNLOCK_FLAG:Z

    if-eqz v0, :cond_35

    .line 2154
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->cancelBothTrustableAlarms()V

    .line 2155
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    if-eqz v0, :cond_23

    .line 2156
    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_35

    .line 2158
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmLock(Lcom/android/server/trust/TrustManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2159
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->disableRenewableTrustWhileNonrenewableTrustIsPresent()V

    .line 2160
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    return-void
.end method
