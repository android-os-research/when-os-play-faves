.class public Lcom/android/server/backup/transport/TransportStatusCallback;
.super Lcom/android/internal/backup/ITransportStatusCallback$Stub;
.source "TransportStatusCallback.java"


# static fields
.field public static final OPERATION_STATUS_DEFAULT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TransportStatusCallback"

.field public static final TIMEOUT_MILLIS:I = 0x493e0


# instance fields
.field public mHasCompletedOperation:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mOperationStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mOperationTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 36
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    const v0, 0x493e0

    .line 40
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 36
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 45
    iput p1, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getOperationStatus()I
    .registers 7

    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-eqz v0, :cond_9

    .line 63
    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_40

    monitor-exit p0

    return v0

    .line 66
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationTimeout:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_40

    int-to-long v0, v0

    .line 68
    :goto_c
    :try_start_c
    iget-boolean v2, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-nez v2, :cond_2c

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2c

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 71
    iget-boolean v4, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    if-eqz v4, :cond_25

    .line 72
    iget v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_23} :catch_34
    .catchall {:try_start_c .. :try_end_23} :catchall_40

    monitor-exit p0

    return v0

    .line 74
    :cond_25
    :try_start_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    goto :goto_c

    :cond_2c
    const-string v0, "TransportStatusCallback"

    const-string v1, "Couldn\'t get operation status from transport"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_33} :catch_34
    .catchall {:try_start_25 .. :try_end_33} :catchall_40

    goto :goto_3c

    :catch_34
    move-exception v0

    :try_start_35
    const-string v1, "TransportStatusCallback"

    const-string v2, "Couldn\'t get operation status from transport: "

    .line 79
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_40

    :goto_3c
    const/16 v0, -0x3e8

    .line 82
    monitor-exit p0

    return v0

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOperationComplete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/TransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 59
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOperationCompleteWithStatus(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 50
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 51
    iput p1, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 54
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 86
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    .line 87
    iput v0, p0, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 88
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
