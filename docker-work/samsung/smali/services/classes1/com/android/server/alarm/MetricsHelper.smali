.class public Lcom/android/server/alarm/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$3C8tzd-DjSGW_0qr6Lod5pR2PHY(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;ILjava/util/List;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$12(Ljava/util/function/Supplier;ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5QjJJRxSSpcoVMwg7zoe5z7TZsI(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$11(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AfukGsVhXeCknr1_PdsGQ4ThMuc(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$3(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FmWMSOg285h_lJL-DdB_7ysaxfk(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$7(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HAJ0V_xBrkBXM9sia8YNIYprHIs(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$0(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Jo2t-0dl-HuIJn5ReskV8hQqxxI(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$1(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q41iHGbQre73OUAxv3QmRduT1P4(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$2(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VdoQ0KBY-KSaxzoCJ4DRiffz4T0(JLcom/android/server/alarm/Alarm;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$8(JLcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wm7Yv-Lx7uGu5Qjq_kJk860CWpo(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$9(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZG6QfW0LPcrKCikJyUtl2r-Yx20(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$6(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dKDjN1M65TzjWZGGkaYV4IGwGuA(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$5(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oMNvxrQKGgid9nyAcD8B228y68I(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$4(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xigEGBz9RbhJjZ2SKcH0pbTS_e0(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$10(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$registerPuller$0(Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 61
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static synthetic lambda$registerPuller$1(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    return p0
.end method

.method public static synthetic lambda$registerPuller$10(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static synthetic lambda$registerPuller$11(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 78
    iget p0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$registerPuller$12(Ljava/util/function/Supplier;ILjava/util/List;)I
    .registers 22

    move/from16 v0, p2

    const/16 v1, 0x277a

    if-ne v0, v1, :cond_a5

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v3, p0

    .line 57
    iget-object v15, v3, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 58
    :try_start_f
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/AlarmStore;

    .line 60
    invoke-interface {v3}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v4

    new-instance v5, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-interface {v3, v5}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v5

    new-instance v6, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 62
    invoke-interface {v3, v6}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v6

    new-instance v7, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;-><init>()V

    .line 63
    invoke-interface {v3, v7}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v7

    new-instance v8, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 65
    invoke-interface {v3, v8}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v8

    new-instance v9, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;

    invoke-direct {v9}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;-><init>()V

    .line 67
    invoke-interface {v3, v9}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v9

    new-instance v10, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;

    invoke-direct {v10}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;-><init>()V

    .line 69
    invoke-interface {v3, v10}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v10

    new-instance v11, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;

    invoke-direct {v11}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;-><init>()V

    .line 71
    invoke-interface {v3, v11}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v11

    new-instance v12, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;

    invoke-direct {v12}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;-><init>()V

    .line 73
    invoke-interface {v3, v12}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v12

    new-instance v13, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;

    invoke-direct {v13, v1, v2}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;-><init>(J)V

    .line 74
    invoke-interface {v3, v13}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v13

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;-><init>()V

    .line 76
    invoke-interface {v3, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v14

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 77
    invoke-interface {v3, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v16

    new-instance v1, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 78
    invoke-interface {v3, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v17

    move/from16 v1, p2

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    .line 59
    invoke-static/range {v1 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 80
    monitor-exit v15

    return v0

    :catchall_a2
    move-exception v0

    .line 81
    monitor-exit v15
    :try_end_a4
    .catchall {:try_start_f .. :try_end_a4} :catchall_a2

    throw v0

    .line 54
    :cond_a5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$registerPuller$2(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 64
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$registerPuller$3(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 66
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$registerPuller$4(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p0, :cond_c

    .line 68
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$registerPuller$5(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$registerPuller$6(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isService()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$registerPuller$7(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static synthetic lambda$registerPuller$8(JLcom/android/server/alarm/Alarm;)Z
    .registers 7

    .line 75
    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$registerPuller$9(Lcom/android/server/alarm/Alarm;)Z
    .registers 5

    .line 76
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static pushAlarmBatchDelivered(II)V
    .registers 3

    const/16 v0, 0x16f

    .line 115
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public static pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V
    .registers 14

    .line 101
    iget v1, p0, Lcom/android/server/alarm/Alarm;->uid:I

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_e

    move v6, v2

    goto :goto_f

    :cond_e
    move v6, v3

    :goto_f
    iget-boolean v7, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_19

    move v8, v2

    goto :goto_1a

    :cond_19
    move v8, v3

    :goto_1a
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_20

    move v9, v2

    goto :goto_21

    :cond_20
    move v9, v3

    :goto_21
    iget-wide v10, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_29

    move v10, v2

    goto :goto_2a

    :cond_29
    move v10, v3

    :goto_2a
    iget v0, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    .line 109
    invoke-static {v0}, Lcom/android/server/alarm/MetricsHelper;->reasonToStatsReason(I)I

    move-result v11

    iget p0, p0, Lcom/android/server/alarm/Alarm;->type:I

    .line 110
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p0

    .line 111
    invoke-static {p1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result p1

    const/16 v0, 0x170

    move v2, v6

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, p0

    move v9, p1

    .line 101
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZZZZZIZI)V

    return-void
.end method

.method public static reasonToStatsReason(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0

    :cond_f
    return v0

    :cond_10
    return v1

    :cond_11
    return v0
.end method


# virtual methods
.method public registerPuller(Ljava/util/function/Supplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/alarm/AlarmStore;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 52
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;)V

    const/16 p0, 0x277a

    const/4 p1, 0x0

    .line 51
    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method
