.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReclaimerManager"
.end annotation


# static fields
.field public static reclaimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FslRnsWWMc-G7kwpvimI7aBs22o(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->lambda$applyReclaimPolicyDefault$0(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TyPtTyOwckPkYihUE7SMfL3FovM(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->lambda$applyReclaimPolicyCostLimit$2(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffJZV85COfiEvhQbG_SIJwjx-H4(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->lambda$applyReclaimPolicyProactive$1(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;-><init>()V

    return-void
.end method

.method public static synthetic lambda$applyReclaimPolicyCostLimit$2(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 3

    .line 648
    invoke-virtual {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->getEfficiency()I

    move-result p0

    const/16 v0, 0x32

    if-ge p0, v0, :cond_11

    const/4 p0, 0x1

    .line 650
    :try_start_9
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setMode(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_11
    return-void
.end method

.method public static synthetic lambda$applyReclaimPolicyDefault$0(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    const/4 p0, 0x0

    .line 629
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 631
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public static synthetic lambda$applyReclaimPolicyProactive$1(Ljava/lang/String;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 2

    const/4 p0, 0x2

    .line 639
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->setMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void
.end method


# virtual methods
.method public declared-synchronized applyReclaimPolicy(I)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    goto :goto_1c

    .line 619
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicyCostEfficient()V

    goto :goto_1c

    .line 616
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicyCostLimit()V

    goto :goto_1c

    .line 613
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicyProactive()V

    goto :goto_1c

    .line 610
    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicyDefault()V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1e

    .line 624
    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final applyReclaimPolicyCostEfficient()V
    .registers 1

    .line 659
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicyCostLimit()V

    return-void
.end method

.method public final applyReclaimPolicyCostLimit()V
    .registers 2

    .line 647
    sget-object p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final applyReclaimPolicyDefault()V
    .registers 2

    .line 627
    sget-object p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final applyReclaimPolicyProactive()V
    .registers 2

    .line 637
    sget-object p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    .line 573
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->applyReclaimPolicyDefault()V

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->unregisterKernelReclaimers()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 575
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReclaimer(Ljava/lang/String;)Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;
    .registers 2

    .line 604
    sget-object p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;

    return-object p0
.end method

.method public getReclaimers()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;",
            ">;"
        }
    .end annotation

    .line 600
    sget-object p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    return-object p0
.end method

.method public init()V
    .registers 1

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->registerKernelReclaimers()V

    return-void
.end method

.method public final registerKernelReclaimers()V
    .registers 2

    .line 592
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;

    invoke-direct {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->registerReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public declared-synchronized registerReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 5

    monitor-enter p0

    .line 578
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->getName()Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registering reclaimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 580
    sget-object v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 583
    :cond_3c
    sget-object v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 584
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unregisterKernelReclaimers()V
    .registers 2

    .line 596
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;

    invoke-direct {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$KswapdReclaimer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->unregisterReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public declared-synchronized unregisterReclaimer(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;)V
    .registers 4

    monitor-enter p0

    .line 587
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregistering reclaimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$ReclaimerManager;->reclaimers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 589
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method
