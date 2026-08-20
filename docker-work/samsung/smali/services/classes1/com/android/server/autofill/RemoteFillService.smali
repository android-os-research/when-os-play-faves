.class final Lcom/android/server/autofill/RemoteFillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/autofill/IAutoFillService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoteFillService"

.field public static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field public static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFillRequestId:I


# direct methods
.method public static synthetic $r8$lambda$0TyWXMubfml43srdXSJGaC2a_G8(Lcom/android/server/autofill/RemoteFillService;Landroid/content/IntentSender;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$5(Landroid/content/IntentSender;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RJPZj0Fb_BGqt_SpkpyEpzz3mE4(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$2(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_rj0r8n2KuLQiX8aYOdICIRJ1HI(Lcom/android/internal/os/IResultReceiver;Landroid/service/autofill/IAutoFillService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSavedPasswordCountRequest$6(Lcom/android/internal/os/IResultReceiver;Landroid/service/autofill/IAutoFillService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bIuJSWKrOrIGPTrMFsTjx7sPZ6E(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$4(Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gnlMp01HzSOYQxSGAOFPCIAy6-Q(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$1(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kl-MGjPrX_tFnuG85fz60uEXUgw(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$3(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u9HVjGQc1x5sc6qU7ISdPBzaxxI(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$0(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchCancellationSignal(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V
    .registers 14

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p5, :cond_10

    const/high16 p5, 0x400000

    goto :goto_11

    :cond_10
    const/4 p5, 0x0

    :goto_11
    const/high16 v0, 0x100000

    or-int v5, p5, v0

    .line 82
    new-instance v7, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 80
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 60
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    const/high16 p1, -0x80000000

    .line 62
    iput p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 84
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 85
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private synthetic lambda$onFillRequest$0(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1e

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onFillRequest() for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteFillService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1e
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 147
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$1;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/server/autofill/RemoteFillService$1;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p4, p1, v1}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    return-object v0
.end method

.method private synthetic lambda$onFillRequest$1(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 181
    :try_start_4
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    const/high16 v1, -0x80000000

    .line 182
    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 183
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_5b

    if-nez p1, :cond_21

    .line 185
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p4

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 186
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result p2

    .line 185
    invoke-interface {p1, p4, p3, p0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    goto :goto_5a

    :cond_21
    const-string p3, "RemoteFillService"

    const-string v0, "Error calling on fill request"

    .line 188
    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    instance-of p3, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p3, :cond_3f

    .line 190
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 191
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestTimeout(I)V

    goto :goto_5a

    .line 192
    :cond_3f
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p3, :cond_4d

    .line 193
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    goto :goto_5a

    .line 195
    :cond_4d
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/CharSequence;)V

    :goto_5a
    return-void

    :catchall_5b
    move-exception p0

    .line 183
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method private synthetic lambda$onFillRequest$2(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .registers 13

    .line 179
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onSaveRequest$3(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "RemoteFillService"

    const-string v1, "calling onSaveRequest()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_b
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 206
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/RemoteFillService$2;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p2, p1, v1}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    return-object v0
.end method

.method private synthetic lambda$onSaveRequest$4(Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .registers 3

    if-nez p1, :cond_e

    .line 221
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    goto :goto_1d

    .line 223
    :cond_e
    iget-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 224
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-interface {p2, p0, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method private synthetic lambda$onSaveRequest$5(Landroid/content/IntentSender;Ljava/lang/Throwable;)V
    .registers 5

    .line 219
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$onSavedPasswordCountRequest$6(Lcom/android/internal/os/IResultReceiver;Landroid/service/autofill/IAutoFillService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    invoke-interface {p1, p0}, Landroid/service/autofill/IAutoFillService;->onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "Landroid/service/autofill/IAutoFillService;",
            "*>;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .registers 2

    .line 52
    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public cancelCurrentRequest()I
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 132
    iget p0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    goto :goto_13

    :cond_11
    const/high16 p0, -0x80000000

    .line 133
    :goto_13
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 134
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public destroy()V
    .registers 1

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public final dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 102
    :cond_3
    :try_start_3
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string p1, "RemoteFillService"

    const-string v0, "Error requesting a cancellation"

    .line 104
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .registers 8

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 139
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 141
    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    .line 171
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_21
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 176
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 177
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_33

    .line 179
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_33
    move-exception p0

    .line 177
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .registers 5

    .line 202
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    .line 218
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 219
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 230
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 52
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V
    .registers 4

    .line 91
    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_23

    :catch_4
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception calling onConnectedStateChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteFillService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method
