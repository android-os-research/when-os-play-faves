.class public Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final context:Landroid/content/Context;

.field public final service:Landroid/os/IBinder;

.field public final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 29
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    return-void
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p0, :cond_43

    if-eqz p1, :cond_3b

    .line 83
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 85
    new-instance v2, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;

    invoke-direct {v2, v0}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 106
    invoke-virtual {p0, p1, v2, v1, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 111
    new-instance p1, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;

    .line 112
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    invoke-direct {p1, p0, v2, p2}, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/IBinder;)V

    return-object p1

    .line 109
    :cond_24
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not bind to: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 81
    :cond_3b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "intent == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_43
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 2

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_d

    goto :goto_15

    .line 119
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling this from your main thread can lead to deadlock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->context:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 44
    :cond_5
    :try_start_5
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public getService()Landroid/os/IBinder;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->service:Landroid/os/IBinder;

    return-object p0
.end method
