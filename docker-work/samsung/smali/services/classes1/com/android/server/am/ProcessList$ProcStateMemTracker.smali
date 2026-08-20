.class public final Lcom/android/server/am/ProcessList$ProcStateMemTracker;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStateMemTracker"
.end annotation


# instance fields
.field public final mHighestMem:[I

.field public mPendingHighestMemState:I

.field public mPendingMemState:I

.field public mPendingScalingFactor:F

.field public final mScalingFactor:[F

.field public mTotalHighestMem:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1519
    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    new-array v1, v0, [F

    .line 1520
    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    const/4 v1, 0x4

    .line 1521
    iput v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1f

    .line 1529
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aput v0, v2, v1

    .line 1530
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    const/4 v0, -0x1

    .line 1532
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method


# virtual methods
.method public dumpLine(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "best="

    .line 1536
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1537
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    .line 1538
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    const-string/jumbo v2, "x"

    const-string v3, " "

    const/4 v4, 0x5

    if-ge v0, v4, :cond_46

    .line 1541
    iget-object v5, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v5, v5, v0

    if-ge v5, v4, :cond_43

    if-eqz v1, :cond_26

    const-string v1, ", "

    .line 1543
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    :cond_26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "="

    .line 1547
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1549
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1551
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_46
    const-string v0, ")"

    .line 1555
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_6e

    const-string v0, " / pending state="

    .line 1557
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1558
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " highest="

    .line 1559
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1561
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    iget p0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    .line 1563
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1565
    :cond_6e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
