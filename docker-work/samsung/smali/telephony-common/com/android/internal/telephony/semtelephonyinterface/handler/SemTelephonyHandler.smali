.class public Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;
.super Ljava/lang/Object;
.source "SemTelephonyHandler.java"


# instance fields
.field private final blacklist mHandlerHelper:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

.field private final blacklist mSemMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mHandlerHelper:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCallback()Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setSemMainThreadHandler(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, -0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 6

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_28

    .line 64
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    monitor-enter v0

    .line 70
    :catch_1b
    :goto_1b
    :try_start_1b
    iget-object p0, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_25

    if-nez p0, :cond_23

    .line 72
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_1b
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    goto :goto_1b

    .line 77
    :cond_23
    :try_start_23
    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw p0

    .line 61
    :cond_28
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This method will deadlock if called from the main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendRequestAsync(ILjava/lang/Object;Landroid/os/WorkSource;)V
    .registers 5

    .line 102
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;-><init>(Ljava/lang/Object;Landroid/os/WorkSource;)V

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendRequestAsync(ILjava/lang/Object;Ljava/lang/Integer;)V
    .registers 5

    .line 92
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendRequestAsyncDelayed(IJ)V
    .registers 4

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
