.class final Lcom/android/server/speech/RemoteSpeechRecognitionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteSpeechRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/speech/IRecognitionService;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallingUid:I

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnected:Z

.field private mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mListener:Landroid/speech/IRecognitionListener;

.field private final mLock:Ljava/lang/Object;

.field private mRecordingInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSessionInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0nzhPX_uA-_UFkVFgFUMgPMK3uA(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;Landroid/speech/IRecognitionService;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$startListening$1(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;Landroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AxxEYUaC5NuEQ22e9YBtWnTaJI4(Landroid/content/Intent;Landroid/speech/IRecognitionService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$triggerModelDownload$6(Landroid/content/Intent;Landroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C8zmeWkM52Cgyuba1m7fqDDnmQI(Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/speech/IRecognitionService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$cancel$4(Landroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3s64UJSh0ls7qeuWqUJ2UXN0q8(Lcom/android/server/speech/RemoteSpeechRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$startListening$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$IPjx8Iq-V2jlODygJkXmGYMIlLA(Landroid/speech/IRecognitionListener;ZLandroid/speech/IRecognitionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$cancel$3(Landroid/speech/IRecognitionListener;ZLandroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQL4JUzTcWi3xqgkfcEtVz4KlSE(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/speech/IRecognitionService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$stopListening$2(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iH9uQ_cp0hmqsfCHojSHXSY_jt4(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/speech/IRecognitionService;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->lambda$checkRecognitionSupport$5(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/speech/IRecognitionService;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .registers 13

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.RecognitionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;-><init>()V

    const v5, 0x4101001

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 68
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 44
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 77
    iput p4, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mCallingUid:I

    .line 78
    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic lambda$cancel$3(Landroid/speech/IRecognitionListener;ZLandroid/speech/IRecognitionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-interface {p2, p0, p1}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    return-void
.end method

.method private synthetic lambda$cancel$4(Landroid/speech/IRecognitionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public static synthetic lambda$checkRecognitionSupport$5(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/speech/IRecognitionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-interface {p2, p0, p1}, Landroid/speech/IRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    return-void
.end method

.method private synthetic lambda$startListening$0()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->resetStateLocked()V

    .line 126
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static synthetic lambda$startListening$1(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;Landroid/speech/IRecognitionService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-interface {p3, p0, p1, p2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method

.method public static synthetic lambda$stopListening$2(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/speech/IRecognitionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-interface {p1, p0}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method public static synthetic lambda$triggerModelDownload$6(Landroid/content/Intent;Landroid/speech/IRecognitionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-interface {p1, p0}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;)V

    return-void
.end method

.method public static tryRespondWithError(Landroid/speech/IRecognitionListener;I)V
    .registers 5

    if-eqz p0, :cond_1c

    .line 300
    :try_start_2
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1c

    :catch_6
    move-exception p0

    .line 303
    sget-object v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to respond with an error %d to the client"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public cancel(Landroid/speech/IRecognitionListener;Z)V
    .registers 6

    .line 179
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_9

    const/16 v0, 0xb

    .line 180
    invoke-static {p1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_c
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_12

    .line 188
    monitor-exit v0

    return-void

    .line 191
    :cond_12
    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_29

    .line 192
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string p2, "#cancel called with an unexpected listener"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    .line 193
    invoke-static {p1, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 194
    monitor-exit v0

    return-void

    .line 198
    :cond_29
    iget-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 200
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;-><init>(Landroid/speech/IRecognitionListener;Z)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 203
    iput-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 206
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-eqz p2, :cond_47

    .line 210
    new-instance p1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 212
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V
    .registers 4

    .line 219
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_16

    const/16 p0, 0xb

    .line 221
    :try_start_6
    invoke-interface {p2, p0}, Landroid/speech/IRecognitionSupportCallback;->onError(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception p0

    .line 223
    sget-object p1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string p2, "Failed to report the connection broke to the caller."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_15
    return-void

    .line 228
    :cond_16
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;-><init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getServiceComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 40
    check-cast p1, Landroid/speech/IRecognitionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->onServiceConnectionStatusChanged(Landroid/speech/IRecognitionService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/speech/IRecognitionService;Z)V
    .registers 4

    .line 256
    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 266
    iget-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-nez p2, :cond_1c

    .line 268
    :try_start_7
    iget-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez p2, :cond_14

    .line 269
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string p2, "Connection to speech recognition service lost, but no #startListening has been invoked yet."

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    monitor-exit p1

    return-void

    :cond_14
    const/16 v0, 0xb

    .line 274
    invoke-static {p2, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 276
    invoke-virtual {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->resetStateLocked()V

    .line 278
    :cond_1c
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final resetStateLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    .line 288
    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_9

    .line 246
    monitor-exit v0

    return-void

    .line 248
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0, v1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    return-void

    :catchall_f
    move-exception p0

    .line 248
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 7

    if-nez p2, :cond_a

    .line 98
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string p1, "#startListening called with no preceding #setListening - ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_14

    const/16 p0, 0xb

    .line 103
    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    return-void

    .line 107
    :cond_14
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_17
    iget-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    if-eqz v1, :cond_29

    .line 109
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string p1, "#startListening called while listening is in progress."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    .line 110
    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 111
    monitor-exit v0

    return-void

    :cond_29
    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 117
    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    .line 118
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;)V

    invoke-direct {v1, p2, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;-><init>(Landroid/speech/IRecognitionListener;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 131
    new-instance p2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1, v1, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda7;-><init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_17 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public stopListening(Landroid/speech/IRecognitionListener;)V
    .registers 6

    .line 144
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_a

    const/16 p0, 0xb

    .line 145
    invoke-static {p1, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    return-void

    .line 149
    :cond_a
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_d
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    const/4 v2, 0x5

    if-nez v1, :cond_1e

    .line 151
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v1, "#stopListening called with no preceding #startListening - ignoring"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 153
    monitor-exit v0

    return-void

    .line 156
    :cond_1e
    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_34

    .line 157
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v1, "#stopListening called with an unexpected listener"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 159
    monitor-exit v0

    return-void

    .line 162
    :cond_34
    iget-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    if-nez p1, :cond_41

    .line 163
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string p1, "#stopListening called while listening isn\'t in progress, ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    :cond_41
    const/4 p1, 0x0

    .line 166
    iput-boolean p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 169
    iget-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 170
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 171
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_d .. :try_end_52} :catchall_50

    throw p0
.end method

.method public triggerModelDownload(Landroid/content/Intent;)V
    .registers 3

    .line 232
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_c

    .line 233
    sget-object p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string p1, "#downloadModel failed due to connection."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_c
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
