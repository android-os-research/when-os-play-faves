.class public Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemporaryQuotaReserve"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;
    }
.end annotation


# instance fields
.field public mMaxDuration:J

.field public final mQuotaBuffer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 428
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mMaxDuration:J

    return-void
.end method


# virtual methods
.method public cleanUpExpiredQuotas(J)V
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 491
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 492
    iget-wide v1, v1, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1d

    .line 493
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .registers 9

    .line 513
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 514
    :goto_4
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 515
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 516
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 517
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ", u"

    .line 518
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 519
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ": "

    .line 520
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-nez v2, :cond_3a

    const-string v1, "--"

    .line 522
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_59

    :cond_3a
    const-string/jumbo v1, "quota: "

    .line 524
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 525
    iget v1, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, ", expiration: "

    .line 526
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 527
    iget-wide v3, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v1, " last used: "

    .line 528
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 529
    iget-wide v1, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 531
    :goto_59
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 533
    :cond_5f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public hasQuota(Ljava/lang/String;IJ)Z
    .registers 5

    .line 447
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 448
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    if-eqz p0, :cond_1e

    .line 450
    iget p1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    if-lez p1, :cond_1e

    iget-wide p0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    cmp-long p0, p3, p0

    if-gtz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public recordUsage(Ljava/lang/String;IJ)V
    .registers 12

    .line 459
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 460
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    const-string v0, ", user: "

    const-string v1, "Temporary quota being consumed at "

    const-string v2, "AlarmManager"

    if-nez p0, :cond_39

    .line 463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " but not found for package: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 469
    :cond_39
    iget-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    cmp-long v3, p3, v3

    if-lez v3, :cond_a3

    .line 470
    iget v3, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    const-string v4, " for package: "

    if-gtz v3, :cond_6e

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but remaining only "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 474
    :cond_6e
    iget-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    cmp-long v5, v5, p3

    if-gez v5, :cond_9d

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but expired at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :cond_9d
    add-int/lit8 v3, v3, -0x1

    .line 479
    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 484
    :goto_a1
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    :cond_a3
    return-void
.end method

.method public removeForPackage(Ljava/lang/String;I)V
    .registers 3

    .line 508
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 509
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeForUser(I)V
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 500
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 501
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 502
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method public replenishQuota(Ljava/lang/String;IIJ)V
    .registers 7

    if-gtz p3, :cond_3

    return-void

    .line 435
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 436
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    if-nez p2, :cond_20

    .line 438
    new-instance p2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;-><init>(Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo-IA;)V

    .line 439
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_20
    iput p3, p2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 442
    iget-wide p0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mMaxDuration:J

    add-long/2addr p4, p0

    iput-wide p4, p2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    return-void
.end method
