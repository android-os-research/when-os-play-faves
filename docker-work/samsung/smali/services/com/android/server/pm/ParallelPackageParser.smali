.class public Lcom/android/server/pm/ParallelPackageParser;
.super Ljava/lang/Object;
.source "ParallelPackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    }
.end annotation


# static fields
.field public static final MAX_THREADS:I = 0x4

.field public static final QUEUE_CAPACITY:I = 0x1e


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mFrameworkSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mInterruptedInThread:Ljava/lang/String;

.field public final mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

.field public final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/server/pm/ParallelPackageParser$ParseResult;",
            ">;"
        }
    .end annotation
.end field

.field public mUseCaches:Z


# direct methods
.method public static synthetic $r8$lambda$RlSHohckYCKFYLTIR8oHENWLew0(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->lambda$submit$0(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mUseCaches:Z

    .line 69
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

    .line 70
    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 71
    iput-object p3, p0, Lcom/android/server/pm/ParallelPackageParser;->mFrameworkSplits:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$submit$0(Ljava/io/File;I)V
    .registers 7

    .line 115
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v0}, Lcom/android/server/pm/ParallelPackageParser$ParseResult;-><init>()V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parallel parsePackage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 118
    :try_start_22
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2b

    goto :goto_2e

    :catchall_2b
    move-exception p1

    .line 121
    :try_start_2c
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_49

    .line 123
    :goto_2e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    :try_start_31
    iget-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_48

    .line 128
    :catch_37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    :goto_48
    return-void

    :catchall_49
    move-exception p0

    .line 123
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 124
    throw p0
.end method

.method public static makeExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 3

    const/4 v0, 0x4

    const-string/jumbo v1, "package-parsing-thread"

    const/4 v2, -0x2

    .line 52
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parsePackage(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

    iget-boolean p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mUseCaches:Z

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public setUseCaches(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mUseCaches:Z

    return-void
.end method

.method public submit(Ljava/io/File;I)V
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .registers 4

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 100
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    return-object p0

    .line 98
    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
