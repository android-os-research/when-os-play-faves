.class public final Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;
.super Landroid/speech/tts/ITextToSpeechManager$Stub;
.source "TextToSpeechManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/texttospeech/TextToSpeechManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TextToSpeechManagerServiceStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;


# direct methods
.method public static synthetic $r8$lambda$sQ9315NPE2nE3-rwlPxkhHxCWhI(Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->lambda$createSession$0(Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V

    return-void
.end method

.method public static synthetic lambda$createSession$0(Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Service is not available for user"

    .line 72
    invoke-interface {p0, v0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/texttospeech/TextToSpeechManagerService;->access$000(Lcom/android/server/texttospeech/TextToSpeechManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_7
    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    .line 67
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 66
    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, v1}, Lcom/android/server/texttospeech/TextToSpeechManagerService;->access$100(Lcom/android/server/texttospeech/TextToSpeechManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;

    if-eqz p0, :cond_19

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->createSessionLocked(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    goto :goto_21

    .line 71
    :cond_19
    new-instance p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    invoke-static {p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->runSessionCallbackMethod(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;)V

    .line 74
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0
.end method
