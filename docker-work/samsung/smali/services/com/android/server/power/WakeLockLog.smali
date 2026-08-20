.class public final Lcom/android/server/power/WakeLockLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockLog$Injector;,
        Lcom/android/server/power/WakeLockLog$TagData;,
        Lcom/android/server/power/WakeLockLog$TagDatabase;,
        Lcom/android/server/power/WakeLockLog$TheLog;,
        Lcom/android/server/power/WakeLockLog$EntryByteTranslator;,
        Lcom/android/server/power/WakeLockLog$LogEntry;
    }
.end annotation


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DEBUG:Z = false

.field public static final FLAG_ACQUIRE_CAUSES_WAKEUP:I = 0x10

.field public static final FLAG_ON_AFTER_RELEASE:I = 0x8

.field public static final FLAG_SYSTEM_WAKELOCK:I = 0x20

.field public static final LEVEL_DOZE_WAKE_LOCK:I = 0x6

.field public static final LEVEL_DRAW_WAKE_LOCK:I = 0x7

.field public static final LEVEL_FULL_WAKE_LOCK:I = 0x2

.field public static final LEVEL_PARTIAL_WAKE_LOCK:I = 0x1

.field public static final LEVEL_PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x5

.field public static final LEVEL_SCREEN_BRIGHT_WAKE_LOCK:I = 0x4

.field public static final LEVEL_SCREEN_DIM_WAKE_LOCK:I = 0x3

.field public static final LEVEL_TO_STRING:[Ljava/lang/String;

.field public static final LEVEL_UNKNOWN:I = 0x0

.field public static final LOG_SIZE:I = 0x2800

.field public static final LOG_SIZE_MIN:I = 0xa

.field public static final MASK_LOWER_6_BITS:I = 0x3f

.field public static final MASK_LOWER_7_BITS:I = 0x7f

.field public static final MAX_LOG_ENTRY_BYTE_SIZE:I = 0x9

.field public static final REDUCED_TAG_PREFIXES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PowerManagerService.WLLog"

.field public static final TAG_DATABASE_SIZE:I = 0x80

.field public static final TAG_DATABASE_SIZE_MAX:I = 0x80

.field public static final TYPE_ACQUIRE:I = 0x1

.field public static final TYPE_RELEASE:I = 0x2

.field public static final TYPE_TIME_RESET:I


# instance fields
.field public final mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

.field public final mInjector:Lcom/android/server/power/WakeLockLog$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/server/power/WakeLockLog$TheLog;

.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLEVEL_TO_STRING()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 8

    const-string/jumbo v0, "unknown"

    const-string/jumbo v1, "partial"

    const-string v2, "full"

    const-string/jumbo v3, "screen-dim"

    const-string/jumbo v4, "screen-bright"

    const-string/jumbo v5, "prox"

    const-string v6, "doze"

    const-string v7, "draw"

    .line 92
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    const-string v0, "*job*/"

    const-string v1, "*gms_scheduler*/"

    const-string v2, "IntentOp:"

    .line 114
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 131
    new-instance v0, Lcom/android/server/power/WakeLockLog$Injector;

    invoke-direct {v0}, Lcom/android/server/power/WakeLockLog$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    .line 137
    new-instance v0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 138
    new-instance v1, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    invoke-direct {v1, v0}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;-><init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    .line 139
    new-instance v2, Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    iput-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8a

    :try_start_3
    const-string v1, "Wake Lock Log"

    .line 178
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v1}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 180
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v2, v1}, Lcom/android/server/power/WakeLockLog$TheLog;->getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 183
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/WakeLockLog$LogEntry;

    if-eqz v4, :cond_15

    .line 191
    iget v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v5, :cond_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 198
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/power/WakeLockLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_15

    :cond_32
    const-string v1, "  -"

    .line 202
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Events: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Time-Resets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Buffer, Bytes used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v2}, Lcom/android/server/power/WakeLockLog$TheLog;->getUsedBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_85

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :cond_85
    monitor-exit v0

    goto :goto_a3

    :catchall_87
    move-exception p0

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    :try_start_89
    throw p0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8a} :catch_8a

    :catch_8a
    move-exception p0

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception dumping wake-lock log: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a3
    return-void
.end method

.method public final handleWakeLockEventInternal(ILjava/lang/String;IIJ)V
    .registers 16

    .line 249
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v7

    .line 252
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    new-instance p2, Lcom/android/server/power/WakeLockLog$LogEntry;

    move-object v3, p2

    move-wide v4, p5

    move v6, p1

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, p2}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 253
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onWakeLockAcquired(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;II)V

    return-void
.end method

.method public final onWakeLockEvent(ILjava/lang/String;II)V
    .registers 13

    if-nez p2, :cond_2d

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Insufficient data to log wakelock [tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ownerUid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", flags: 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerManagerService.WLLog"

    .line 225
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_2d
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    invoke-virtual {v0}, Lcom/android/server/power/WakeLockLog$Injector;->currentTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3b

    .line 233
    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog;->translateFlagsFromPowerManager(I)I

    move-result p4

    goto :goto_3c

    :cond_3b
    const/4 p4, 0x0

    :goto_3c
    move v5, p4

    .line 235
    invoke-virtual {p0, p2}, Lcom/android/server/power/WakeLockLog;->tagNameReducer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/WakeLockLog;->handleWakeLockEventInternal(ILjava/lang/String;IIJ)V

    return-void
.end method

.method public onWakeLockReleased(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;II)V

    return-void
.end method

.method public final tagNameReducer(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 320
    :cond_4
    sget-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 321
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object p0, v4

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    :goto_18
    if-eqz p0, :cond_65

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p1, v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string p0, "/"

    .line 334
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x1

    move v4, v3

    :goto_3c
    if-ge v1, p0, :cond_59

    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4d

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4b

    goto :goto_4d

    :cond_4b
    move v6, v2

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v6, v3

    :goto_4e
    if-nez v6, :cond_52

    if-eqz v4, :cond_55

    .line 342
    :cond_52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_55
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_3c

    .line 346
    :cond_59
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    return-object p1
.end method

.method public translateFlagsFromPowerManager(I)I
    .registers 4

    const p0, 0xffff

    and-int/2addr p0, p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_40

    if-eq p0, v0, :cond_3e

    const/16 v1, 0xa

    if-eq p0, v1, :cond_3c

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_3a

    const/16 v1, 0x20

    if-eq p0, v1, :cond_38

    const/16 v1, 0x40

    if-eq p0, v1, :cond_41

    const/16 v0, 0x80

    if-eq p0, v0, :cond_36

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported lock level for logging, flags: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerManagerService.WLLog"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_41

    :cond_36
    const/4 v0, 0x7

    goto :goto_41

    :cond_38
    const/4 v0, 0x5

    goto :goto_41

    :cond_3a
    const/4 v0, 0x2

    goto :goto_41

    :cond_3c
    const/4 v0, 0x4

    goto :goto_41

    :cond_3e
    const/4 v0, 0x3

    goto :goto_41

    :cond_40
    move v0, v1

    :cond_41
    :goto_41
    const/high16 p0, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_48

    or-int/lit8 v0, v0, 0x10

    :cond_48
    const/high16 p0, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_4f

    or-int/lit8 v0, v0, 0x8

    :cond_4f
    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_56

    or-int/lit8 v0, v0, 0x20

    :cond_56
    return v0
.end method
