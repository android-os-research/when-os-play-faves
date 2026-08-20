.class public abstract Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Reclaimer"
.end annotation


# static fields
.field public static final CONTROL_DISABLED:I = 0x0

.field public static final CONTROL_ENABLED:I = 0x1

.field public static final CONTROL_STRINGS:[Ljava/lang/String;

.field public static final EFFICIENCY_MAX:I = 0x64

.field public static final EFFICIENCY_THRESHOLD:I = 0x32

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_PROACTIVE:I = 0x2

.field public static final MODE_STRINGS:[Ljava/lang/String;

.field public static final MODE_SUPPRESSED:I = 0x1


# instance fields
.field public controlStatus:I

.field public efficiency:I

.field public mode:I

.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "disabled"

    const-string v1, "enabled"

    .line 412
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    const-string v0, "default"

    const-string/jumbo v1, "suppressed"

    const-string/jumbo v2, "proactive"

    .line 413
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    .line 421
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    const/16 v0, 0x64

    .line 422
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    .line 425
    iput-object p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    .line 421
    iput v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    .line 429
    iput-object p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    .line 430
    iput p2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized __setMode(I)V
    .registers 5

    monitor-enter p0

    .line 491
    :try_start_1
    iget v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-ne v0, p1, :cond_7

    .line 493
    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    if-eq v0, v2, :cond_14

    if-eq v0, v1, :cond_10

    goto :goto_1b

    .line 503
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->onProactiveEnd()V

    goto :goto_1b

    .line 500
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->onSuppressEnd()V

    goto :goto_1b

    .line 497
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->onDefaultEnd()V

    :goto_1b
    if-eqz p1, :cond_2a

    if-eq p1, v2, :cond_26

    if-eq p1, v1, :cond_22

    goto :goto_2d

    .line 515
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->onProactiveBegin()V

    goto :goto_2d

    .line 512
    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->onSuppressBegin()V

    goto :goto_2d

    .line 509
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->onDefaultBegin()V

    .line 519
    :goto_2d
    iput p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_31

    .line 520
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getControlStatus()I
    .registers 1

    .line 450
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    return p0
.end method

.method public getEfficiency()I
    .registers 1

    .line 438
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    return p0
.end method

.method public declared-synchronized getMode()I
    .registers 2

    monitor-enter p0

    .line 481
    :try_start_1
    iget v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getReclaimerProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 459
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->reclaimerPropertyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 461
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public isDefault()Z
    .registers 1

    .line 523
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isEnabled()Z
    .registers 2

    .line 446
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isProactive()Z
    .registers 2

    .line 531
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isSuppressed()Z
    .registers 2

    .line 527
    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDefaultBegin()V
    .registers 1

    return-void
.end method

.method public onDefaultEnd()V
    .registers 1

    return-void
.end method

.method public onDoReclaim(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onProactiveBegin()V
    .registers 1

    return-void
.end method

.method public onProactiveEnd()V
    .registers 1

    return-void
.end method

.method public onSuppressBegin()V
    .registers 1

    return-void
.end method

.method public onSuppressEnd()V
    .registers 1

    return-void
.end method

.method public final reclaimerPropertyStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.sys.kernelmemory.umr.reclaimer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setControlStatus(I)V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 467
    iget-object v2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s: controlStatus=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const-string v1, "enabled"

    const-string v2, "false"

    .line 468
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->getReclaimerProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "true"

    .line 469
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    new-array p1, v0, [Ljava/lang/Object;

    .line 470
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->reclaimerPropertyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v3

    aput-object v2, p1, v4

    const-string p0, "  failed: %s=%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    .line 473
    :cond_43
    iput p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    if-nez p1, :cond_4a

    .line 476
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->__setMode(I)V

    :cond_4a
    return-void
.end method

.method public setEfficiency(I)V
    .registers 2

    .line 442
    iput p1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    return-void
.end method

.method public setMode(I)V
    .registers 3

    .line 485
    iget v0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    if-nez v0, :cond_5

    return-void

    .line 487
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->__setMode(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 535
    iget-object v1, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->controlStatus:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->mode:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    .line 536
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "%s: %s, %s, %d"

    .line 535
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
