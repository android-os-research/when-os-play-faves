.class public Lcom/android/server/usage/BroadcastResponseStatsLogger;
.super Ljava/lang/Object;
.source "BroadcastResponseStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;,
        Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;,
        Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;,
        Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;
    }
.end annotation


# static fields
.field public static final MAX_LOG_SIZE:I


# instance fields
.field public final mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$smgetBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    goto :goto_b

    :cond_9
    const/16 v0, 0x32

    :goto_b
    sput v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    const-class v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    sget v2, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 52
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    const-class v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    return-void
.end method

.method public static getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 154
    invoke-static {p5, p6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, v0, p6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p5, 0x1

    aput-object p0, v0, p5

    const/4 p0, 0x2

    aput-object p1, v0, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    .line 155
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    invoke-static {p7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v0, p1

    const-string p0, "broadcast:%s; srcUid=%d, tgtPkg=%s, tgtUsr=%d, id=%d, state=%s"

    .line 152
    invoke-static {p0, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    invoke-static {p3, p4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v0, p4

    invoke-static {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->notificationEventToString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x1

    aput-object p0, v0, p3

    const/4 p0, 0x2

    aput-object p1, v0, p0

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const-string p0, "notification:%s; event=<%s>, pkg=%s, usr=%d"

    .line 162
    invoke-static {p0, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static notificationEventToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 177
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "cancelled"

    return-object p0

    :cond_10
    const-string/jumbo p0, "updated"

    return-object p0

    :cond_14
    const-string/jumbo p0, "posted"

    return-object p0
.end method


# virtual methods
.method public dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Broadcast events (most recent first):"

    .line 83
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 85
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "Notification events (most recent first):"

    .line 89
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 91
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 93
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .registers 22

    move-object v0, p0

    .line 59
    iget-object v1, v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_4
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v2, :cond_1d

    const-string v2, "ResponseStatsTracker"

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move v3, p1

    move-object v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    .line 61
    invoke-static/range {v3 .. v10}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1d
    iget-object v4, v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    .line 67
    monitor-exit v1

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .registers 13

    .line 72
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-boolean v1, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v1, :cond_14

    const-string v1, "ResponseStatsTracker"

    .line 74
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {p1, p2, v2, p4, p5}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_14
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 78
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method
