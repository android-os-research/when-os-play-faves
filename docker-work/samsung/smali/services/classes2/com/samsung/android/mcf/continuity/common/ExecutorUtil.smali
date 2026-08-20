.class public Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$b;
    }
.end annotation


# static fields
.field public static final NUM_CALLBACK_THREAD:I = 0x1

.field public static final NUM_IO_THREAD:I = 0x40

.field public static final NUM_MAIN_THREAD:I = 0x1

.field public static final NUM_TIMEOUT_THREAD:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ExecutorUtil"

.field public static sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static sIsStarted:Z


# direct methods
.method public static synthetic $r8$lambda$6llGNhb-3QxL5Ub8Vm01dzdDmw8(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->lambda$getThreadPoolExecutor$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WM0SqcRr3HxsX0WGMierBsNx81k(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->lambda$getScheduledThreadPoolExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "ExecutorMain: "

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-boolean v2, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSingleThreadPoolExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z
    .registers 4
    .param p0    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$b;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$a;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 p0, 0x1

    return p0

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExecutorUtil"

    const-string v0, "execute"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static executeOnCallback(Ljava/lang/Runnable;)Z
    .registers 4
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_d

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to execute : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExecutorUtil"

    const-string v2, "executeOnCallback"

    invoke-static {v0, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static executeOnIO(Ljava/lang/Runnable;)Z
    .registers 4
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_d

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to execute : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExecutorUtil"

    const-string v2, "executeOnIO"

    invoke-static {v0, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static executeOnMain(Ljava/lang/Runnable;)Z
    .registers 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static getScheduledThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    return-object v0
.end method

.method public static getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v8, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v8
.end method

.method public static synthetic lambda$getScheduledThreadPoolExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$getThreadPoolExecutor$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static schedule(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7
    .param p0    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$b;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$b;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$a;)V

    invoke-virtual {p0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExecutorUtil"

    const-string/jumbo p2, "schedule"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static schedule(Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->scheduleOnTimeout(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    if-nez p2, :cond_14

    const-string p0, "ExecutorUtil"

    const-string/jumbo p2, "scheduleOnIO"

    const-string p3, "null timer"

    invoke-static {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_14
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public static scheduleOnTimeout(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 5
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_d

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->schedule(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fail to schedule : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExecutorUtil"

    const-string/jumbo p2, "scheduleOnTimeout"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static shutdown()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExecutorUtil"

    const-string/jumbo v2, "shutdown"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_38

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_27

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_27
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_2e
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_35

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    :cond_38
    return-void
.end method

.method public static shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4
    .param p0    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown, but not executed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExecutorUtil"

    const-string/jumbo v2, "shutdown"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_31
    return-void
.end method

.method public static start()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExecutorUtil"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-nez v0, :cond_3d

    const-string v0, "ExecutorCallback: "

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v0, 0x40

    const-string v2, "ExecutorIO: "

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "ExecutorSchedule: "

    invoke-static {v0, v1, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getScheduledThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sput-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    :cond_3d
    return-void
.end method

.method public static submit(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .param p0    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$b;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$b;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$a;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExecutorUtil"

    const-string/jumbo v1, "submit"

    invoke-static {p1, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static submitOnIO(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_d

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->submit(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to submit : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExecutorUtil"

    const-string/jumbo v1, "submitOnIO"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
