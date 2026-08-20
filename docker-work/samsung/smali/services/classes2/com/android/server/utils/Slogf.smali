.class public final Lcom/android/server/utils/Slogf;
.super Ljava/lang/Object;
.source "Slogf.java"


# static fields
.field private static final sFormatter:Ljava/util/Formatter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sMessageBuilder"
        }
    .end annotation
.end field

.field private static final sMessageBuilder:Ljava/lang/StringBuilder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sMessageBuilder"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 48
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SLog"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "static_init"

    .line 49
    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lcom/android/server/utils/Slogf;->sMessageBuilder:Ljava/lang/StringBuilder;

    .line 51
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v2, Lcom/android/server/utils/Slogf;->sFormatter:Ljava/util/Formatter;

    .line 52
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "provides only static methods"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 76
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 81
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    .line 174
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 176
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 111
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 116
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x6

    .line 248
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 250
    :cond_8
    invoke-static {p2, p3}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    .line 233
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 235
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static varargs getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 269
    sget-object v0, Lcom/android/server/utils/Slogf;->sMessageBuilder:Ljava/lang/StringBuilder;

    monitor-enter v0

    .line 270
    :try_start_3
    sget-object v1, Lcom/android/server/utils/Slogf;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v1, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 273
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 91
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    .line 189
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 191
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 2

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 146
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 66
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 71
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    .line 159
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 161
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 101
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 2

    .line 106
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x5

    .line 219
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 221
    :cond_8
    invoke-static {p2, p3}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    .line 204
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 206
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 121
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 141
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 2

    .line 136
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 265
    invoke-static {p2, p3}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 257
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 126
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 131
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
