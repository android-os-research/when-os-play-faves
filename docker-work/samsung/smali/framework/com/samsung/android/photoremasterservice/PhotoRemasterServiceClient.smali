.class public Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
.super Ljava/lang/Object;
.source "PhotoRemasterServiceClient.java"


# static fields
.field static final blacklist RESPONSE_TIME_OUT_SECOND_DEFAULT:J = 0xb4L

.field static final blacklist RESPONSE_TIME_OUT_SECOND_FOR_STOP:J = 0x13L

.field static final blacklist SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.photoremasterservice.PhotoRemasterService"

.field static final blacklist SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.photoremasterservice"

.field static final blacklist TAG:Ljava/lang/String; = "PhotoRemasterServiceClient"


# instance fields
.field private final blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisconnectionRequested:Z

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIncomingMessenger:Landroid/os/Messenger;

.field private blacklist mIsBound:Z

.field private final blacklist mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

.field private blacklist mServiceMessenger:Landroid/os/Messenger;

.field private blacklist mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectionRequested(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncomingMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIncomingMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 38
    new-instance v0, Lcom/samsung/android/photoremasterservice/ProgressObserver;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/ProgressObserver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

    .line 245
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private blacklist doGetServiceReturnValue(J)Landroid/os/Bundle;
    .registers 6
    .param p1, "timeOut"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 127
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_a} :catch_c

    .line 135
    .local v0, "retValue":Landroid/os/Bundle;
    nop

    .line 136
    return-object v0

    .line 128
    .end local v0    # "retValue":Landroid/os/Bundle;
    :catch_c
    move-exception v0

    .line 129
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ProgressObserver;->wasUpdateAndClear()Z

    move-result v1

    const-string v2, "PhotoRemasterServiceClient"

    if-eqz v1, :cond_1d

    .line 130
    const-string v1, "Wait again service return value because there has been update message."

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    goto :goto_0

    .line 133
    :cond_1d
    const-string v1, "Time Out! There is no response from service."

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    throw v0
.end method

.method private blacklist getServiceReturnValue()Landroid/os/Bundle;
    .registers 3

    .line 120
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getServiceReturnValue(J)Landroid/os/Bundle;
    .registers 9
    .param p1, "timeOut"    # J

    .line 143
    const-string v0, "PhotoRemasterServiceClient"

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->doGetServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, "retValue":Landroid/os/Bundle;
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 146
    invoke-static {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->isExceptionContained(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 147
    const-string v2, "Exception is received from service."

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "exception"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    .line 149
    .local v2, "exception":Ljava/lang/Exception;
    if-nez v2, :cond_2a

    .line 150
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown exception form service-server."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .end local p1    # "timeOut":J
    throw v3

    .line 153
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .restart local p1    # "timeOut":J
    :cond_2a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in PhotoRemaster Service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 154
    .local v3, "rtException":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 155
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 156
    nop

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .end local p1    # "timeOut":J
    throw v3
    :try_end_4e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_4e} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_4e} :catch_7a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_4e} :catch_4f

    .line 159
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v3    # "rtException":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .restart local p1    # "timeOut":J
    :cond_4e
    return-object v1

    .line 165
    .end local v1    # "retValue":Landroid/os/Bundle;
    :catch_4f
    move-exception v1

    .line 166
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is occurred at getServiceReturnValue()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 168
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_7a
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist isExceptionContained(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 111
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 112
    return v0

    .line 115
    :cond_4
    const-string v1, "exception"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist bind()V
    .registers 6

    monitor-enter p0

    .line 86
    :try_start_1
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Try Binding..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 89
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_4b

    .line 90
    monitor-exit p0

    return-void

    .line 93
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-eqz v0, :cond_22

    .line 94
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Already Bound."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_4b

    .line 95
    monitor-exit p0

    return-void

    .line 98
    :cond_22
    :try_start_22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.photoremasterservice"

    const-string v2, "com.samsung.android.photoremasterservice.PhotoRemasterService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    .line 102
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue()Landroid/os/Bundle;

    .line 105
    const-string v1, "PhotoRemasterServiceClient"

    const-string v2, "Service Binding is finished."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-boolean v4, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_4b

    .line 108
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "serviceMessage"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 193
    :try_start_1
    const-string v0, "PhotoRemasterServiceClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callService is called. message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->bind()V

    .line 198
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-nez v0, :cond_2e

    .line 199
    const-string v0, "PhotoRemasterServiceClient"

    const-string v2, "Service is not bounded!"

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_91

    .line 200
    monitor-exit p0

    return-object v1

    .line 204
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_3b

    .line 205
    const-string v0, "PhotoRemasterServiceClient"

    const-string v2, "ServiceMessenger is null!"

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_91

    .line 206
    monitor-exit p0

    return-object v1

    .line 229
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;ILandroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Service called!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Start waiting the return value."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x4

    if-ne p1, v0, :cond_60

    const-wide/16 v0, 0x13

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_64

    :cond_60
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .local v0, "retBundle":Landroid/os/Bundle;
    :goto_64
    if-eqz v0, :cond_80

    .line 241
    const-string v1, "PhotoRemasterServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service return value is received. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_3b .. :try_end_7e} :catchall_91

    .line 242
    monitor-exit p0

    return-object v0

    .line 235
    :cond_80
    :try_start_80
    const-string v1, "Service return bundle is null!"

    .line 236
    .local v1, "errorMsg":Ljava/lang/String;
    const-string v2, "PhotoRemasterServiceClient"

    const-string v3, "Service return bundle is null!"

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Service return bundle is null!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_91
    .catchall {:try_start_80 .. :try_end_91} :catchall_91

    .line 192
    .end local v0    # "retBundle":Landroid/os/Bundle;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local p1    # "serviceMessage":I
    .end local p2    # "bundle":Landroid/os/Bundle;
    :catchall_91
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist deinitServiceCall()V
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 78
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getProgressObserver()Lcom/samsung/android/photoremasterservice/ProgressObserver;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

    return-object v0
.end method

.method public declared-synchronized blacklist initServiceCall()V
    .registers 3

    monitor-enter p0

    .line 48
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhotoRemasterService Looper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Looper;)V

    .line 72
    .local v0, "incomingHandler":Landroid/os/Handler;
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 73
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIncomingMessenger:Landroid/os/Messenger;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 74
    monitor-exit p0

    return-void

    .line 47
    .end local v0    # "incomingHandler":Landroid/os/Handler;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 81
    :try_start_1
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is set."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 83
    monitor-exit p0

    return-void

    .line 80
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist unbindService()V
    .registers 3

    monitor-enter p0

    .line 175
    :try_start_1
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Try Unbinding..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 177
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_36

    .line 178
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :cond_15
    :try_start_15
    iget-boolean v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-nez v1, :cond_22

    .line 182
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Already unbound!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_36

    .line 183
    monitor-exit p0

    return-void

    .line 186
    :cond_22
    const/4 v1, 0x1

    :try_start_23
    iput-boolean v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    .line 187
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    .line 189
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Service is unbound."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_36

    .line 190
    monitor-exit p0

    return-void

    .line 174
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method
