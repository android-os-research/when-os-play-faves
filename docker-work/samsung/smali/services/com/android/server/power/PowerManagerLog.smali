.class public Lcom/android/server/power/PowerManagerLog;
.super Ljava/lang/Object;
.source "PowerManagerLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerLog$LazyHolder;,
        Lcom/android/server/power/PowerManagerLog$LogEntry;,
        Lcom/android/server/power/PowerManagerLog$TimeEntry;,
        Lcom/android/server/power/PowerManagerLog$Entry;,
        Lcom/android/server/power/PowerManagerLog$LogEventValue;,
        Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_LOG_SIZE:I = 0x9c4

.field public static final ERROR_TIME_IS_NEGATIVE:I = -0x2

.field public static final ERROR_TIME_TOO_LARGE:I = -0x1

.field public static final FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final LAST_PMS_EVENT_LOG_PATH:Ljava/lang/String; = "/data/log/pms_last_event.log"

.field public static final MSG_WRITE_LOG:I = 0x1

.field public static final PMS_ACQUIRE_WAKELOCK:B = 0x1dt

.field public static final PMS_ADD_USER_POINT:B = 0xbt

.field public static final PMS_BRIGHTNESS_CHANGE:B = 0x8t

.field public static final PMS_COLOR_FADE_ENTRY:B = 0xdt

.field public static final PMS_COLOR_FADE_EXIT:B = 0xet

.field public static final PMS_DOZE_AFTER_SCREEN_OFF:B = 0x1ct

.field public static final PMS_DUAL_SCREEN_CHANGED:B = 0x1at

.field public static final PMS_GO_TO_SLEEP:B = 0x2t

.field public static final PMS_HBM_MANUAL_MAX:B = 0x11t

.field public static final PMS_LCD_STATE_CHANGE:B = 0xct

.field public static final PMS_MISC_POWER_CHANGED:B = 0x1bt

.field public static final PMS_NO_AMBIENT_LIGHT_READING:B = 0x10t

.field public static final PMS_PWL_OFF:B = 0x14t

.field public static final PMS_PWL_OFF_BOOT_COMPLETE:B = 0x18t

.field public static final PMS_PWL_OFF_DISPLAY_READY:B = 0x16t

.field public static final PMS_PWL_OFF_POLICY:B = 0x17t

.field public static final PMS_PWL_OFF_USER_ACTIVITY:B = 0x15t

.field public static final PMS_PWL_ON:B = 0x13t

.field public static final PMS_PWL_WAKELOCK:B = 0x19t

.field public static final PMS_RELEASE_WAKELOCK:B = 0x1et

.field public static final PMS_SCREEN_ON_TIME:B = 0x12t

.field public static final PMS_SHORT_TERM_RESET:B = 0xat

.field public static final PMS_UPDATE_AUTO_BRIGHTNESS:B = 0x9t

.field public static final PMS_USER_ACTIVITY_STATE_CHANGE:B = 0xft

.field public static final PMS_WAKE_UP:B = 0x1t

.field public static final PMS_WAKE_UP_CANCEL_APP:B = 0x3t

.field public static final PMS_WAKE_UP_CANCEL_COVER:B = 0x6t

.field public static final PMS_WAKE_UP_CANCEL_FOLDER:B = 0x7t

.field public static final PMS_WAKE_UP_CANCEL_NOTI_DISABLED:B = 0x4t

.field public static final PMS_WAKE_UP_CANCEL_PROXIMITY:B = 0x5t

.field public static final TAG:Ljava/lang/String; = "PowerManagerLog"

.field public static final TIME_RESET:B

.field public static sEnableLogging:Z


# instance fields
.field public final mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

.field public mEnd:I

.field public final mHandler:Landroid/os/Handler;

.field public mLastTime:J

.field public final mLock:Ljava/lang/Object;

.field public final mMaxSize:I

.field public mStart:I

.field public mStartTime:J


# direct methods
.method public static bridge synthetic -$$Nest$sfgetFORMATTER()Ljava/time/format/DateTimeFormatter;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerLog;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 89
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerLog;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    const/4 v0, 0x0

    .line 96
    sput-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x9c4

    .line 107
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerLog;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerLog$PowerManagerLogHandler;-><init>(Lcom/android/server/power/PowerManagerLog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mHandler:Landroid/os/Handler;

    .line 113
    new-array v0, p1, [Lcom/android/server/power/PowerManagerLog$Entry;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    .line 114
    iput p1, p0, Lcom/android/server/power/PowerManagerLog;->mMaxSize:I

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    iput p1, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerLog-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerLog;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 232
    sget-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 233
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    const-string v1, "/data/log/pms_last_event.log"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/power/PowerManagerLog;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static getInstance()Lcom/android/server/power/PowerManagerLog;
    .registers 1

    .line 590
    invoke-static {}, Lcom/android/server/power/PowerManagerLog$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    return-object v0
.end method

.method public static sendLogEvent(ILcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9

    .line 208
    sget-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    const-string v2, " "

    if-eqz v1, :cond_2f

    iget-wide v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 213
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_2f
    move-object v1, v2

    :goto_30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEventMessage(I[Ljava/lang/Object;)V

    :cond_52
    return-void
.end method

.method public static varargs sendLogEvent(I[Ljava/lang/Object;)V
    .registers 3

    .line 198
    sget-boolean v0, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 199
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/PowerManagerLog;->sendLogEventMessage(I[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public addEntry(BSJ[Ljava/lang/Object;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 134
    :cond_a
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/PowerManagerLog;->calRelativeTime(J)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_12

    return-void

    .line 137
    :cond_12
    iget-object v1, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    monitor-enter v1

    .line 138
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerLog;->isBufferFull()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 139
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerLog;->removeOldestItem()V

    :cond_1e
    int-to-byte v8, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 141
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerLog;->pushOnce(BSJ[Ljava/lang/Object;B)V

    .line 142
    monitor-exit v1

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final calRelativeTime(J)I
    .registers 10

    .line 163
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/power/PowerManagerLog;->getRelativeTime(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 166
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    .line 167
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/android/server/power/PowerManagerLog;->getRelativeTime(JJ)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    .line 168
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerLog;->addEntry(BSJ[Ljava/lang/Object;)V

    :cond_17
    return v0
.end method

.method public dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_46

    .line 247
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 248
    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    :goto_7
    iget v4, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    if-eq v3, v4, :cond_19

    .line 250
    iget-object v4, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    aget-object v4, v4, v3

    invoke-interface {v4, p1, v1, v2}, Lcom/android/server/power/PowerManagerLog$Entry;->dumpOnce(Ljava/io/PrintWriter;J)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    .line 249
    iget v4, p0, Lcom/android/server/power/PowerManagerLog;->mMaxSize:I

    rem-int/2addr v3, v4

    goto :goto_7

    .line 253
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    iget v3, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    sub-int v4, v2, v3

    if-ltz v4, :cond_2e

    sub-int/2addr v2, v3

    goto :goto_34

    .line 254
    :cond_2e
    iget-object v4, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    array-length v4, v4

    sub-int/2addr v3, v2

    sub-int v2, v4, v3

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 256
    monitor-exit v0

    goto :goto_5f

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    :try_start_45
    throw v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Exception occurred in dumping PMS Log "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    :goto_5f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerLog;->dumpSavedLogFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final dumpSavedLogFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not exist "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerLog"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 272
    :cond_23
    :try_start_23
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_7a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_60
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_46

    .line 273
    :try_start_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "============== beginning of last PMS event log =============="

    .line 274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/PowerManagerLog;->unserializeLogData(Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3c

    .line 276
    :try_start_38
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3b} :catch_7a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_60
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_46

    goto :goto_80

    :catchall_3c
    move-exception p0

    .line 272
    :try_start_3d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p2

    :try_start_42
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw p0
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_46} :catch_7a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_60
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_46

    :catch_46
    move-exception p0

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected Exception occurred in dumping last PMS Log "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    :catch_60
    move-exception p0

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IOException occurred in dumping PMS Log"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    :catch_7a
    const-string/jumbo p0, "not found last pms event log file."

    .line 277
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_80
    return-void
.end method

.method public final getRelativeTime(JJ)I
    .registers 5

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p0, p1, p3

    if-gez p0, :cond_9

    const/4 p0, -0x2

    return p0

    :cond_9
    const-wide/16 p3, 0xff

    cmp-long p0, p1, p3

    if-lez p0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    long-to-int p0, p1

    return p0
.end method

.method public final isBufferEmpty()Z
    .registers 2

    .line 174
    iget v0, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    iget p0, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isBufferFull()Z
    .registers 4

    .line 178
    iget v0, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/server/power/PowerManagerLog;->mMaxSize:I

    rem-int/2addr v0, v2

    iget p0, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    if-ne v0, p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public final pushOnce(BSJ[Ljava/lang/Object;B)V
    .registers 8

    if-nez p1, :cond_d

    .line 147
    iget-object p1, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    iget p2, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    invoke-static {p3, p4}, Lcom/android/server/power/PowerManagerLog$TimeEntry;->of(J)Lcom/android/server/power/PowerManagerLog$TimeEntry;

    move-result-object p5

    aput-object p5, p1, p2

    goto :goto_1b

    .line 149
    :cond_d
    new-instance v0, Lcom/android/server/power/PowerManagerLog$LogEntry;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerLog$LogEntry;-><init>()V

    .line 150
    invoke-virtual {v0, p1, p6, p2, p5}, Lcom/android/server/power/PowerManagerLog$LogEntry;->set(BBS[Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    iget p2, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    aput-object v0, p1, p2

    .line 153
    :goto_1b
    iget p1, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/android/server/power/PowerManagerLog;->mMaxSize:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    .line 154
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerLog;->mLastTime:J

    return-void
.end method

.method public final removeOldestItem()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    iget v1, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/PowerManagerLog$Entry;->getTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 159
    iget v0, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/power/PowerManagerLog;->mMaxSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    return-void
.end method

.method public saveLogDataToFile()V
    .registers 5

    const-string v0, "/data/log/pms_last_event.log"

    const-string v1, "PowerManagerLog"

    .line 290
    sget-boolean v2, Lcom/android/server/power/PowerManagerLog;->sEnableLogging:Z

    if-eqz v2, :cond_64

    .line 291
    :try_start_8
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_31

    .line 292
    :try_start_12
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    .line 294
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 296
    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerLog;->serializeLogData(Ljava/io/PrintWriter;)V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_27

    .line 297
    :try_start_23
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_31

    goto :goto_64

    :catchall_27
    move-exception p0

    .line 291
    :try_start_28
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw p0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_31

    :catch_31
    move-exception p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :catch_4b
    move-exception p0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in saving last PowerManagerLog "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    :goto_64
    return-void
.end method

.method public final varargs sendLogEventMessage(I[Ljava/lang/Object;)V
    .registers 12

    .line 223
    iget-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v8, Lcom/android/server/power/PowerManagerLog$LogEventValue;

    int-to-byte v3, p1

    .line 225
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    int-to-short v4, p1

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, v8

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerLog$LogEventValue;-><init>(BSJ[Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public serializeLogData(Ljava/io/PrintWriter;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    monitor-enter v0

    .line 308
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerLog;->mStart:I

    :goto_5
    iget v2, p0, Lcom/android/server/power/PowerManagerLog;->mEnd:I

    if-eq v1, v2, :cond_1a

    .line 310
    iget-object v2, p0, Lcom/android/server/power/PowerManagerLog;->mBuffer:[Lcom/android/server/power/PowerManagerLog$Entry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 309
    iget v2, p0, Lcom/android/server/power/PowerManagerLog;->mMaxSize:I

    rem-int/2addr v1, v2

    goto :goto_5

    .line 312
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    .line 313
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_1f
    move-exception p0

    .line 312
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public unserializeLogData(Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerLog;->mStartTime:J

    .line 320
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    const-string v2, "Time ref:"

    .line 321
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v0, 0x3a

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    .line 324
    :cond_21
    new-instance v2, Lcom/android/server/power/PowerManagerLog$LogEntry;

    invoke-direct {v2}, Lcom/android/server/power/PowerManagerLog$LogEntry;-><init>()V

    const/4 v3, 0x4

    const-string v4, ","

    .line 325
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/server/power/PowerManagerLog$LogEntry;->set([Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, p2, v0, v1}, Lcom/android/server/power/PowerManagerLog$LogEntry;->dumpOnce(Ljava/io/PrintWriter;J)J

    move-result-wide v0

    goto :goto_2

    :cond_35
    return-void
.end method
