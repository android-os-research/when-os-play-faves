.class public Lcom/samsung/android/server/wifi/util/SemLogcatLog;
.super Ljava/lang/Object;
.source "SemLogcatLog.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/SemWifiLog;


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

.field private static final sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

.field private static volatile sVerboseLogging:Z = false


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    const-string v0, "getNameOfCallingMethod()"

    const-string v1, "trace()"

    .line 241
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static enableVerboseLogging(I)V
    .registers 1

    if-lez p0, :cond_6

    const/4 p0, 0x1

    .line 46
    sput-boolean p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    goto :goto_9

    :cond_6
    const/4 p0, 0x0

    .line 48
    sput-boolean p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    :goto_9
    return-void
.end method

.method private getNameOfCallingMethod(I)Ljava/lang/String;
    .registers 2

    .line 245
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->TRACE_FRAMES_TO_IGNORE:[Ljava/lang/String;

    array-length p0, p0

    add-int/2addr p1, p0

    .line 255
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 257
    :try_start_d
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    const-string p0, "<unknown>"

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 4

    .line 90
    sget-boolean v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_d

    .line 91
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 93
    :cond_d
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public eC(Ljava/lang/String;)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 4

    .line 55
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public iC(Ljava/lang/String;)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 4

    .line 65
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public tC(Ljava/lang/String;)V
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 6

    .line 70
    sget-boolean v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_12

    .line 71
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->getNameOfCallingMethod(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 74
    :cond_12
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public trace(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 6

    .line 80
    sget-boolean v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sVerboseLogging:Z

    if-eqz v0, :cond_11

    .line 81
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->getNameOfCallingMethod(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 84
    :cond_11
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public wC(Ljava/lang/String;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 4

    .line 60
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;->mTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog$RealLogMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
