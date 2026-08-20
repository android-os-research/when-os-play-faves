.class public final Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "NonRequiredPackageDeleteObserver.java"


# static fields
.field public static final PACKAGE_DELETE_TIMEOUT_SEC:I = 0x64


# instance fields
.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mSuccess:Z


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 40
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public awaitPackagesDeletion()Z
    .registers 5

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_19

    :catch_a
    move-exception v0

    const-string v1, "DevicePolicyManager"

    const-string v2, "Interrupted while waiting for package deletion"

    .line 65
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 68
    :goto_19
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mSuccess:Z

    return p0
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "DevicePolicyManager"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1f

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete package: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void

    .line 52
    :cond_1f
    iget-object p1, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2e

    .line 54
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mSuccess:Z

    const-string p1, "All non-required system apps with launcher icon, and all disallowed apps have been uninstalled."

    .line 55
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2e
    iget-object p0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
