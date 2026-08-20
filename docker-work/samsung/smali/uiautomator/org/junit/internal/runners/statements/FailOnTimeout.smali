.class public Lorg/junit/internal/runners/statements/FailOnTimeout;
.super Lorg/junit/runners/model/Statement;
.source "FailOnTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;,
        Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    }
.end annotation


# instance fields
.field private final originalStatement:Lorg/junit/runners/model/Statement;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:J


# direct methods
.method static bridge synthetic -$$Nest$fgetoriginalStatement(Lorg/junit/internal/runners/statements/FailOnTimeout;)Lorg/junit/runners/model/Statement;
    .registers 1

    iget-object p0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    return-object p0
.end method

.method private constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V
    .registers 5
    .param p1, "builder"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .param p2, "statement"    # Lorg/junit/runners/model/Statement;

    .line 39
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 40
    iput-object p2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    .line 41
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->-$$Nest$fgettimeout(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    .line 42
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->-$$Nest$fgetunit(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;Lorg/junit/internal/runners/statements/FailOnTimeout-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runners/model/Statement;J)V
    .registers 6
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;
    .param p2, "timeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-static {}, Lorg/junit/internal/runners/statements/FailOnTimeout;->builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    .line 37
    return-void
.end method

.method public static builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .registers 2

    .line 24
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder-IA;)V

    return-object v0
.end method

.method private createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;
    .registers 7
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 134
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Lorg/junit/runners/model/TestTimedOutException;

    iget-wide v2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    iget-object v4, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lorg/junit/runners/model/TestTimedOutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 135
    .local v1, "currThreadException":Ljava/lang/Exception;
    if-eqz v0, :cond_15

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 139
    :cond_15
    return-object v1
.end method

.method private getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;
    .registers 7
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Thread;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 117
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Throwable;>;"
    :try_start_0
    iget-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 118
    iget-object v2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 120
    :cond_11
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_17} :catch_24
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_17} :catch_1e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 127
    :catch_18
    move-exception v0

    .line 128
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-direct {p0, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;->createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1e
    move-exception v0

    .line 126
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 122
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_24
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    return-object v0
.end method


# virtual methods
.method public evaluate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout;Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement-IA;)V

    .line 99
    .local v0, "callable":Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 100
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Throwable;>;"
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Time-limited test"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 101
    .local v2, "thread":Ljava/lang/Thread;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 102
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 103
    invoke-virtual {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->awaitStarted()V

    .line 104
    invoke-direct {p0, v1, v2}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;

    move-result-object v3

    .line 105
    .local v3, "throwable":Ljava/lang/Throwable;
    if-nez v3, :cond_23

    .line 108
    return-void

    .line 106
    :cond_23
    throw v3
.end method
