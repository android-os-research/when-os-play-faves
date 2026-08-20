.class public final Lcom/android/server/alarm/BatchingAlarmStore$Batch;
.super Ljava/lang/Object;
.source "BatchingAlarmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/BatchingAlarmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Batch"
.end annotation


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

.field public mEnd:J

.field public mFlags:I

.field public mStart:J

.field public final synthetic this$0:Lcom/android/server/alarm/BatchingAlarmStore;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/BatchingAlarmStore;Lcom/android/server/alarm/Alarm;)V
    .registers 5

    .line 283
    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    .line 285
    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    .line 286
    iget v0, p2, Lcom/android/server/alarm/Alarm;->flags:I

    iput v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    .line 287
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)Z
    .registers 8

    .line 305
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/alarm/BatchingAlarmStore;->-$$Nest$sfgetsIncreasingTimeOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_10

    rsub-int/lit8 v0, v0, 0x0

    sub-int/2addr v0, v1

    .line 309
    :cond_10
    iget-object v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_26

    .line 314
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 317
    :goto_27
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_37

    .line 318
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    .line 320
    :cond_37
    iget v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    iget p1, p1, Lcom/android/server/alarm/Alarm;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    return v1
.end method

.method public canHold(JJ)Z
    .registers 7

    .line 299
    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_e

    iget-wide p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    cmp-long p0, p0, p3

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .registers 13

    .line 396
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 398
    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 399
    iget-wide v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 400
    iget v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 401
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000004L

    move-object v2, p1

    move-wide v5, p4

    .line 402
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_28

    .line 405
    :cond_40
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public get(I)Lcom/android/server/alarm/Alarm;
    .registers 2

    .line 295
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/Alarm;

    return-object p0
.end method

.method public hasWakeups()Z
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1b

    .line 368
    iget-object v3, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 369
    iget-boolean v3, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    return v1
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 12
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

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v5, v4

    move-wide v3, v2

    move v2, v1

    .line 333
    :cond_10
    :goto_10
    iget-object v7, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_72

    .line 334
    iget-object v7, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    .line 335
    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 336
    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v8, v7, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_46

    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-static {v8}, Lcom/android/server/alarm/BatchingAlarmStore;->-$$Nest$fgetmOnAlarmClockRemoved(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_46

    .line 338
    iget-object v8, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->this$0:Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-static {v8}, Lcom/android/server/alarm/BatchingAlarmStore;->-$$Nest$fgetmOnAlarmClockRemoved(Lcom/android/server/alarm/BatchingAlarmStore;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 340
    :cond_46
    invoke-static {v7}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 343
    sget-object v7, Lcom/android/server/alarm/BatchingAlarmStore;->TAG:Ljava/lang/String;

    const-string v8, "Removed TIME_TICK alarm"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 346
    :cond_54
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-lez v8, :cond_60

    .line 347
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v3

    .line 349
    :cond_60
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-gez v8, :cond_6c

    .line 350
    invoke-virtual {v7}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v5

    .line 352
    :cond_6c
    iget v7, v7, Lcom/android/server/alarm/Alarm;->flags:I

    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 356
    :cond_72
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7e

    .line 358
    iput-wide v3, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    .line 359
    iput-wide v5, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    .line 360
    iput v2, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    :cond_7e
    return-object v0
.end method

.method public size()I
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Batch{"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num="

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " start="

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    iget-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " end="

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-wide v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    iget v1, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    if-eqz v1, :cond_49

    const-string v1, " flgs=0x"

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget p0, p0, Lcom/android/server/alarm/BatchingAlarmStore$Batch;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    const/16 p0, 0x7d

    .line 391
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
