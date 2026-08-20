.class public Lcom/android/server/net/NetworkPolicyManagerService$15;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 5738
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 14

    .line 5741
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3ef

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3b2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_36a

    const/4 v3, 0x7

    if-eq v0, v3, :cond_355

    const/16 v3, 0xa

    if-eq v0, v3, :cond_331

    const/16 v3, 0xb

    if-eq v0, v3, :cond_319

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2dc

    const/16 v3, 0x3ed

    if-eq v0, v3, :cond_2ba

    const/16 v3, 0x3ef

    if-eq v0, v3, :cond_225

    const/16 v3, 0x33

    if-eq v0, v3, :cond_219

    const/16 v3, 0x34

    if-eq v0, v3, :cond_1fa

    packed-switch v0, :pswitch_data_474

    return v1

    .line 5927
    :pswitch_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    .line 5928
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5929
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    move v4, v1

    :goto_45
    if-ge v4, v3, :cond_9e

    .line 5931
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    move v6, v1

    :goto_54
    if-ge v6, v0, :cond_9b

    .line 5933
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 5934
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 5935
    iget v9, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 5936
    iget v10, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 5937
    iget v8, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 5939
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v11, v5, v7, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchBlockedReasonChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    .line 5941
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v9

    if-eqz v9, :cond_93

    const-string v9, "NetworkPolicy"

    .line 5942
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dispatching rules="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    :cond_93
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v9, v5, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchUidRulesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 5948
    :cond_9e
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_a7
    if-ge v1, v0, :cond_b5

    .line 5951
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_b5
    return v2

    .line 5898
    :pswitch_b6
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5899
    :try_start_bb
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_fd

    .line 5900
    :try_start_c0
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 5901
    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mSetSubscriptionPlansIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-ne v4, v6, :cond_ea

    .line 5902
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGD()Z

    move-result v4

    if-eqz v4, :cond_db

    const-string v4, "NetworkPolicy"

    const-string v6, "Clearing expired subscription plans."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5903
    :cond_db
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    new-array v6, v1, [Landroid/telephony/SubscriptionPlan;

    const-wide/16 v7, 0x0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetSubscriptionPlansInternal(Lcom/android/server/net/NetworkPolicyManagerService;I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    goto :goto_f7

    .line 5907
    :cond_ea
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGD()Z

    move-result p0

    if-eqz p0, :cond_f7

    const-string p0, "NetworkPolicy"

    const-string p1, "Ignoring stale CLEAR_SUBSCRIPTION_PLANS."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    :cond_f7
    :goto_f7
    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_c0 .. :try_end_f8} :catchall_fa

    .line 5910
    :try_start_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_fd

    return v2

    :catchall_fa
    move-exception p0

    .line 5909
    :try_start_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw p0

    :catchall_fd
    move-exception p0

    .line 5910
    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_fd

    throw p0

    .line 5914
    :pswitch_100
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5915
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 5916
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5917
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    :goto_116
    if-ge v1, v4, :cond_12c

    .line 5919
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 5920
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchBlockedReasonChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_116

    .line 5923
    :cond_12c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    .line 5768
    :pswitch_136
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 5770
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5773
    :try_start_144
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 5774
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 5775
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 5776
    monitor-exit v0

    return v2

    :catchall_155
    move-exception p0

    monitor-exit v0
    :try_end_157
    .catchall {:try_start_144 .. :try_end_157} :catchall_155

    throw p0

    .line 5887
    :pswitch_158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 5888
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 5889
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_168
    if-ge v1, v3, :cond_17e

    .line 5891
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 5892
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchSubscriptionPlansChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_168

    .line 5894
    :cond_17e
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    .line 5881
    :pswitch_188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 5882
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_191

    move v1, v2

    .line 5883
    :cond_191
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetNetworkTemplateEnabledInner(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    return v2

    .line 5875
    :pswitch_197
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5876
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    .line 5877
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    return v2

    .line 5860
    :pswitch_1a3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 5861
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5862
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 5863
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 5864
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast p1, [I

    .line 5865
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    :goto_1cd
    if-ge v1, v11, :cond_1e8

    .line 5867
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 5868
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move v5, v0

    move v6, v9

    move v7, v10

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchSubscriptionOverride(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1cd

    .line 5871
    :cond_1e8
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    .line 5856
    :pswitch_1f2
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mresetUidFirewallRules(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    return v2

    .line 5977
    :cond_1fa
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5978
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5979
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmCheckedAppSet(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return v2

    .line 5971
    :cond_219
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5972
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5973
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mhandleCheckFireWallPermission(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;I)V

    return v2

    .line 5985
    :cond_225
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_22b

    move p1, v2

    goto :goto_22c

    :cond_22b
    move p1, v1

    .line 5986
    :goto_22c
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v5, "tethering_data_warning_sim_slot_0"

    .line 5987
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5986
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5989
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v5, "tethering_data_warning_sim_slot_1"

    .line 5990
    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5989
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NetworkPolicy"

    .line 5992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_CHECK_TETHERING_WARNING_CHANGED() - mTetheringWarningBytes[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 5993
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTetheringWarningBytes[1]: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmTetheringWarningBytes(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 5995
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5992
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2ab

    .line 5997
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fputmTetheringNotiSnooze(Lcom/android/server/net/NetworkPolicyManagerService;J)V

    .line 5999
    :cond_2ab
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6000
    :try_start_2b0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 6001
    monitor-exit p1

    return v2

    :catchall_2b7
    move-exception p0

    monitor-exit p1
    :try_end_2b9
    .catchall {:try_start_2b0 .. :try_end_2b9} :catchall_2b7

    throw p0

    .line 5958
    :cond_2ba
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mchangePowerSaveMode(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result p1

    if-eqz p1, :cond_2db

    .line 5960
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5961
    :try_start_2c7
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdatePowerSaveWhitelistUL(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 5962
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForRestrictPowerUL(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 5963
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 5964
    monitor-exit p1

    goto :goto_2db

    :catchall_2d8
    move-exception p0

    monitor-exit p1
    :try_end_2da
    .catchall {:try_start_2c7 .. :try_end_2da} :catchall_2d8

    throw p0

    :cond_2db
    :goto_2db
    return v2

    .line 5814
    :cond_2dc
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5815
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 5816
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 5818
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    :goto_2ee
    if-ge v1, v4, :cond_304

    .line 5820
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 5821
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchUidPoliciesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ee

    .line 5823
    :cond_304
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5825
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_318

    .line 5826
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mbroadcastRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    :cond_318
    return v2

    .line 5849
    :cond_319
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 5850
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mremoveInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 5851
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v3

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    return v2

    .line 5840
    :cond_331
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;

    .line 5842
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mremoveInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 5843
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetInterfaceLimit(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 5844
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iget-wide v5, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    iget-wide v7, p1, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->setStatsProviderWarningAndLimitAsync(Ljava/lang/String;JJ)V

    return v2

    .line 5831
    :cond_355
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    .line 5834
    div-long/2addr v0, v3

    .line 5836
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/app/usage/NetworkStatsManager;->setDefaultGlobalAlert(J)V

    return v2

    .line 5800
    :cond_36a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_370

    move p1, v2

    goto :goto_371

    :cond_370
    move p1, v1

    .line 5801
    :goto_371
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_37b
    if-ge v1, v0, :cond_391

    .line 5803
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 5804
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchRestrictBackgroundChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37b

    .line 5806
    :cond_391
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5807
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 5809
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5810
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v2

    .line 5780
    :cond_3b2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5781
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfacesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5783
    :try_start_3bb
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmMeteredIfaces(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c9

    .line 5784
    monitor-exit v0

    return v2

    .line 5786
    :cond_3c9
    monitor-exit v0
    :try_end_3ca
    .catchall {:try_start_3bb .. :try_end_3ca} :catchall_3ec

    .line 5790
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmNetworkStats(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/app/usage/NetworkStatsManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 5792
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5793
    :try_start_3d8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 5794
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 5795
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 5796
    monitor-exit p1

    return v2

    :catchall_3e9
    move-exception p0

    monitor-exit p1
    :try_end_3eb
    .catchall {:try_start_3d8 .. :try_end_3eb} :catchall_3e9

    throw p0

    :catchall_3ec
    move-exception p0

    .line 5786
    :try_start_3ed
    monitor-exit v0
    :try_end_3ee
    .catchall {:try_start_3ed .. :try_end_3ee} :catchall_3ec

    throw p0

    .line 5758
    :cond_3ef
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 5759
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_3fd
    if-ge v1, v0, :cond_413

    .line 5761
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyListener;

    .line 5762
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchMeteredIfacesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3fd

    .line 5764
    :cond_413
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    .line 5743
    :cond_41d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5744
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 5745
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v3

    if-eqz v3, :cond_449

    const-string v3, "NetworkPolicy"

    .line 5746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatching rules="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    :cond_449
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_453
    if-ge v1, v3, :cond_469

    .line 5751
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 5752
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mdispatchUidRulesChanged(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_453

    .line 5754
    :cond_469
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v2

    nop

    :pswitch_data_474
    .packed-switch 0xf
        :pswitch_1f2
        :pswitch_1a3
        :pswitch_197
        :pswitch_188
        :pswitch_158
        :pswitch_136
        :pswitch_100
        :pswitch_b6
        :pswitch_32
    .end packed-switch
.end method
