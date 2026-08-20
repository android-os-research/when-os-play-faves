.class public Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;
.super Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CachedAppOptimizerReclaimer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 3

    .line 755
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const-string p1, "cachedAppOptimizer"

    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onSuppressBegin()V
    .registers 2

    const-string p0, "CachedAppOptimizerReclaimer: suppress begin"

    const/4 v0, 0x0

    .line 761
    invoke-static {p0, v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuppressEnd()V
    .registers 3

    const-string v0, "CachedAppOptimizerReclaimer: suppress end"

    const/4 v1, 0x0

    .line 766
    invoke-static {v0, v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 767
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->compactAllDelayedCompactionProcesses()V

    return-void
.end method

.method public shouldSkipCompaction()Z
    .registers 1

    .line 771
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->isSuppressed()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method
