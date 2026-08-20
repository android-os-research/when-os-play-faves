.class public Lcom/android/server/power/WakeLockLog$LogEntry;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEntry"
.end annotation


# instance fields
.field public flags:I

.field public tag:Lcom/android/server/power/WakeLockLog$TagData;

.field public time:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .registers 6

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V
    .registers 5

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final flagsToString(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 455
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetLEVEL_TO_STRING()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v1, v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    const-string v0, ",on-after-release"

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_19
    iget v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    const-string v0, ",acq-causes-wake"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_25
    iget p0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_31

    const-string p0, ",system-wakelock"

    .line 463
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    return-void
.end method

.method public set(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .registers 6

    .line 400
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 401
    iput p3, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 402
    iput-object p4, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 403
    iput p5, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 423
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 6

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v1, :cond_26

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - RESET"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 439
    :cond_26
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez v1, :cond_40

    const-string v1, "---"

    goto :goto_46

    :cond_40
    iget v1, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_54

    const-string p1, "ACQ"

    goto :goto_56

    :cond_54
    const-string p1, "REL"

    :goto_56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez p1, :cond_65

    const-string p1, "UNKNOWN"

    goto :goto_67

    :cond_65
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    :goto_67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-ne p1, v1, :cond_7b

    const-string p1, " ("

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->flagsToString(Ljava/lang/StringBuilder;)V

    const-string p0, ")"

    .line 449
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
