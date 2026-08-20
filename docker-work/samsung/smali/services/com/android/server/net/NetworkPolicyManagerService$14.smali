.class public Lcom/android/server/net/NetworkPolicyManagerService$14;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


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

    .line 2350
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 2356
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v0, -0x1

    .line 2359
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    .line 2361
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "NetworkPolicy"

    .line 2362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCarrierConfigReceiver() - subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 2368
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2369
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_96

    .line 2370
    :try_start_44
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmSubIdToSubscriberId(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6b

    .line 2372
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mensureActiveCarrierPolicyAL(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z

    .line 2373
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mmaybeUpdateCarrierPolicyCycleAL(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z

    .line 2375
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmSubscriberIdToSlotId(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    :cond_6b
    const-string p2, "NetworkPolicy"

    .line 2378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing subscriberId for subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :goto_81
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SUPPORT_TRAFFIC_MANAGER:Z

    if-eqz p2, :cond_8a

    .line 2382
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mcheckToInitOffPeakConfig(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 2388
    :cond_8a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 2389
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_44 .. :try_end_91} :catchall_93

    .line 2390
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_96

    return-void

    :catchall_93
    move-exception p0

    .line 2389
    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw p0

    :catchall_96
    move-exception p0

    .line 2390
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_96

    throw p0
.end method
