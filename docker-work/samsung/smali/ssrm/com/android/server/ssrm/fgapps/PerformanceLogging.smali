.class public Lcom/android/server/ssrm/fgapps/PerformanceLogging;
.super Ljava/lang/Object;
.source "PerformanceLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;
    }
.end annotation


# static fields
.field private static final ATRACE_PERFETTO_PROPERTY:Ljava/lang/String; = "debug.perfmond.atrace"

.field private static final ATRACE_PERFETTO_TARGET_NAME_PROPERTY:Ljava/lang/String; = "debug.perfmond.atrace.name"

.field private static final COPY_WAITING_DURATION_MS:I = 0x7d0

.field private static final MSG_ATRACE_COPY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTracingMode:I


# direct methods
.method static bridge synthetic -$$Nest$mexecute(Lcom/android/server/ssrm/fgapps/PerformanceLogging;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->execute(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    .line 38
    invoke-static {p1}, Lcom/android/server/ssrm/common/EventManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/common/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/PerformanceLogging$PerformanceLoggingReceiver;-><init>(Lcom/android/server/ssrm/fgapps/PerformanceLogging;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/common/EventManager;->registerReceiver(Lcom/android/server/ssrm/common/IEReceiver;)Lcom/android/server/ssrm/common/IEvent;

    .line 39
    return-void
.end method

.method public static createAtraceName(J)Ljava/lang/String;
    .registers 6
    .param p0, "time"    # J

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 101
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "formatter":Ljava/text/DateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Atrace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized execute(I)V
    .registers 8
    .param p1, "type"    # I

    monitor-enter p0

    .line 42
    :try_start_1
    sget-object v0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/16 v1, 0x66

    const/16 v2, 0x64

    const/16 v3, 0x18

    if-gt v2, p1, :cond_3b

    if-gt p1, v1, :cond_3b

    .line 46
    iget v4, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_7d

    if-ne p1, v4, :cond_29

    .line 47
    monitor-exit p0

    return-void

    .line 52
    :cond_29
    :try_start_29
    const-string v4, "PerfettoLogging"

    const/4 v5, 0x2

    invoke-static {v3, v5, v4}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 55
    const-string v4, "debug.perfmond.atrace"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    .line 58
    const/4 p1, 0x0

    .line 62
    .end local p0    # "this":Lcom/android/server/ssrm/fgapps/PerformanceLogging;
    :cond_3b
    const/4 v4, 0x4

    if-eq p1, v4, :cond_75

    const/4 v4, 0x5

    if-ne p1, v4, :cond_42

    goto :goto_75

    .line 70
    :cond_42
    iget v4, p0, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->mTracingMode:I

    if-ne v4, v2, :cond_4d

    .line 71
    const-string v1, "PerformanceLogging was disabled"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_7d

    .line 72
    monitor-exit p0

    return-void

    .line 76
    :cond_4d
    const/16 v0, 0x65

    if-ne v4, v0, :cond_6b

    .line 77
    const/4 v0, 0x3

    if-ne p1, v0, :cond_61

    .line 78
    :try_start_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/PerformanceLogging;->createAtraceName(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "atraceName":Ljava/lang/String;
    const-string v1, "debug.perfmond.atrace.name"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v0    # "atraceName":Ljava/lang/String;
    :cond_61
    const-string v0, "debug.perfmond.atrace"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 82
    :cond_6b
    if-ne v4, v1, :cond_73

    .line 83
    int-to-short v0, p1

    const-string v1, "PerfettoLogging"

    invoke-static {v3, v0, v1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V
    :try_end_73
    .catchall {:try_start_54 .. :try_end_73} :catchall_7d

    .line 86
    :cond_73
    :goto_73
    monitor-exit p0

    return-void

    .line 64
    :cond_75
    :goto_75
    int-to-short v0, p1

    :try_start_76
    const-string v1, "PerfettoLogging"

    invoke-static {v3, v0, v1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_7d

    .line 66
    monitor-exit p0

    return-void

    .line 41
    .end local p1    # "type":I
    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
