.class abstract Lorg/junit/internal/requests/MemoizingRequest;
.super Lorg/junit/runner/Request;
.source "MemoizingRequest.java"


# instance fields
.field private volatile runner:Lorg/junit/runner/Runner;

.field private final runnerLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method protected abstract createRunner()Lorg/junit/runner/Runner;
.end method

.method public final getRunner()Lorg/junit/runner/Runner;
    .registers 3

    .line 15
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    if-nez v0, :cond_20

    .line 16
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    :try_start_9
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    if-nez v0, :cond_13

    .line 19
    invoke-virtual {p0}, Lorg/junit/internal/requests/MemoizingRequest;->createRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_19

    .line 22
    :cond_13
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    goto :goto_20

    .line 22
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    throw v0

    .line 25
    :cond_20
    :goto_20
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    return-object v0
.end method
