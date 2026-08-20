.class Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppWakeupHistory"
.end annotation


# instance fields
.field public mPackageHistory:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/LongArrayQueue;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowSize:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    .line 548
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .registers 11

    .line 603
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 604
    :goto_5
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 605
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 606
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongArrayQueue;

    .line 607
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", u"

    .line 608
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 609
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ": "

    .line 610
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 613
    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_43
    if-lt v4, v2, :cond_54

    .line 614
    invoke-virtual {v3, v4}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v5

    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v5, ", "

    .line 615
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 617
    :cond_54
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 619
    :cond_5a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getNthLastWakeupForPackage(Ljava/lang/String;II)J
    .registers 5

    .line 594
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    const-wide/16 p1, 0x0

    if-nez p0, :cond_15

    return-wide p1

    .line 598
    :cond_15
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    sub-int/2addr v0, p3

    if-gez v0, :cond_1d

    goto :goto_21

    .line 599
    :cond_1d
    invoke-virtual {p0, v0}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide p1

    :goto_21
    return-wide p1
.end method

.method public getTotalWakeupsInWindow(Ljava/lang/String;I)I
    .registers 3

    .line 585
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_18

    .line 586
    :cond_14
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p0

    :goto_18
    return p0
.end method

.method public recordAlarmForPackage(Ljava/lang/String;IJ)V
    .registers 7

    .line 552
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 553
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/LongArrayQueue;

    if-nez p2, :cond_1c

    .line 555
    new-instance p2, Landroid/util/LongArrayQueue;

    invoke-direct {p2}, Landroid/util/LongArrayQueue;-><init>()V

    .line 556
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_1c
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v0

    cmp-long p1, v0, p3

    if-gez p1, :cond_2d

    .line 559
    :cond_2a
    invoke-virtual {p2, p3, p4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 561
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->snapToWindow(Landroid/util/LongArrayQueue;)V

    return-void
.end method

.method public removeForPackage(Ljava/lang/String;I)V
    .registers 3

    .line 574
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 575
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeForUser(I)V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 566
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 567
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 568
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mPackageHistory:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method public final snapToWindow(Landroid/util/LongArrayQueue;)V
    .registers 6

    .line 579
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->mWindowSize:J

    add-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    .line 580
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    :cond_13
    return-void
.end method
