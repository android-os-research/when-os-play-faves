.class public final Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.super Ljava/lang/Object;
.source "SemWifiLinkQualityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x7d0

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiLinkQualityMonitor history:"

.field private static final LINK_STATE_UPDATE:I = 0x1

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemWifiLinkQualityMonitor"

.field private static mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBusyBoostingFactor:D

.field private mCcaBusyTimeDiffMs:J

.field private mContext:Landroid/content/Context;

.field private mLastCcaBusyTimeMs:J

.field private mLastRadioOnTimeMs:J

.field private mLastTxCnt:J

.field private mLastTxRatio:D

.field private mLastTxSuccessCnt:J

.field private final mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private mRadioOnTimeDiffMs:J

.field private mTxCntDiff:J

.field private mTxSpeed:I

.field private mTxSuccessCntDiff:J

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;


# direct methods
.method static bridge synthetic -$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkQualityMonitorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkLayerStats(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->updateLinkLayerStats()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/net/wifi/WifiManager;Landroid/os/HandlerThread;)V
    .registers 7

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastCcaBusyTimeMs:J

    .line 56
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastRadioOnTimeMs:J

    .line 59
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxCnt:J

    .line 60
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxSuccessCnt:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 63
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxRatio:D

    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 66
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mBusyBoostingFactor:D

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 96
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLinkQualityMonitorHandler:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    .line 97
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 98
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-virtual {p3, p0, v0}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    return-void
.end method

.method private getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 175
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method private updateLinkLayerStats()V
    .registers 15

    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-virtual {v2}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalRadioOnFreqTimeMillis()J

    move-result-wide v2

    .line 182
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTotalCcaBusyFreqTimeMillis()J

    move-result-wide v4

    if-nez v1, :cond_18

    .line 183
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxCnt:J

    goto :goto_1d

    :cond_18
    iget-wide v6, v1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iget-wide v8, v1, Landroid/net/wifi/WifiInfo;->txRetries:J

    add-long/2addr v6, v8

    :goto_1d
    if-nez v1, :cond_22

    .line 184
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxSuccessCnt:J

    goto :goto_24

    :cond_22
    iget-wide v8, v1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    :goto_24
    if-nez v1, :cond_29

    .line 186
    iget v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v10

    :goto_2d
    iput v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    .line 188
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastRadioOnTimeMs:J

    sub-long v10, v2, v10

    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRadioOnTimeDiffMs:J

    .line 189
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastCcaBusyTimeMs:J

    sub-long v10, v4, v10

    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mCcaBusyTimeDiffMs:J

    .line 190
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxCnt:J

    sub-long v10, v6, v10

    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxCntDiff:J

    .line 191
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxSuccessCnt:J

    sub-long v10, v8, v10

    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSuccessCntDiff:J

    if-eqz v1, :cond_51

    .line 193
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    const/16 v10, 0xbb8

    if-ge v1, v10, :cond_64

    .line 194
    :cond_51
    iget-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mCcaBusyTimeDiffMs:J

    long-to-double v10, v10

    iget-wide v12, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mBusyBoostingFactor:D

    mul-double/2addr v10, v12

    double-to-int v1, v10

    int-to-long v10, v1

    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mCcaBusyTimeDiffMs:J

    .line 195
    iget-wide v12, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRadioOnTimeDiffMs:J

    cmp-long v1, v10, v12

    if-lez v1, :cond_62

    move-wide v10, v12

    :cond_62
    iput-wide v10, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mCcaBusyTimeDiffMs:J

    .line 198
    :cond_64
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastRadioOnTimeMs:J

    .line 199
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastCcaBusyTimeMs:J

    .line 200
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxCnt:J

    .line 201
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxSuccessCnt:J

    .line 203
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxCntDiff:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_82

    .line 204
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSuccessCntDiff:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_7e

    long-to-double v1, v1

    long-to-double v3, v5

    div-double/2addr v1, v3

    goto :goto_80

    :cond_7e
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :goto_80
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxRatio:D

    .line 206
    :cond_82
    monitor-exit v0

    return-void

    :catchall_84
    move-exception p0

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw p0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .registers 6

    if-nez p2, :cond_8

    const-string p0, "SemWifiLinkQualityMonitor"

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const/4 p0, 0x2

    if-ne p2, p0, :cond_11

    const-string p2, "SemWifiLinkQualityMonitor"

    .line 135
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string p2, "SemWifiLinkQualityMonitor"

    .line 137
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_16
    :try_start_16
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%s %s"

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p0, v1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 143
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_38} :catch_55

    .line 149
    sget-object p1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    monitor-enter p1

    .line 150
    :try_start_3b
    sget-object p2, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_40
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p2, 0x7d0

    if-le p0, p2, :cond_50

    .line 152
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_40

    .line 154
    :cond_50
    monitor-exit p1

    return-void

    :catchall_52
    move-exception p0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_52

    throw p0

    :catch_55
    move-exception p0

    const-string p1, "SemWifiLinkQualityMonitor"

    const-string p2, "format problem"

    .line 145
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 159
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    monitor-enter p0

    .line 160
    :try_start_3
    new-instance v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 161
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    const-string p0, "SemWifiLinkQualityMonitor history:"

    .line 162
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 166
    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p1

    .line 161
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public linkQosQuery(JJJ)Z
    .registers 28

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    .line 210
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_16

    const-string v1, "Query without connection"

    .line 211
    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    return v7

    .line 214
    :cond_16
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 215
    :try_start_19
    iget-wide v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mRadioOnTimeDiffMs:J

    iget-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mCcaBusyTimeDiffMs:J

    cmp-long v12, v8, v10

    if-eqz v12, :cond_ee

    iget v12, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    if-lez v12, :cond_ee

    iget-wide v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxRatio:D

    const-wide/16 v15, 0x0

    cmpg-double v15, v13, v15

    if-gez v15, :cond_2f

    goto/16 :goto_ee

    :cond_2f
    sub-long/2addr v8, v10

    long-to-double v8, v8

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v15

    const-wide/high16 v17, 0x4052000000000000L    # 72.0

    div-double v8, v8, v17

    long-to-double v10, v10

    div-double/2addr v10, v8

    const-wide/16 v8, 0x0

    cmp-long v17, p1, v8

    if-gtz v17, :cond_48

    const-wide/16 v17, 0x3e8

    move-wide/from16 v8, v17

    goto :goto_4a

    :cond_48
    move-wide/from16 v8, p1

    :goto_4a
    long-to-double v8, v8

    const-wide/high16 v19, 0x4020000000000000L    # 8.0

    mul-double v8, v8, v19

    int-to-double v6, v12

    div-double v6, v8, v6

    div-double/2addr v6, v15

    add-double/2addr v6, v10

    mul-double/2addr v6, v13

    div-double/2addr v8, v6

    div-double/2addr v8, v15

    .line 229
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Link Qos Query: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%.3f"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v20, 0x0

    aput-object v16, v15, v20

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ms / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%.3f"

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v20, 0x0

    aput-object v16, v15, v20

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Mbps ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mTxSpeed:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "%.3f"

    new-array v15, v14, [Ljava/lang/Object;

    .line 230
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v15, v11

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%.3f"

    new-array v11, v14, [Ljava/lang/Object;

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mLastTxRatio:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    .line 229
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    if-lez v0, :cond_df

    long-to-double v0, v1

    cmpl-double v0, v6, v0

    if-gtz v0, :cond_e8

    :cond_df
    cmp-long v0, v3, v10

    if-lez v0, :cond_eb

    long-to-double v0, v3

    cmpg-double v0, v8, v0

    if-gez v0, :cond_eb

    .line 234
    :cond_e8
    monitor-exit v5

    const/4 v0, 0x0

    return v0

    .line 236
    :cond_eb
    monitor-exit v5

    const/4 v0, 0x1

    return v0

    :cond_ee
    :goto_ee
    const-string v1, "Link Qos query: inf. ms / 0 Mbps"

    const/4 v2, 0x2

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 217
    monitor-exit v5

    const/4 v0, 0x0

    return v0

    :catchall_f7
    move-exception v0

    .line 237
    monitor-exit v5
    :try_end_f9
    .catchall {:try_start_19 .. :try_end_f9} :catchall_f7

    throw v0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 3

    .line 103
    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    if-eqz p1, :cond_b

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_11

    .line 106
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_11
    return-void
.end method
