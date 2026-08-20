.class public Lcom/android/server/NetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;,
        Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field public static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field public static final DBG:Z = false

.field public static final EVENT_AUTO_TIME_ENABLED:I = 0x1

.field public static final EVENT_NETWORK_CHANGED:I = 0x3

.field public static final EVENT_NTP_PARAMETERS_MDM:I = 0x4

.field public static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field public static final POLL_REQUEST:I = 0x0

.field public static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"

.field public static mForceNtpSetByMDM:Z = false

.field public static mNtpSetByMDM:Z = false


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAutoTimeSettingObserver:Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;

.field public mBootCompleted:Z

.field public final mCM:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetwork:Landroid/net/Network;

.field public mHandler:Landroid/os/Handler;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public mMDMReceiver:Landroid/content/BroadcastReceiver;

.field public mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

.field public final mPendingPollIntent:Landroid/app/PendingIntent;

.field public mPollingIntervalMs:J

.field public mPollingIntervalShorterMs:J

.field public final mTime:Landroid/util/NtpTrustedTime;

.field public final mTimeDetector:Landroid/app/timedetector/TimeDetector;

.field public mTryAgainCounter:I

.field public mTryAgainTimesMax:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDefaultNetwork(Lcom/android/server/NetworkTimeUpdateService;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/NetworkTimeUpdateService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultNetwork(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPollingIntervalMs(Lcom/android/server/NetworkTimeUpdateService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPollingIntervalShorterMs(Lcom/android/server/NetworkTimeUpdateService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTryAgainCounter(Lcom/android/server/NetworkTimeUpdateService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTryAgainTimesMax(Lcom/android/server/NetworkTimeUpdateService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPollNetworkTime(Lcom/android/server/NetworkTimeUpdateService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputmNtpSetByMDM(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    .line 132
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z

    .line 140
    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x1e

    invoke-direct {v2, v3, v1}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 465
    new-instance v2, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    .line 146
    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 147
    const-class v2, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TimeDetector;

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    .line 148
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 150
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x4000000

    .line 152
    invoke-static {p1, v1, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 162
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "NetworkTimeUpdateService"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static isNtpSetByMDM()Z
    .registers 1

    .line 541
    sget-boolean v0, Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z

    return v0
.end method

.method public static shallForceNtpMdmValues()Z
    .registers 1

    .line 537
    sget-boolean v0, Lcom/android/server/NetworkTimeUpdateService;->mForceNtpSetByMDM:Z

    return v0
.end method


# virtual methods
.method public clearTimeForTests()V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "clear latest network time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->clearCachedTimeResult()V

    .line 207
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    const-string v0, "clearTimeForTests"

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 433
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 434
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPollingIntervalMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPollingIntervalShorterMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTryAgainTimesMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTryAgainCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "NtpTrustedTime:"

    .line 439
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0, p2}, Landroid/util/NtpTrustedTime;->dump(Ljava/io/PrintWriter;)V

    .line 441
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Local logs:"

    .line 442
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NTP set by MDM: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public forceRefreshForTests()Z
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "force network time refresh"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefreshForTests: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_32

    .line 225
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    const-string v2, "Origin: NetworkTimeUpdateService: forceRefreshForTests"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/NetworkTimeUpdateService;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;)V

    :cond_32
    return v0
.end method

.method public final makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;)V
    .registers 8

    .line 336
    new-instance v0, Landroid/os/TimestampedValue;

    .line 337
    invoke-virtual {p1}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 338
    new-instance p1, Landroid/app/timedetector/NetworkTimeSuggestion;

    invoke-direct {p1, v0}, Landroid/app/timedetector/NetworkTimeSuggestion;-><init>(Landroid/os/TimestampedValue;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 339
    invoke-virtual {p1, v0}, Landroid/app/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 340
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    invoke-interface {p0, p1}, Landroid/app/timedetector/TimeDetector;->suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public final onPollNetworkTime(I)V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_5

    return-void

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 252
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 254
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_13
    move-exception p1

    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 255
    throw p1
.end method

.method public final onPollNetworkTimeUnderWakeLock(I)V
    .registers 11

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 261
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    .line 269
    invoke-virtual {v2, v0, v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1b

    const/4 v5, 0x4

    if-ne p1, v5, :cond_50

    .line 275
    :cond_1b
    sget-boolean v5, Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z

    if-eqz v5, :cond_21

    .line 276
    sput-boolean v3, Lcom/android/server/NetworkTimeUpdateService;->mForceNtpSetByMDM:Z

    .line 280
    :cond_21
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 282
    iput v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    goto :goto_4a

    .line 284
    :cond_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceRefresh() returned false: cachedNtpResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentElapsedRealtimeMillis="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v5, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 293
    :goto_4a
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v2

    :cond_50
    if-eqz v2, :cond_79

    .line 297
    invoke-virtual {v2, v0, v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_79

    .line 301
    invoke-virtual {v2, v0, v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis(J)J

    move-result-wide v0

    sub-long/2addr v7, v0

    .line 300
    invoke-virtual {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Origin: NetworkTimeUpdateService. event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/NetworkTimeUpdateService;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;)V

    goto :goto_bb

    .line 307
    :cond_79
    iget p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 308
    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v0, :cond_b6

    if-gt p1, v0, :cond_85

    goto :goto_b6

    .line 312
    :cond_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mTryAgainTimesMax exceeded, cachedNtpResult="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 317
    iput v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 318
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 320
    iget-boolean p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mBootCompleted:Z

    if-eqz p1, :cond_bb

    .line 321
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.EVENT_NTP_SERVER_UNREACHABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_bb

    .line 309
    :cond_b6
    :goto_b6
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 328
    :cond_bb
    :goto_bb
    sget-boolean p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpSetByMDM:Z

    if-eqz p0, :cond_c1

    .line 329
    sput-boolean v4, Lcom/android/server/NetworkTimeUpdateService;->mForceNtpSetByMDM:Z

    :cond_c1
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 453
    new-instance v0, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkTimeUpdateServiceShellCommand;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final registerForAlarms()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerMDMReceiver()V
    .registers 3

    .line 458
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    .line 459
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final resetAlarm(J)V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 352
    iget-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setServerConfigForTests(Ljava/lang/String;Ljava/lang/Integer;Ljava/time/Duration;)V
    .registers 7

    .line 238
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "set NTP server config for tests"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting server config for tests: hostname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/NtpTrustedTime;->setServerConfigForTests(Ljava/lang/String;Ljava/lang/Integer;Ljava/time/Duration;)V

    return-void
.end method

.method public systemRunning()V
    .registers 5

    .line 168
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerMDMReceiver()V

    .line 175
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 177
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    .line 179
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 181
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mAutoTimeSettingObserver:Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;

    .line 183
    invoke-virtual {v0}, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->observe()V

    return-void
.end method
