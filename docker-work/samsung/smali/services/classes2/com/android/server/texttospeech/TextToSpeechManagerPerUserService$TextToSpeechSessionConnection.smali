.class Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "TextToSpeechManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextToSpeechSessionConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/speech/tts/ITextToSpeechService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

.field private final mEngine:Ljava/lang/String;

.field private final mUnbindOnDeathHandler:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$IwNadB2AKFiF4pZBb1auMUhZ5BI(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$LyLDFarUFW06wNLitGIN3wzUoc8(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->lambda$start$4(Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WoVGT6awyRot_KYgo7y6VqwmkCM(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;Landroid/speech/tts/ITextToSpeechService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->lambda$start$2(Landroid/speech/tts/ITextToSpeechService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dLf_g2tpSZdhjOt35dUMFUlJG2U(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$lQVmTEVQ-kjTokfOe3RAt6QDees(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->lambda$start$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindEngine(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->unbindEngine(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 13

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TTS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    .line 96
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 101
    iput-object p3, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mEngine:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

    .line 103
    new-instance p1, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V

    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mUnbindOnDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const-string v0, "client process death is reported"

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->unbindEngine(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$start$1()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

    const-string v0, "Failed creating TTS session"

    invoke-interface {p0, v0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$start$2(Landroid/speech/tts/ITextToSpeechService;)V
    .registers 5

    if-eqz p1, :cond_47

    .line 113
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected successfully to TTS engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

    new-instance v1, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$1;

    invoke-direct {v1, p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$1;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V

    .line 121
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 116
    invoke-interface {v0, v1, p1}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onConnected(Landroid/speech/tts/ITextToSpeechSession;Landroid/os/IBinder;)V

    .line 123
    iget-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mUnbindOnDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_58

    :catch_37
    move-exception p1

    .line 125
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error notifying the client on connection"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "failed communicating with the client - process is dead"

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->unbindEngine(Ljava/lang/String;)V

    goto :goto_58

    .line 132
    :cond_47
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to obtain TTS engine binder"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p1, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V

    invoke-static {p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->runSessionCallbackMethod(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;)V

    :goto_58
    return-void
.end method

.method private synthetic lambda$start$3(Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed creating TTS session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-interface {p0, p1}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$start$4(Ljava/lang/Throwable;)Ljava/lang/Void;
    .registers 4

    .line 138
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTS engine binding error"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->runSessionCallbackMethod(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 5

    .line 91
    new-instance v0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    invoke-virtual {v0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->start()V

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 82
    check-cast p1, Landroid/speech/tts/ITextToSpeechService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->onServiceConnectionStatusChanged(Landroid/speech/tts/ITextToSpeechService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/speech/tts/ITextToSpeechService;Z)V
    .registers 3

    if-nez p2, :cond_2e

    .line 151
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Disconnected from TTS engine"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda3;-><init>(Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    invoke-static {p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->runSessionCallbackMethod(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;)V

    .line 155
    :try_start_18
    iget-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mCallback:Landroid/speech/tts/ITextToSpeechSessionCallback;

    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mUnbindOnDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_2e

    .line 157
    :catch_25
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "The death recipient was not linked."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final start()V
    .registers 4

    .line 107
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to start connection to TTS engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;)V

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final unbindEngine(Ljava/lang/String;)V
    .registers 5

    .line 168
    invoke-static {}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding TTS engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->mEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method
