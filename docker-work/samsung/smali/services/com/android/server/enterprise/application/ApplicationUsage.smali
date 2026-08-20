.class public Lcom/android/server/enterprise/application/ApplicationUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ApplicationUsage"

.field public static appBackGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field public static appForeGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field public static mStatsLock:Ljava/lang/Object;

.field public static volatile mUsageHandler:Landroid/os/Handler;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    .line 88
    sget-object p1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    if-nez p1, :cond_2a

    .line 90
    monitor-enter p0

    .line 91
    :try_start_a
    sget-object p1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    if-nez p1, :cond_25

    .line 93
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "MDMAppUsageHandlerThread"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 95
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    .line 98
    :cond_25
    monitor-exit p0

    goto :goto_2a

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw p1

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public _appLaunchCount(Ljava/lang/String;)V
    .registers 5

    .line 162
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter p0

    .line 163
    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 164
    monitor-exit p0

    return-void

    .line 167
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 168
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 169
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 170
    iget v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    const-wide/16 v0, 0x0

    .line 172
    iput-wide v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    goto :goto_3f

    .line 175
    :cond_28
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage-IA;)V

    .line 176
    iget v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 178
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public _appPauseTime(Ljava/lang/String;)V
    .registers 4

    .line 189
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter p0

    .line 190
    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 191
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    .line 192
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 196
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public _appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 6

    if-eqz p1, :cond_71

    .line 204
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez p0, :cond_7

    goto :goto_71

    .line 210
    :cond_7
    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez p0, :cond_10

    iget p0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez p0, :cond_10

    return-void

    .line 216
    :cond_10
    iget p0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_17

    return-void

    .line 219
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 220
    sget-object p1, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 221
    :try_start_3a
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 222
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    .line 223
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 224
    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_58

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 227
    :cond_58
    iput-wide v2, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    goto :goto_6c

    .line 229
    :cond_5b
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage-IA;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 231
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_6c
    monitor-exit p1

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit p1
    :try_end_70
    .catchall {:try_start_3a .. :try_end_70} :catchall_6e

    throw p0

    :cond_71
    :goto_71
    return-void
.end method

.method public _appServiceStopTime(Ljava/lang/String;)V
    .registers 4

    .line 242
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter p0

    .line 243
    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 244
    monitor-exit p0

    return-void

    .line 246
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 247
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 250
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public _insertToAppControlDB()V
    .registers 5

    const-string v0, "ApplicationUsage"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating Usage Statistics in DB @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_1a
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2b

    .line 261
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateForeGroundUsageData()V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateBackGroundUsageDetails()V

    .line 263
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->updateNetworkUsage()V

    .line 264
    monitor-exit v0

    goto :goto_2f

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    const-string p0, "ApplicationUsage"

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Done Updating Usage Statistics in DB @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public appLaunchCount(Ljava/lang/String;I)V
    .registers 3

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    sget-object p1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appPauseTime(Ljava/lang/String;I)V
    .registers 3

    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 185
    sget-object p1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 3

    .line 200
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public appServiceStopTime(Ljava/lang/String;I)V
    .registers 3

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    sget-object p1, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final calculateAvgPerMonth(ILjava/lang/String;I)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    const-string v1, ":"

    .line 570
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 571
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 572
    aget-object p2, p2, v0

    .line 574
    :cond_11
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAppInstallTimeInMiliSec(Ljava/lang/String;I)J

    move-result-wide p2

    .line 575
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getFatatoryDataResetTime()J

    move-result-wide v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_1e

    move-wide p2, v1

    :cond_1e
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_2d

    .line 579
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result v1

    .line 580
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result p2

    goto :goto_2f

    :cond_2d
    move p2, v0

    move v1, p2

    .line 582
    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationUsage;->getYear(J)I

    move-result p3

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationUsage;->getMonth(J)I

    move-result p0

    if-eqz v1, :cond_4d

    if-eqz p2, :cond_4d

    if-le p3, p2, :cond_49

    sub-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0xc

    add-int/2addr v0, p3

    :cond_49
    if-le p0, v1, :cond_4d

    sub-int/2addr p0, v1

    add-int/2addr v0, p0

    :cond_4d
    if-eqz v0, :cond_52

    .line 595
    div-int/2addr p1, v0

    goto :goto_52

    :cond_51
    move p1, v0

    :cond_52
    :goto_52
    return p1
.end method

.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "ApplicationPolicy"

    .line 480
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    .line 484
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 9

    const-string p0, "application_policy"

    .line 606
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1f

    move v2, v0

    move v3, v2

    :goto_e
    if-ge v2, p2, :cond_20

    .line 610
    aget-object v4, p1, v2

    iget-object v4, v4, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-ne v4, v1, :cond_1c

    add-int/lit8 v3, v3, 0x1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    move v3, v0

    :cond_20
    if-nez v3, :cond_24

    const/4 p0, 0x0

    return-object p0

    .line 619
    :cond_24
    new-array v2, v3, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move v3, v0

    :goto_27
    if-ge v0, p2, :cond_3c

    .line 622
    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v4

    if-ne v4, v1, :cond_39

    .line 623
    aget-object v4, p1, v0

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3c
    return-object v2
.end method

.method public getAllAppLastUsage(I)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 14

    const-string v0, ":"

    .line 338
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    const/4 v1, 0x0

    .line 345
    :try_start_6
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppUsageData()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_63

    .line 346
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_63

    .line 347
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 348
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v5, v5, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 351
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v3

    move v7, v6

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 352
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4b

    .line 353
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 354
    aget-object v9, v7, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v11, v9

    move-object v9, v7

    move v7, v11

    goto :goto_4f

    :cond_4b
    new-array v9, v10, [Ljava/lang/String;

    aput-object v8, v9, v3

    :goto_4f
    if-eq v7, p1, :cond_52

    goto :goto_2a

    .line 363
    :cond_52
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    aput-object v8, v5, v6

    .line 364
    aget-object v9, v9, v3

    iput-object v9, v8, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_61
    move v3, v6

    goto :goto_64

    :cond_63
    move-object v5, v1

    :goto_64
    if-eqz v5, :cond_6a

    .line 369
    invoke-virtual {p0, v5, v3, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6a} :catch_6b

    :cond_6a
    return-object v1

    :catch_6b
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public final getAppInstallTimeInMiliSec(Ljava/lang/String;I)J
    .registers 8

    .line 498
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p0

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x80

    const-wide/16 v3, -0x1

    .line 501
    :try_start_e
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_1f

    const-string p0, "ApplicationUsage"

    const-string p1, "ApplicationUsage::getAppInstallTimeInMiliSec @ fail to get application info"

    .line 503
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_30
    .catchall {:try_start_e .. :try_end_1b} :catchall_2e

    .line 514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v3

    .line 506
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 507
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_30
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2e

    .line 514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_2e
    move-exception p0

    goto :goto_38

    :catch_30
    move-exception p0

    .line 511
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    .line 514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v3

    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    throw p0
.end method

.method public getAvgNoAppUsagePerMonth(I)[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .registers 15

    .line 383
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    const/4 v0, 0x0

    .line 386
    :try_start_4
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationUsage;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_174

    :try_start_7
    const-string v2, "getAvgNoUsagePerMonthOfApp=================="

    const-string v3, "called"

    .line 387
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 389
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 390
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_47

    .line 392
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 393
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 394
    iget v5, v5, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    if-eqz v5, :cond_23

    .line 395
    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->calculateAvgPerMonth(ILjava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 398
    :cond_47
    new-instance v3, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getLaunchCountOfAllApplication()Ljava/util/HashMap;

    move-result-object v3

    .line 400
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_10b

    if-eqz v3, :cond_b4

    .line 402
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 403
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 404
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6a
    :goto_6a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 405
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 406
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 407
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    if-eqz v8, :cond_6a

    .line 410
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 412
    :cond_9e
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_6a

    .line 413
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 418
    :cond_b4
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 419
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 422
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v6

    move v8, v7

    :goto_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_109

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ":"

    .line 423
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e8

    const-string v8, ":"

    .line 424
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 425
    aget-object v10, v8, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v12, v10

    move-object v10, v8

    move v8, v12

    goto :goto_ec

    :cond_e8
    new-array v10, v5, [Ljava/lang/String;

    aput-object v9, v10, v6

    :goto_ec
    if-eq v8, p1, :cond_ef

    goto :goto_c4

    .line 433
    :cond_ef
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 434
    new-instance v11, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v11}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    aput-object v11, v4, v7

    .line 435
    aget-object v10, v10, v6

    iput-object v10, v11, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 436
    iput v9, v11, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_c4

    :cond_109
    :goto_109
    move v6, v7

    goto :goto_16b

    :cond_10b
    if-eqz v3, :cond_16a

    .line 441
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16a

    .line 442
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 443
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 446
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v6

    move v8, v7

    :goto_123
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_168

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ":"

    .line 447
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_147

    const-string v8, ":"

    .line 448
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 449
    aget-object v10, v8, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v12, v10

    move-object v10, v8

    move v8, v12

    goto :goto_14b

    :cond_147
    new-array v10, v5, [Ljava/lang/String;

    aput-object v9, v10, v6

    :goto_14b
    if-eq v8, p1, :cond_14e

    goto :goto_123

    .line 457
    :cond_14e
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 458
    new-instance v11, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v11}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    aput-object v11, v2, v7

    .line 459
    aget-object v10, v10, v6

    iput-object v10, v11, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    .line 460
    iput v9, v11, Lcom/samsung/android/knox/application/AppInfoLastUsage;->launchCountPerMonth:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_123

    :cond_168
    move-object v4, v2

    goto :goto_109

    :cond_16a
    move-object v4, v0

    .line 466
    :goto_16b
    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_7 .. :try_end_16c} :catchall_171

    .line 467
    :try_start_16c
    invoke-virtual {p0, v4, v6, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->filterUnInstalledApps([Lcom/samsung/android/knox/application/AppInfoLastUsage;II)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object p0
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_170} :catch_174

    return-object p0

    :catchall_171
    move-exception p0

    .line 466
    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    :try_start_173
    throw p0
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_174} :catch_174

    :catch_174
    move-exception p0

    .line 470
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ApplicationUsage::getAvgNoAppUsagePerMonth"

    .line 471
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getFatatoryDataResetTime()J
    .registers 5

    .line 532
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "factorydatareset"

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 537
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_2e
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2c

    .line 539
    :goto_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_29
    .catchall {:try_start_1a .. :try_end_1e} :catchall_26

    if-eqz p0, :cond_22

    move-object v1, p0

    goto :goto_1a

    .line 547
    :cond_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_3e

    goto :goto_3e

    :catchall_26
    move-exception p0

    move-object v0, v2

    goto :goto_38

    :catch_29
    move-exception p0

    move-object v0, v2

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_38

    :catch_2e
    move-exception p0

    .line 543
    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    if-eqz v0, :cond_3e

    .line 547
    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3e

    goto :goto_3e

    :goto_38
    if-eqz v0, :cond_3d

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3d

    .line 552
    :catch_3d
    :cond_3d
    throw p0

    .line 554
    :catch_3e
    :cond_3e
    :goto_3e
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 557
    :try_start_47
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J
    :try_end_4e
    .catch Ljava/text/ParseException; {:try_start_47 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 559
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_53
    return-wide v2
.end method

.method public getLastUsageTime(Ljava/lang/String;)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getMonth(J)I
    .registers 3

    const-string p0, "GMT+0"

    .line 519
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 520
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x2

    .line 521
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getYear(J)I
    .registers 3

    const-string p0, "GMT+0"

    .line 525
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 526
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 527
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public insertToAppControlDB()V
    .registers 2

    .line 254
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mUsageHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateBackGroundUsageDetails()V
    .registers 10

    .line 305
    new-instance v6, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 306
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    if-eqz p0, :cond_6d

    .line 307
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6d

    .line 308
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 309
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 311
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 313
    iget-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-eqz v1, :cond_48

    .line 314
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    move-object v0, v6

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    .line 317
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 319
    :cond_48
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v6

    move-object v1, v8

    .line 319
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    goto :goto_20

    .line 324
    :cond_54
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_6d

    const/4 p0, 0x0

    .line 325
    :goto_5b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_6d

    .line 326
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appBackGroundStats:Ljava/util/Map;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_5b

    :cond_6d
    return-void
.end method

.method public final updateForeGroundUsageData()V
    .registers 11

    .line 277
    new-instance v7, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationUsage;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 278
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    if-eqz p0, :cond_71

    .line 279
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_71

    .line 280
    sget-object p0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 281
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 285
    iget-wide v5, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_4a

    .line 286
    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    move-object v0, v7

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    .line 288
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 290
    :cond_4a
    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, v7

    move-object v1, v9

    .line 290
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    goto :goto_20

    .line 295
    :cond_58
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_71

    const/4 p0, 0x0

    .line 296
    :goto_5f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_71

    .line 297
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationUsage;->appForeGroundStats:Ljava/util/Map;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_5f

    :cond_71
    return-void
.end method

.method public final updateNetworkUsage()V
    .registers 1

    const-string p0, "application_policy"

    .line 272
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 273
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateDataUsageDb()V

    return-void
.end method
