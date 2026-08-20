.class public Lcom/android/server/alarm/LazyAlarmStore;
.super Ljava/lang/Object;
.source "LazyAlarmStore.java"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/LazyAlarmStore$Stats;
    }
.end annotation


# static fields
.field public static final ALARM_DEADLINE_SLOP:J = 0x1f4L

.field public static final TAG:Ljava/lang/String; = "LazyAlarmStore"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final sDecreasingTimeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field public mOnAlarmClockRemoved:Ljava/lang/Runnable;

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET_NEXT_DELIVERY_TIME"

    const-string v3, "GET_NEXT_WAKEUP_DELIVERY_TIME"

    const-string v4, "GET_COUNT"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_e

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    .line 70
    :cond_e
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

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

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public asList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 7

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending alarms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 237
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 238
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 239
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    .line 244
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b0000002aL

    move-object v2, p1

    move-wide v5, p2

    .line 245
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public getCount(Ljava/util/function/Predicate;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)I"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 259
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 260
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 264
    :cond_22
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v3
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 251
    sget-object p0, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getNextDeliveryTime()J
    .registers 9

    .line 151
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 152
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_11

    const-wide/16 v0, 0x0

    return-wide v0

    .line 156
    :cond_11
    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v3

    add-int/lit8 v2, v2, -0x2

    :goto_21
    if-ltz v2, :cond_3f

    .line 158
    iget-object v5, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 159
    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_34

    goto :goto_3f

    .line 162
    :cond_34
    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 164
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-wide v3
.end method

.method public getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 110
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 111
    iget v2, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextWakeupDeliveryTime()J
    .registers 12

    .line 125
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 127
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_11
    if-ltz v2, :cond_44

    .line 128
    iget-object v8, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/Alarm;

    .line 129
    iget-boolean v9, v8, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-nez v9, :cond_20

    goto :goto_41

    .line 133
    :cond_20
    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v9

    if-eqz v9, :cond_27

    goto :goto_41

    :cond_27
    cmp-long v9, v6, v4

    if-nez v9, :cond_30

    .line 137
    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v6

    goto :goto_41

    .line 139
    :cond_30
    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_39

    goto :goto_44

    .line 142
    :cond_39
    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_41
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 145
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-wide v6
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 7
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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_43

    .line 86
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 87
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 88
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    if-eqz v3, :cond_30

    .line 89
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_30
    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 94
    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    const-string v4, "Removed TIME_TICK alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_43
    return-object v0
.end method

.method public removePendingAlarms(J)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ltz v1, :cond_43

    .line 182
    iget-object v5, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 183
    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-lez v6, :cond_22

    goto :goto_43

    .line 186
    :cond_22
    iget-object v6, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-boolean v6, v5, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v6, :cond_3a

    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, p1

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3a

    move v3, v2

    .line 193
    :cond_3a
    iget v5, v5, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_40

    move v4, v2

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 197
    :cond_43
    :goto_43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_4d
    if-ltz p2, :cond_6d

    .line 199
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    if-nez v3, :cond_5c

    .line 200
    iget-boolean v5, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v5, :cond_5c

    goto :goto_6a

    :cond_5c
    if-eqz v4, :cond_64

    .line 203
    iget v5, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_64

    goto :goto_6a

    .line 206
    :cond_64
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6a
    add-int/lit8 p2, p2, -0x1

    goto :goto_4d

    .line 210
    :cond_6d
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/LazyAlarmStore;->addAll(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public setAlarmClockRemovalListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    return-void
.end method

.method public size()I
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 218
    invoke-interface {p1, v2}, Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;->updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_7

    :cond_19
    if-eqz v1, :cond_22

    .line 221
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_22
    return v1
.end method
