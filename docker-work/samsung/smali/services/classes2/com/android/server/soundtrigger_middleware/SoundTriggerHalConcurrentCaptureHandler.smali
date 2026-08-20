.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;
.super Ljava/lang/Object;
.source "SoundTriggerHalConcurrentCaptureHandler.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
.implements Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;
    }
.end annotation


# instance fields
.field public final mActiveModels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

.field public mCaptureState:Z

.field public final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder$DeathRecipient;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field public mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

.field public final mLoadedModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

.field public final mStartStopLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$gXpVJYA3xrHVN425BmPnOOfValY(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->lambda$abortAllActiveModels$0(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hYShtR2ZR-JIBzQEw76dF2hHnvY(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->lambda$linkToDeath$2(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7eVdTEhXPxLHg6UHxSw6OY6CvY(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->lambda$registerCallback$1(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackThread(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;)Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)V
    .registers 4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDeathRecipientMap:Ljava/util/Map;

    .line 118
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    .line 123
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 124
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    .line 125
    invoke-interface {p2, p0}, Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;->registerListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCaptureState:Z

    return-void
.end method

.method public static synthetic lambda$abortAllActiveModels$0(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V
    .registers 2

    .line 190
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->notifyAbort(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V

    return-void
.end method

.method private synthetic lambda$linkToDeath$2(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 223
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda4;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$registerCallback$1(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3

    .line 217
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static notifyAbort(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 365
    :cond_3
    iget v0, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->type:I

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    goto :goto_1e

    .line 367
    :cond_b
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->callback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newAbortEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    goto :goto_1e

    .line 371
    :cond_15
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->callback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 372
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newAbortPhraseEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v0

    .line 371
    invoke-interface {p1, p0, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public final abortAllActiveModels()V
    .registers 5

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_41

    .line 185
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 187
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;

    .line 190
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;)V

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->push(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_41
    move-exception p0

    .line 183
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public detach()V
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 380
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;->unregisterListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)V

    return-void
.end method

.method public flushCallbacks()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->flushCallbacks()V

    .line 283
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->flush()V

    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V

    return-void
.end method

.method public getModelParameter(II)I
    .registers 3

    .line 402
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    .line 392
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 417
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    .line 223
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Landroid/os/IBinder$DeathRecipient;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v1, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 225
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    .line 204
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper-IA;)V

    invoke-interface {v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    .line 205
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;-><init>(ILcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackWrapper-IA;)V

    invoke-interface {v0, p1, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    .line 197
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;-><init>(ILcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method public onCaptureStateChange(Z)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_9

    .line 163
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->abortAllActiveModels()V

    goto :goto_10

    .line 165
    :cond_9
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    if-eqz v1, :cond_10

    .line 166
    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    .line 169
    :cond_10
    :goto_10
    iput-boolean p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCaptureState:Z

    .line 170
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    .line 412
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public reboot()V
    .registers 1

    .line 387
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->reboot()V

    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 3

    .line 217
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mGlobalCallback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 218
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    return-void
.end method

.method public setModelParameter(III)V
    .registers 4

    .line 407
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V

    return-void
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 8

    .line 131
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25

    .line 133
    :try_start_6
    iget-boolean v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCaptureState:Z

    if-nez v2, :cond_1b

    .line 136
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 139
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_25

    return-void

    .line 134
    :cond_1b
    :try_start_1b
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0

    :catchall_22
    move-exception p0

    .line 138
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw p0

    :catchall_25
    move-exception p0

    .line 139
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public stopRecognition(I)V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mStartStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    .line 147
    :try_start_6
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mActiveModels:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 148
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1f

    if-eqz v2, :cond_18

    .line 151
    :try_start_13
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v1, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 153
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_22

    .line 156
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mCallbackThread:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$CallbackThread;->flush()V

    return-void

    :catchall_1f
    move-exception p0

    .line 148
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0

    :catchall_22
    move-exception p0

    .line 153
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V

    return-void
.end method
