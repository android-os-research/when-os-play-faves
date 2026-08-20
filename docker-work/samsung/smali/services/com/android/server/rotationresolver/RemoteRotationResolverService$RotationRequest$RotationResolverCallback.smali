.class public Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;
.super Landroid/service/rotationresolver/IRotationResolverCallback$Stub;
.source "RemoteRotationResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotationResolverCallback"
.end annotation


# instance fields
.field public final mRequestWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .registers 3

    .line 159
    invoke-direct {p0}, Landroid/service/rotationresolver/IRotationResolverCallback$Stub;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 208
    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmLock(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_d
    invoke-static {p0, p1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fputmCancellation(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/os/ICancellationSignal;)V

    .line 210
    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmCancellationSignalInternal(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Landroid/os/CancellationSignal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_29

    if-eqz p0, :cond_27

    .line 213
    :try_start_1a
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_29

    goto :goto_27

    .line 215
    :catch_1e
    :try_start_1e
    invoke-static {}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to cancel the remote request."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public onFailure(I)V
    .registers 7

    .line 186
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 187
    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmLock(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 188
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-eqz v1, :cond_1c

    .line 189
    invoke-static {}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Callback received after the rotation request is fulfilled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v0

    return-void

    :cond_1c
    const/4 v1, 0x1

    .line 192
    iput-boolean v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 193
    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {v1, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmRequestStartTimeMillis(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 196
    iget-object v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 197
    invoke-virtual {v3}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 198
    invoke-virtual {p0}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result p0

    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->errorCodeToProto(I)I

    move-result v4

    .line 196
    invoke-static {v3, p0, v4, v1, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStatsWithTimeToCalculate(IIIJ)V

    .line 200
    invoke-static {}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFailure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeToCalculate:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return-void

    :catchall_74
    move-exception p0

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_d .. :try_end_76} :catchall_74

    throw p0
.end method

.method public onSuccess(I)V
    .registers 7

    .line 165
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 166
    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmLock(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    if-eqz v1, :cond_1c

    .line 168
    invoke-static {}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Callback received after the rotation request is fulfilled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v0

    return-void

    :cond_1c
    const/4 v1, 0x1

    .line 171
    iput-boolean v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 172
    iget-object v1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {v1, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onSuccess(I)V

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->-$$Nest$fgetmRequestStartTimeMillis(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 175
    iget-object v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 176
    invoke-virtual {v3}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 177
    invoke-virtual {p0}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    move-result p0

    .line 178
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result v4

    .line 175
    invoke-static {v3, p0, v4, v1, v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStatsWithTimeToCalculate(IIIJ)V

    .line 179
    invoke-static {}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeToCalculate:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-exit v0

    return-void

    :catchall_74
    move-exception p0

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_d .. :try_end_76} :catchall_74

    throw p0
.end method
