.class public Lcom/samsung/android/server/pm/install/PdpUtils;
.super Ljava/lang/Object;
.source "PdpUtils.java"


# static fields
.field public static final INSTALLD_CONNECTION_TIMEOUT:J = 0xd2L


# direct methods
.method public static synthetic $r8$lambda$pVqkcDKoFW5eO8XgjtUU27AVsdY(Ljava/util/function/Supplier;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/pm/install/PdpUtils;->lambda$waitUntilInstalldConnected$0(Ljava/util/function/Supplier;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$waitUntilInstalldConnected$0(Ljava/util/function/Supplier;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "PackageManager"

    const-string v1, "installd not connected. Trying again"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    .line 26
    :try_start_15
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_0

    :catch_19
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 31
    :cond_1e
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static waitUntilInstalldConnected(Ljava/util/function/Supplier;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v2, 0xd2

    .line 34
    :try_start_13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string v2, "PackageManager"

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installd connected. Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_38} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_38} :catch_39

    goto :goto_48

    :catch_39
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    :catch_3e
    const/4 v0, 0x5

    const-string v1, "Timeout. Installd connection failed."

    .line 38
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 39
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_48
    const/4 p0, 0x0

    return p0
.end method
