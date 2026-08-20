.class public final Lcom/android/server/knox/dar/sdp/SDPLogger;
.super Ljava/lang/Object;
.source "SDPLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;
    }
.end annotation


# static fields
.field public static final ACCUM_TIME_MS:I = 0xbb8

.field public static final DEBUG:Z

.field public static final STATE_ACCUMULATING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SAVING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SDPLogger"

.field public static mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;


# direct methods
.method public static bridge synthetic -$$Nest$smLogD(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smLogE(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->LogE(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 17
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    .line 25
    new-instance v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;-><init>(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger-IA;)V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .registers 2

    .line 141
    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "SDPLogger"

    .line 142
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SDPLogger"

    .line 147
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 1

    .line 137
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static enqMessage(Ljava/lang/String;)V
    .registers 5

    .line 28
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$smgetLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 29
    :try_start_5
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$smgetStateLocked()I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    .line 30
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$smsetStateLocked(I)V

    .line 31
    new-instance v2, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;-><init>(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger-IA;)V

    sput-object v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 33
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    :cond_1f
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    if-eqz v1, :cond_26

    .line 38
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$madd(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;Ljava/lang/String;)V

    .line 40
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw p0
.end method
