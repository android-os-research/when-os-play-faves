.class public final Lcom/android/server/utils/TimingsTraceAndSlog;
.super Landroid/util/TimingsTraceLog;
.source "TimingsTraceAndSlog.java"


# static fields
.field public static final BOTTLENECK_DURATION_MS:J = -0x1L

.field public static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field public static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"


# instance fields
.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "SystemServerTiming"

    .line 58
    invoke-direct {p0, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 2

    .line 85
    invoke-direct {p0, p1}, Landroid/util/TimingsTraceLog;-><init>(Landroid/util/TimingsTraceLog;)V

    .line 86
    iget-object p1, p1, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-wide/32 v0, 0x80000

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 78
    iput-object p1, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;
    .registers 4

    .line 50
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public logDuration(Ljava/lang/String;J)V
    .registers 4

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimingsTraceAndSlog["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public traceBegin(Ljava/lang/String;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    return-void
.end method
