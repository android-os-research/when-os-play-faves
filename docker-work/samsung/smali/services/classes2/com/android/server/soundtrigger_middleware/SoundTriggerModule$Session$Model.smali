.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Model"
.end annotation


# instance fields
.field public mHandle:I

.field public mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

.field public mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public mType:I

.field public final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;


# direct methods
.method public static bridge synthetic -$$Nest$mforceRecognitionEvent(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->forceRecognitionEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetParameter(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getParameter(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->load(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->load(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mqueryModelParameterSupport(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->queryModelParameterSupport(I)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetParameter(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setParameter(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartRecognition(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger/RecognitionConfig;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->startRecognition(Landroid/media/soundtrigger/RecognitionConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopRecognition(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->stopRecognition()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munload(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->unload()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const/4 p1, -0x1

    .line 381
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    return-void
.end method


# virtual methods
.method public final forceRecognitionEvent()V
    .registers 3

    .line 506
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v0

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    if-eq v0, v1, :cond_9

    return-void

    .line 510
    :cond_9
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->forceRecognitionEvent(I)V

    return-void
.end method

.method public final getParameter(I)I
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 521
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlModelParameter(I)I

    move-result p1

    .line 520
    invoke-interface {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getModelParameter(II)I

    move-result p0

    return p0
.end method

.method public final getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-object p0
.end method

.method public final load(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .registers 3

    .line 406
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 407
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p2, p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    const/4 p1, 0x0

    .line 408
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mType:I

    .line 409
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 410
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;

    move-result-object p1

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    return p0
.end method

.method public final load(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .registers 3

    .line 396
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 397
    iget-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p2, p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p1

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    const/4 p1, 0x1

    .line 398
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mType:I

    .line 399
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 400
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;

    move-result-object p1

    iget p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    return p0
.end method

.method public modelUnloaded(I)V
    .registers 3

    .line 576
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 577
    :try_start_5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object p0

    .line 578
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_19

    if-eqz p0, :cond_18

    .line 583
    :try_start_e
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception p0

    .line 587
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_18
    :goto_18
    return-void

    :catchall_19
    move-exception p0

    .line 578
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .registers 4

    .line 554
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter p1

    .line 555
    :try_start_5
    iget-object v0, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v0, :cond_10

    .line 556
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 558
    :cond_10
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v0

    .line 559
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_30

    if-eqz v0, :cond_2f

    .line 564
    :try_start_19
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object p1

    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-interface {p1, v0, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception p0

    .line 569
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2f
    :goto_2f
    return-void

    :catchall_30
    move-exception p0

    .line 559
    :try_start_31
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final queryModelParameterSupport(I)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object p0

    return-object p0
.end method

.method public recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .registers 4

    .line 533
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter p1

    .line 534
    :try_start_5
    iget-boolean v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v0, :cond_e

    .line 535
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 537
    :cond_e
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v0

    .line 538
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_28

    if-eqz v0, :cond_27

    .line 542
    :try_start_17
    iget p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-interface {v0, p1, p2, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception p0

    .line 546
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception p0

    .line 538
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final setParameter(II)V
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 516
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlModelParameter(I)I

    move-result p1

    .line 515
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->setModelParameter(III)V

    return-void
.end method

.method public final setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 391
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public final startRecognition(Landroid/media/soundtrigger/RecognitionConfig;)V
    .registers 6

    .line 425
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v3, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mDeviceHandle:I

    iget v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mIoHandle:I

    invoke-interface {v0, v1, v3, v2, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 427
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    return-void
.end method

.method public final stopRecognition()V
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 432
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v1

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    if-ne v1, v2, :cond_f

    .line 434
    monitor-exit v0

    return-void

    .line 436
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_91

    .line 438
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v0, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->stopRecognition(I)V

    .line 471
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v1

    .line 473
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v0

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2d

    move v0, v3

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 474
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_8e

    if-eqz v0, :cond_7f

    .line 477
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 479
    :try_start_39
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mType:I

    if-eqz v0, :cond_6c

    if-ne v0, v3, :cond_53

    .line 481
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newAbortEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V

    goto :goto_7f

    .line 490
    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_6c
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 486
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newAbortPhraseEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    .line 485
    invoke-interface {v0, v1, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_7f} :catch_7f

    .line 497
    :catch_7f
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 498
    :try_start_84
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 499
    monitor-exit v0

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_8b

    throw p0

    :catchall_8e
    move-exception p0

    .line 474
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p0

    :catchall_91
    move-exception p0

    .line 436
    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p0
.end method

.method public final unload()I
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->-$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v0, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->unloadSoundModel(I)V

    .line 420
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    return p0
.end method
