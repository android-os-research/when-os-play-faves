.class public Lcom/samsung/server/wallpaper/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final IS_DEV:Z

.field public static MAX_DUMP_SIZE:I = 0x0

.field public static TAG_PREFIX:Ljava/lang/String; = "WALLPAPER_SVC:"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field public static mIsPrintCodeInfo:Z

.field public static mLogHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mLogLevel:I

.field public static mStateLogMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 27
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/server/wallpaper/Log;->IS_DEV:Z

    const/4 v0, 0x2

    .line 29
    sput v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/samsung/server/wallpaper/Log;->mIsPrintCodeInfo:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/Log;->mStateLogMap:Landroid/util/SparseArray;

    const/16 v0, 0xc8

    .line 41
    sput v0, Lcom/samsung/server/wallpaper/Log;->MAX_DUMP_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 196
    invoke-static {p0}, Lcom/samsung/server/wallpaper/Log;->getHistoryList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 199
    invoke-static {p1}, Lcom/samsung/server/wallpaper/Log;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 203
    sget v1, Lcom/samsung/server/wallpaper/Log;->MAX_DUMP_SIZE:I

    if-le p1, v1, :cond_20

    add-int/lit8 p1, p1, -0x1

    .line 204
    :goto_16
    sget v1, Lcom/samsung/server/wallpaper/Log;->MAX_DUMP_SIZE:I

    if-lt p1, v1, :cond_20

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    .line 210
    :cond_20
    sget-object p1, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    monitor-enter p1

    .line 211
    :try_start_23
    sget-object v1, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    monitor-exit p1

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 107
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2e

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 114
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2e

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string p1, "[Event history]"

    .line 255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    invoke-static {p0}, Lcom/samsung/server/wallpaper/Log;->getHistoryList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const-string p3, "    "

    if-eqz p1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_2e
    const-string p0, "[End of event history]"

    .line 260
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "[State log]"

    .line 262
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    sget-object p0, Lcom/samsung/server/wallpaper/Log;->mStateLogMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_3f
    if-ge p1, p0, :cond_6c

    .line 265
    sget-object v0, Lcom/samsung/server/wallpaper/Log;->mStateLogMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 266
    sget-object v1, Lcom/samsung/server/wallpaper/Log;->mStateLogMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    :cond_6c
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 149
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2e

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 156
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2e

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static getCodeInfoString()Ljava/lang/String;
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    sget-boolean v1, Lcom/samsung/server/wallpaper/Log;->mIsPrintCodeInfo:Z

    if-eqz v1, :cond_2d

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 84
    array-length v2, v1

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x4

    :goto_1a
    if-gt v3, v2, :cond_2d

    .line 86
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 89
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHistoryList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    .line 178
    sget-object v0, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    monitor-enter v0

    .line 179
    :try_start_3
    sget-object v1, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_17

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    sget-object v2, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    .line 186
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 121
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2e

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 128
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2e

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static setLoggableLevel(I)V
    .registers 1

    .line 49
    sput p0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    return-void
.end method

.method public static setMaxDumpSize(I)V
    .registers 1

    if-ltz p0, :cond_4

    .line 67
    sput p0, Lcom/samsung/server/wallpaper/Log;->MAX_DUMP_SIZE:I

    :cond_4
    return-void
.end method

.method public static setPrintCodeInfo(Z)V
    .registers 1

    .line 77
    sput-boolean p0, Lcom/samsung/server/wallpaper/Log;->mIsPrintCodeInfo:Z

    return-void
.end method

.method public static setStateDumpLog(ILjava/lang/String;)V
    .registers 3

    .line 222
    sget-object v0, Lcom/samsung/server/wallpaper/Log;->mStateLogMap:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/Log;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static setTagPrefix(Ljava/lang/String;)V
    .registers 1

    if-nez p0, :cond_7

    const-string p0, ""

    .line 54
    sput-object p0, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    goto :goto_9

    .line 56
    :cond_7
    sput-object p0, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    :goto_9
    return-void
.end method

.method public static toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 245
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 246
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    .line 247
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    const/4 v4, 0x5

    .line 248
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v5, 0xb

    .line 249
    invoke-virtual {v0, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xc

    .line 250
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const/16 v3, 0xe

    .line 251
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x6

    aput-object p0, v2, v0

    const-string p0, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    .line 246
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trimLogHistory(Ljava/lang/String;)V
    .registers 4

    .line 231
    invoke-static {p0}, Lcom/samsung/server/wallpaper/Log;->getHistoryList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 233
    sget v2, Lcom/samsung/server/wallpaper/Log;->MAX_DUMP_SIZE:I

    if-le v1, v2, :cond_25

    add-int/lit8 v1, v1, -0x1

    .line 234
    :goto_e
    sget v2, Lcom/samsung/server/wallpaper/Log;->MAX_DUMP_SIZE:I

    if-lt v1, v2, :cond_18

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 238
    :cond_18
    sget-object v1, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    monitor-enter v1

    .line 239
    :try_start_1b
    sget-object v2, Lcom/samsung/server/wallpaper/Log;->mLogHistory:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v1

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    :goto_25
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 93
    sget-boolean v0, Lcom/samsung/server/wallpaper/Log;->IS_DEV:Z

    if-eqz v0, :cond_32

    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_32

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 100
    sget-boolean v0, Lcom/samsung/server/wallpaper/Log;->IS_DEV:Z

    if-eqz v0, :cond_32

    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_32

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 135
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2e

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 142
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2e

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 163
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_2e

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 170
    sget v0, Lcom/samsung/server/wallpaper/Log;->mLogLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_2e

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/server/wallpaper/Log;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/server/wallpaper/Log;->getCodeInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method
