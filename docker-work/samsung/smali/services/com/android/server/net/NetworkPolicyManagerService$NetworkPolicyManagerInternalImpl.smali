.class public Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
.super Lcom/android/server/net/NetworkPolicyManagerInternal;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkPolicyManagerInternalImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$oqltMStSEW9VswJlTI3idMOgEuc(Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->lambda$setLowPowerStandbyActive$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 6589
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method

.method private synthetic lambda$setLowPowerStandbyActive$0(I)V
    .registers 2

    .line 6686
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForPowerRestrictionsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    return-void
.end method


# virtual methods
.method public getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
    .registers 8

    .line 6632
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6633
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetSubIdLocked(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result p1

    const-wide/16 v3, -0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 6635
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_4a

    cmp-long p1, v1, v3

    if-nez p1, :cond_19

    return-wide v3

    :cond_19
    const/4 p1, 0x1

    const/high16 v0, 0x3f000000    # 0.5f

    if-ne p2, p1, :cond_33

    long-to-float p1, v1

    .line 6641
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "netpolicy_quota_frac_jobs"

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    :goto_30
    mul-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0

    :cond_33
    const/4 p1, 0x2

    if-ne p2, p1, :cond_49

    long-to-float p1, v1

    .line 6644
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "netpolicy_quota_frac_multipath"

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    goto :goto_30

    :cond_49
    return-wide v3

    :catchall_4a
    move-exception p0

    .line 6635
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public getSubscriptionPlan(Landroid/net/Network;)Landroid/telephony/SubscriptionPlan;
    .registers 4

    .line 6623
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6624
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetSubIdLocked(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result p1

    .line 6625
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetPrimarySubscriptionPlanLocked(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 6626
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onAdminDataAvailable()V
    .registers 1

    .line 6653
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmAdminDataAvailableLatch(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V
    .registers 7

    .line 6607
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6608
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v1, :cond_d

    .line 6609
    monitor-exit v0

    return-void

    .line 6611
    :cond_d
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLogger(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->tempPowerSaveWlChanged(IZILjava/lang/String;)V

    if-eqz p2, :cond_23

    .line 6613
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2c

    .line 6615
    :cond_23
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 6617
    :goto_2c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForTempWhitelistChangeUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 6618
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public resetUserState(I)V
    .registers 7

    .line 6593
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6594
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZZ)Z

    move-result v1

    .line 6595
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$maddDefaultRestrictBackgroundAllowlistUidsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    move-result p1

    if-nez p1, :cond_19

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :cond_19
    :goto_19
    if-eqz v2, :cond_2a

    .line 6597
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_2c

    .line 6598
    :try_start_20
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 6599
    monitor-exit p1

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0

    .line 6601
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setAppIdleWhitelist(IZ)V
    .registers 3

    .line 6658
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    return-void
.end method

.method public setLowPowerStandbyActive(Z)V
    .registers 7

    const-string/jumbo v0, "setLowPowerStandbyActive"

    const-wide/32 v1, 0x200000

    .line 6674
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6676
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4c

    .line 6677
    :try_start_e
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-ne v3, p1, :cond_19

    .line 6678
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_49

    .line 6690
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 6680
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean p1, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    .line 6681
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_49

    .line 6682
    :try_start_22
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v3, :cond_2e

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_46

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_49

    .line 6690
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 6683
    :cond_2e
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_46

    .line 6685
    :try_start_2f
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v3, "updateRulesForRestrictPower"

    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V

    invoke-static {p1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mforEachUid(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 6687
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForLowPowerStandbyUL()V

    .line 6688
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_49

    .line 6690
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_46
    move-exception p0

    .line 6683
    :try_start_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw p0

    :catchall_49
    move-exception p0

    .line 6688
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    .line 6690
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6691
    throw p0
.end method

.method public setLowPowerStandbyAllowlist([I)V
    .registers 10

    .line 6696
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6697
    :try_start_5
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 6698
    :goto_c
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2f

    .line 6699
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 6700
    invoke-static {p1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 6701
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2f
    move v3, v2

    .line 6705
    :goto_30
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 6706
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 6707
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 6710
    :cond_46
    array-length v3, p1

    move v4, v2

    :goto_48
    if-ge v4, v3, :cond_67

    aget v6, p1, v4

    .line 6711
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_64

    .line 6712
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 6713
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmLowPowerStandbyAllowlistUids(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 6717
    :cond_67
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-nez p1, :cond_6f

    .line 6718
    monitor-exit v0

    return-void

    .line 6721
    :cond_6f
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_9a

    .line 6722
    :try_start_74
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v3, :cond_7d

    monitor-exit p1
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_97

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_9a

    return-void

    .line 6723
    :cond_7d
    :try_start_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_97

    .line 6725
    :goto_7e
    :try_start_7e
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_95

    .line 6726
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    .line 6727
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForPowerRestrictionsUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 6728
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 6730
    :cond_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_7e .. :try_end_96} :catchall_9a

    return-void

    :catchall_97
    move-exception p0

    .line 6723
    :try_start_98
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw p0

    :catchall_9a
    move-exception p0

    .line 6730
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public setMeteredRestrictedPackages(Ljava/util/Set;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6663
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$msetMeteredRestrictedPackagesInternal(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    return-void
.end method

.method public setMeteredRestrictedPackagesAsync(Ljava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6668
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6669
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
