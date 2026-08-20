.class public final Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;
    }
.end annotation


# static fields
.field public static final RES_BUSY:I = 0x1

.field public static final RES_IDLE:I = 0x0

.field public static final WINDOW_MARGIN_MS:I = 0x64


# instance fields
.field public cancelCount:I

.field public name:Ljava/lang/String;

.field public psiThresholdMS:I

.field public psiWindowMS:I

.field public resetResourceStatusTask:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

.field public status:I

.field public timer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetname(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetStatus(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->setStatus(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 734
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->status:I

    .line 740
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->cancelCount:I

    .line 743
    iput-object p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    .line 744
    iput p2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    .line 745
    iput p3, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    .line 747
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public final cancelResetResourceStatusTask()V
    .registers 5

    .line 800
    iget-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;->hasExpired()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 801
    iget-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 802
    iget-object v2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SystemResource[%s]: cancel pre-scheduled task"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 803
    iget v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->cancelCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->cancelCount:I

    add-int/2addr v1, v0

    .line 804
    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2f

    .line 805
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->timer:Ljava/util/Timer;

    invoke-virtual {p0}, Ljava/util/Timer;->purge()I

    :cond_2f
    return-void
.end method

.method public getPsiThresholdMS()I
    .registers 1

    .line 760
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    return p0
.end method

.method public getPsiWindowMS()I
    .registers 1

    .line 769
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    return p0
.end method

.method public final getStatus()I
    .registers 1

    .line 778
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->status:I

    return p0
.end method

.method public isBusy()Z
    .registers 2

    .line 751
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->getStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final scheduleResetResourceStatusTask(I)V
    .registers 6

    .line 811
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->cancelResetResourceStatusTask()V

    .line 812
    new-instance v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;-><init>(Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 813
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "SystemResource[%s]: schedule reset in %dms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 814
    iget-object v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->timer:Ljava/util/Timer;

    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->resetResourceStatusTask:Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource$ResetResourceStatusTask;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public setBusy()V
    .registers 2

    const/4 v0, 0x1

    .line 755
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->setStatus(I)V

    .line 756
    iget v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    add-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->scheduleResetResourceStatusTask(I)V

    return-void
.end method

.method public setPsiThresholdMS(I)V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 764
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SystemResource[%s]: update psiThresholdMS %d -> %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 765
    iput p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiThresholdMS:I

    return-void
.end method

.method public setPsiWindowMS(I)V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 773
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SystemResource[%s]: update psiWindowMS %d -> %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 774
    iput p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->psiWindowMS:I

    return-void
.end method

.method public final setStatus(I)V
    .registers 2

    .line 782
    iput p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$SystemResource;->status:I

    return-void
.end method
