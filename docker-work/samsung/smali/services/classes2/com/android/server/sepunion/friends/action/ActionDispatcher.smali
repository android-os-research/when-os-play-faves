.class public Lcom/android/server/sepunion/friends/action/ActionDispatcher;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActionDispatcher"


# instance fields
.field public volatile mAcceptable:Z

.field public final mAccessMgr:Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

.field public mDefault:Lcom/android/server/sepunion/friends/action/ActionExecutable;

.field public mExecService:Ljava/util/concurrent/ExecutorService;

.field public final mExecutes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sepunion/friends/action/ActionExecutable;",
            ">;"
        }
    .end annotation
.end field

.field public mLogger:Lcom/android/server/sepunion/friends/common/Logger;

.field public final mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;Lcom/android/server/sepunion/friends/common/Logger;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    .line 28
    iput-object p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAccessMgr:Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

    .line 29
    iput-object p2, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAcceptable:Z

    return-void
.end method


# virtual methods
.method public varargs add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .registers 7

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 46
    array-length v0, p2

    if-lez v0, :cond_15

    .line 47
    array-length v0, p2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    aget v2, p2, v1

    .line 48
    iget-object v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-object p0
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    .line 66
    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAcceptable:Z

    const/4 v1, 0x0

    const-string v2, "ActionDispatcher"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_24

    .line 67
    iget-object p0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    const-string/jumbo p1, "skipped action 0x%x - not ready"

    invoke-static {v2, p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-interface {p0, v5, v6, p1, p2}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_24
    new-array v0, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v5, "execute 0x%x"

    invoke-static {v2, v5, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    :try_start_31
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAccessMgr:Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isAccessible(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 79
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mDefault:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/sepunion/friends/action/ActionExecutable;

    if-eqz p2, :cond_4d

    const-string/jumbo v0, "sysSvcVer"

    const/4 v5, 0x4

    .line 82
    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4d
    if-eqz v7, :cond_9f

    .line 84
    invoke-interface {v7, p2, v4, p1}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->preExecute(Landroid/os/Bundle;II)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 85
    invoke-interface {v7, p1}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->executeOnSameThread(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 86
    invoke-interface {v7, p2, v4, p1}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_9f

    .line 88
    :cond_60
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v12, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, v12

    move v6, v0

    move-object v8, p2

    move v10, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;-><init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;IILcom/android/server/sepunion/friends/action/ActionDispatcher$Task-IA;)V

    invoke-interface {p0, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    invoke-static {v3}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo p0, "submit task[%d]"

    new-array p1, v3, [Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {v2, p0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_9f

    .line 76
    :cond_8b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not accessible"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_93
    .catchall {:try_start_31 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p0

    .line 97
    instance-of p1, p0, Landroid/os/RemoteException;

    if-nez p1, :cond_a0

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_a0

    .line 101
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_9f
    :goto_9f
    return-object v1

    .line 98
    :cond_a0
    throw p0
.end method

.method public final getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_14

    .line 35
    monitor-enter p0

    .line 36
    :try_start_5
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_f

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    .line 39
    :cond_f
    monitor-exit p0

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0

    .line 42
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAcceptable:Z

    return-object p0
.end method

.method public setDefault(Lcom/android/server/sepunion/friends/action/ActionExecutable;)Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mDefault:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    return-object p0
.end method
