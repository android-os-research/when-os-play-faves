.class public Lcom/android/server/job/restrictions/DeviceHealthRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "DeviceHealthRestriction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/restrictions/DeviceHealthRestriction$RestrictionRecord;
    }
.end annotation


# static fields
.field public static final ACTION_BOTTLENECK_HINT:Ljava/lang/String; = "android.util.PerfLog.ACTION_BOTTLENECK_HINT"

.field public static final BOTTLENECK_AVERAGE_CRI:I = 0x2d

.field public static final BOTTLENECK_AVERAGE_HIGH:I = 0x14

.field public static final BOTTLENECK_AVERAGE_LOW:I = 0x5

.field public static final BOTTLENECK_AVERAGE_MID:I = 0xa

.field public static final DELAY_MILLIS:J

.field public static final MAX_HISTORY_COUNT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "DeviceHealthRestriction"


# instance fields
.field public final mClearRestrictionCallback:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBottleneckHint:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mRestrictions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/DeviceHealthRestriction$RestrictionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$zmvj1g_4wV9rN4I7VqYOgkEUXq4(Lcom/android/server/job/restrictions/DeviceHealthRestriction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckScore(Lcom/android/server/job/restrictions/DeviceHealthRestriction;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->checkScore(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclearAndPostDelayed(Lcom/android/server/job/restrictions/DeviceHealthRestriction;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->clearAndPostDelayed(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDeviceHealthStateLocked(Lcom/android/server/job/restrictions/DeviceHealthRestriction;ZILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->updateDeviceHealthStateLocked(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDELAY_MILLIS()J
    .registers 2

    sget-wide v0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->DELAY_MILLIS:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->DELAY_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4

    const/4 v0, 0x4

    const/16 v1, 0xb

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;II)V

    .line 52
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mLock:Ljava/lang/Object;

    .line 58
    new-instance p1, Lcom/android/server/job/restrictions/DeviceHealthRestriction$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/job/restrictions/DeviceHealthRestriction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/restrictions/DeviceHealthRestriction;)V

    iput-object p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mClearRestrictionCallback:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mIsBottleneckHint:Z

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mRestrictions:Ljava/util/List;

    .line 72
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const/4 v0, 0x0

    const-string v1, ""

    .line 59
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->updateDeviceHealthStateLocked(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addRestrictionHistory(JZILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 148
    iget-object v0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_10

    .line 149
    iget-object v0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mRestrictions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    :cond_10
    iget-object p0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mRestrictions:Ljava/util/List;

    new-instance v7, Lcom/android/server/job/restrictions/DeviceHealthRestriction$RestrictionRecord;

    move-object v0, v7

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/restrictions/DeviceHealthRestriction$RestrictionRecord;-><init>(JZILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkScore(I)Z
    .registers 2

    const/16 p0, 0x2d

    if-le p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final clearAndPostDelayed(J)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mClearRestrictionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mClearRestrictionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    :cond_11
    iget-object v0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mClearRestrictionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "Device Health: "

    .line 110
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mIsBottleneckHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Job Restriction Histories: "

    .line 113
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->dumpHistory(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final dumpHistory(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mRestrictions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/DeviceHealthRestriction$RestrictionRecord;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/restrictions/DeviceHealthRestriction$RestrictionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 162
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    .line 100
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "media.module"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p0, 0x0

    return p0

    .line 103
    :cond_f
    iget-object p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 104
    :try_start_12
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mIsBottleneckHint:Z

    monitor-exit p1

    return p0

    :catchall_16
    move-exception p0

    .line 105
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onSystemServicesReady()V
    .registers 4

    .line 77
    new-instance v0, Lcom/android/server/job/restrictions/DeviceHealthRestriction$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/restrictions/DeviceHealthRestriction$1;-><init>(Lcom/android/server/job/restrictions/DeviceHealthRestriction;)V

    .line 92
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.util.PerfLog.ACTION_BOTTLENECK_HINT"

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final updateDeviceHealthStateLocked(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 124
    iget-object v0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mIsBottleneckHint:Z

    if-ne v1, p1, :cond_9

    monitor-exit v0

    return-void

    .line 127
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->mIsBottleneckHint:Z

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->addRestrictionHistory(JZILjava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    if-eqz p1, :cond_27

    const-string p0, "DeviceHealthRestriction"

    const-string p1, "bottleneck hint occured!"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_27
    const-string p0, "DeviceHealthRestriction"

    const-string/jumbo p1, "recover bottleneck hint!"

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method
