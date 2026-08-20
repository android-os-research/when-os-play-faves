.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReclaimPolicyManager"
.end annotation


# static fields
.field public static final RECLAIM_POLICY_COST_EFFICIENT:I = 0x3

.field public static final RECLAIM_POLICY_COST_LIMIT:I = 0x2

.field public static final RECLAIM_POLICY_DEFAULT:I = 0x0

.field public static final RECLAIM_POLICY_PROACTIVE:I = 0x1


# instance fields
.field public currentReclaimPolicy:I

.field public enabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 669
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 670
    iput-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getReclaimPolicy()I
    .registers 2

    monitor-enter p0

    .line 716
    :try_start_1
    iget v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 673
    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 674
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 678
    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z

    .line 679
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 680
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateReclaimPolicy(ZZZ)V
    .registers 7

    monitor-enter p0

    .line 683
    :try_start_1
    iget p2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 685
    iget-boolean v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->enabled:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_40

    if-nez v0, :cond_9

    .line 686
    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_11

    .line 689
    :try_start_e
    iput v2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    goto :goto_18

    :cond_11
    if-eqz p3, :cond_16

    .line 691
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    goto :goto_18

    .line 693
    :cond_16
    iput v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    .line 708
    :goto_18
    iget p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    if-eq p2, p1, :cond_3e

    const-string p1, "ReclaimerPolicyManager: update policy %d -> %d"

    new-array p3, v2, [Ljava/lang/Object;

    .line 710
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    iget p2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    .line 709
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimPolicyManager;->currentReclaimPolicy:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicy(I)V
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_40

    .line 713
    :cond_3e
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method
