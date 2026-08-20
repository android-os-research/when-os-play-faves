.class public Lcom/android/server/tare/Ledger;
.super Ljava/lang/Object;
.source "Ledger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Ledger$Transaction;
    }
.end annotation


# instance fields
.field public final mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

.field public mCurrentBalance:J

.field public mEarliestSumTime:J

.field public final mTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    .line 60
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    .line 67
    iput-wide p1, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 68
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;I)V
    .registers 9

    .line 132
    invoke-virtual {p0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 134
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int p2, v0, p2

    const/4 v1, 0x0

    .line 135
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1e
    if-ge p2, v0, :cond_7a

    .line 136
    iget-object v1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Ledger$Transaction;

    .line 138
    iget-wide v2, v1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    invoke-static {p1, v2, v3}, Lcom/android/server/tare/TareUtils;->dumpTime(Landroid/util/IndentingPrintWriter;J)V

    const-string v2, "--"

    .line 139
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 140
    iget-wide v2, v1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {p1, v2, v3}, Lcom/android/server/tare/TareUtils;->dumpTime(Landroid/util/IndentingPrintWriter;J)V

    const-string v2, ": "

    .line 141
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 142
    iget v2, v1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v2}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object v2, v1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    const-string v3, ")"

    if-eqz v2, :cond_58

    const-string v2, "("

    .line 144
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 145
    iget-object v2, v1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_58
    const-string v2, " --> "

    .line 148
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-wide v4, v1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    invoke-static {v4, v5}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " (ctp="

    .line 150
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget-wide v1, v1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_7a
    return-void
.end method

.method public get24HourSum(IJ)J
    .registers 16

    const-wide/32 v0, 0x5265c00

    sub-long/2addr p2, v0

    .line 99
    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_56

    .line 101
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 102
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_54

    .line 103
    iget-object v1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Ledger$Transaction;

    .line 104
    iget-wide v2, v1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    cmp-long v2, v2, p2

    if-gtz v2, :cond_28

    goto :goto_54

    .line 107
    :cond_28
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v3, v1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 108
    iget-wide v4, v1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    cmp-long v6, v4, p2

    if-ltz v6, :cond_3a

    .line 109
    iget-wide v4, v1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v2, v4

    goto :goto_4a

    :cond_3a
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 112
    iget-wide v8, v1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    sub-long v10, v8, p2

    long-to-double v10, v10

    mul-double/2addr v10, v6

    iget-wide v6, v1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    long-to-double v6, v6

    mul-double/2addr v10, v6

    double-to-long v6, v10

    sub-long/2addr v8, v4

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 116
    :goto_4a
    iget-object v4, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v1, v1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v4, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 118
    :cond_54
    :goto_54
    iput-wide p2, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    .line 120
    :cond_56
    iget-object p0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCurrentBalance()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    return-wide v0
.end method

.method public getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 78
    iget-object p0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/Ledger$Transaction;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransactions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    return-object p0
.end method

.method public recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .registers 8

    .line 89
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    .line 92
    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v1, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 93
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v3, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 94
    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    return-void
.end method

.method public removeOldTransactions(J)V
    .registers 7

    .line 125
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 126
    :goto_5
    iget-object p1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_22

    iget-object p1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    cmp-long p1, v2, v0

    if-gtz p1, :cond_22

    .line 127
    iget-object p1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_22
    return-void
.end method
