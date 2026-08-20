.class public Lcom/android/server/alarm/BatchingAlarmStore;
.super Ljava/lang/Object;
.source "BatchingAlarmStore.java"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/BatchingAlarmStore$Batch;,
        Lcom/android/server/alarm/BatchingAlarmStore$Stats;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BatchingAlarmStore"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final sBatchOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;"
        }
    .end annotation
.end field

.field public static final sIncreasingTimeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;"
        }
    .end annotation
.end field

.field public mOnAlarmClockRemoved:Ljava/lang/Runnable;

.field public mSize:I

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;


# direct methods
.method public static synthetic $r8$lambda$C4B0m32nDPh6fLbATXI2H_fQ9GU(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->lambda$static$0(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnAlarmClockRemoved(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsIncreasingTimeOrder()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sIncreasingTimeOrder:Ljava/util/Comparator;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sBatchOrder:Ljava/util/Comparator;

    .line 62
    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sIncreasingTimeOrder:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "GET_COUNT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-void
.end method

.method public static addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ">;",
            "Lcom/android/server/alarm/BatchingAlarmStore$Batch;",
            ")V"
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/android/server/alarm/BatchingAlarmStore;->sBatchOrder:Ljava/util/Comparator;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_c

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    .line 261
    :cond_c
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)V
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/BatchingAlarmStore;->insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V

    .line 68
    iget p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    return-void
.end method

.method public addAll(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 76
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/BatchingAlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    goto :goto_7

    :cond_17
    return-void
.end method

.method public asList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    const/4 v2, 0x0

    .line 190
    :goto_18
    invoke-virtual {v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 191
    invoke-virtual {v1, v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_28
    return-object v0
.end method

.method public final attemptCoalesce(JJ)I
    .registers 9

    .line 266
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 268
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 269
    iget v3, v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->canHold(JJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 8

    const-string v0, "Pending alarm batches: "

    .line 199
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 201
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 202
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    .line 203
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 204
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 205
    iget-object v1, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 206
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_14

    .line 208
    :cond_34
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    .line 213
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    const-wide v3, 0x20b00000013L

    move-object v2, p1

    move-wide v5, p2

    .line 214
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public getCount(Ljava/util/function/Predicate;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)I"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 228
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    move v6, v3

    .line 229
    :goto_1b
    invoke-virtual {v5}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 230
    invoke-virtual {v5, v6}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    add-int/lit8 v4, v4, 0x1

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 235
    :cond_30
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v4
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 220
    sget-object p0, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getNextDeliveryTime()J
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 150
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
    .registers 5

    .line 106
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 107
    iget v1, v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_19

    goto :goto_6

    :cond_19
    const/4 v1, 0x0

    .line 110
    :goto_1a
    invoke-virtual {v0}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v2

    .line 112
    iget v3, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextWakeupDeliveryTime()J
    .registers 3

    .line 139
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 140
    invoke-virtual {v0}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->hasWakeups()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    iget-wide v0, v0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    return-wide v0

    :cond_1b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V
    .registers 6

    .line 240
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_14

    .line 241
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/alarm/BatchingAlarmStore;->attemptCoalesce(JJ)I

    move-result v0

    :goto_14
    if-gez v0, :cond_21

    .line 244
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;-><init>(Lcom/android/server/alarm/BatchingAlarmStore;Lcom/android/server/alarm/Alarm;)V

    invoke-static {v0, v1}, Lcom/android/server/alarm/BatchingAlarmStore;->addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V

    goto :goto_39

    .line 246
    :cond_21
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 247
    invoke-virtual {v1, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->add(Lcom/android/server/alarm/Alarm;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 250
    iget-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/android/server/alarm/BatchingAlarmStore;->addBatch(Ljava/util/ArrayList;Lcom/android/server/alarm/BatchingAlarmStore$Batch;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public final rebatchAllAlarms()V
    .registers 7

    .line 121
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 123
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 125
    :goto_24
    invoke-virtual {v3}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 126
    invoke-virtual {v3, v4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/alarm/BatchingAlarmStore;->insertAndBatchAlarm(Lcom/android/server/alarm/Alarm;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 129
    :cond_34
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_2c

    .line 85
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 86
    invoke-virtual {v2, p1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v2

    if-nez v2, :cond_29

    .line 88
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 91
    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 92
    iget p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->rebatchAllAlarms()V

    :cond_3e
    return-object v0
.end method

.method public removePendingAlarms(J)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_32

    .line 159
    iget-object v1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    .line 160
    iget-wide v3, v1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_1d

    goto :goto_32

    .line 163
    :cond_1d
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    :goto_22
    invoke-virtual {v1}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 165
    invoke-virtual {v1, v2}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 168
    :cond_32
    :goto_32
    iget p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    return-object v0
.end method

.method public setAlarmClockRemovalListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    return-void
.end method

.method public size()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mSize:I

    return p0
.end method

.method public updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
    .registers 8

    .line 175
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    move v4, v1

    .line 176
    :goto_15
    invoke-virtual {v3}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 177
    invoke-virtual {v3, v4}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->get(I)Lcom/android/server/alarm/Alarm;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;->updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_27
    if-eqz v2, :cond_2c

    .line 181
    invoke-virtual {p0}, Lcom/android/server/alarm/BatchingAlarmStore;->rebatchAllAlarms()V

    :cond_2c
    return v2
.end method
