.class public Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;
.super Ljava/lang/Object;
.source "CriticalEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/CriticalEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogSanitizer"
.end annotation


# instance fields
.field public mTraceProcessClassEnum:I

.field public mTraceProcessName:Ljava/lang/String;

.field public mTraceUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    .line 457
    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    .line 458
    iput p3, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    return-void
.end method

.method public static sanitizeAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    .line 500
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    .line 502
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 503
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 504
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 506
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    .line 507
    invoke-virtual {p0, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0
.end method

.method public static sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 4

    .line 536
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 537
    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    iput-wide v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    return-object v0
.end method

.method public static sanitizeJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    .line 512
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    .line 514
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 515
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 516
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 518
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    .line 519
    invoke-virtual {p0, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0
.end method

.method public static sanitizeNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    .line 524
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    .line 526
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 527
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 528
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 530
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0
.end method


# virtual methods
.method public process(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 5

    .line 468
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasAnr()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 469
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v0

    .line 470
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 471
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    return-object p0

    .line 473
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasJavaCrash()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 474
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v0

    .line 475
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 476
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    return-object p0

    .line 478
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasNativeCrash()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 479
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v0

    .line 480
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 481
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    return-object p0

    :cond_51
    return-object p1
.end method

.method public final shouldSanitize(ILjava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    .line 489
    iget-object v2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    if-ne p2, p3, :cond_12

    move p2, v1

    goto :goto_13

    :cond_12
    move p2, v0

    :goto_13
    if-ne p1, v1, :cond_1c

    .line 494
    iget p0, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    if-ne p0, v1, :cond_1c

    if-nez p2, :cond_1c

    move v0, v1

    :cond_1c
    return v0
.end method
