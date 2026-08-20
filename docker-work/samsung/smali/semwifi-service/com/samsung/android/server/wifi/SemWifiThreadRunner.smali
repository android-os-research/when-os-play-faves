.class public Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
.super Ljava/lang/Object;
.source "SemWifiThreadRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final RUN_WITH_SCISSORS_TIMEOUT_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SemWifiThreadRunner"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$h8VDi9Y-ecLhfJ5yp4zDBCFrEBI(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->lambda$call$0(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static synthetic lambda$call$0(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V
    .registers 2

    .line 75
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private static runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;J)Z
    .registers 6

    if-eqz p1, :cond_29

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_21

    .line 163
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 164
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 168
    :cond_17
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    move-result p0

    return p0

    .line 160
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "runnable must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V

    const-wide/16 v2, 0xfa0

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 78
    iget-object p0, v0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    return-object p0

    .line 80
    :cond_17
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "Stack trace:"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p1, "SemWifiThreadRunner"

    const-string v0, "SemWifiThreadRunner.call() timed out!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public run(Ljava/lang/Runnable;)Z
    .registers 4

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xfa0

    .line 95
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->runWithScissors(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_c
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "Stack trace:"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p1, "SemWifiThreadRunner"

    const-string v0, "SemWifiThreadRunner.run() timed out!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
