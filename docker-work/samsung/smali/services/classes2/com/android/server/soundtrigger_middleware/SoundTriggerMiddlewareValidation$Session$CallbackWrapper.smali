.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field public final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;


# direct methods
.method public static synthetic $r8$lambda$4WVBuI8zed_-zfi1lo5nihyJtVA(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->lambda$onRecognition$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8iNCLGyGl9YNglT_1NscsieKa2k(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->lambda$onPhraseRecognition$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .registers 3

    .line 717
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 720
    :try_start_7
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 722
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private synthetic lambda$onPhraseRecognition$1(I)V
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$mrestartIfIntercepted(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;I)V

    return-void
.end method

.method private synthetic lambda$onRecognition$0(I)V
    .registers 2

    .line 753
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$mrestartIfIntercepted(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;I)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 877
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public binderDied()V
    .registers 6

    .line 833
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 835
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v1

    .line 841
    :try_start_a
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 842
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    .line 844
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_d3

    const/4 v1, 0x0

    .line 847
    :goto_3c
    :try_start_3c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 848
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v2, v3, :cond_57

    .line 849
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmDelegate(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    .line 851
    :cond_57
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmDelegate(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_64} :catch_cd

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 856
    :cond_67
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v1

    .line 858
    :try_start_6c
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7a
    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 859
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-eq v4, v3, :cond_7a

    const-string v3, "SoundTriggerMiddlewareValidation"

    const-string v4, "Unexpected state update in binderDied. Race occurred!"

    .line 860
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 863
    :cond_a6
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eq v2, v0, :cond_bd

    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v2, "Unexpected state update in binderDied. Race occurred!"

    .line 864
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_6c .. :try_end_bd} :catchall_ca

    .line 868
    :cond_bd
    :try_start_bd
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$mdetachInternal(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c2} :catch_c4
    .catchall {:try_start_bd .. :try_end_c2} :catchall_ca

    .line 872
    :try_start_c2
    monitor-exit v1

    return-void

    :catch_c4
    move-exception p0

    .line 870
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_ca
    move-exception p0

    .line 872
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_ca

    throw p0

    :catch_cd
    move-exception p0

    .line 854
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_d3
    move-exception p0

    .line 844
    :try_start_d4
    monitor-exit v1
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw p0
.end method

.method public detached()V
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public onModelUnloaded(I)V
    .registers 5

    .line 790
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 791
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 792
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->PREEMPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 793
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_29

    .line 797
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p0

    const-string p1, "SoundTriggerMiddlewareValidation"

    const-string v0, "Client callback exception."

    .line 799
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void

    :catchall_29
    move-exception p0

    .line 793
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public onModuleDied()V
    .registers 4

    .line 817
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 818
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DEAD:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fputmState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;)V

    .line 819
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1c

    .line 822
    :try_start_d
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p0

    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    .line 826
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void

    :catchall_1c
    move-exception p0

    .line 819
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V
    .registers 7

    .line 762
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 763
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 764
    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_1f

    .line 765
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 767
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_5f

    .line 771
    :try_start_20
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_5b

    :catch_26
    move-exception p3

    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    .line 773
    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    iget-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object p3, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter p3

    .line 775
    :try_start_33
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 776
    iget-object p2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean p2, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez p2, :cond_5a

    .line 777
    sget-object p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->INTERCEPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object p2, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 782
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 784
    :cond_5a
    monitor-exit p3

    :goto_5b
    return-void

    :catchall_5c
    move-exception p0

    monitor-exit p3
    :try_end_5e
    .catchall {:try_start_33 .. :try_end_5e} :catchall_5c

    throw p0

    :catchall_5f
    move-exception p0

    .line 767
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V
    .registers 7

    .line 733
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 734
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 735
    iget-boolean v2, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_1d

    .line 736
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 738
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_5c

    .line 742
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_58

    :catch_24
    move-exception p3

    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    .line 744
    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    iget-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object p3, p3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter p3

    .line 746
    :try_start_31
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 747
    iget p2, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_57

    .line 748
    sget-object p2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->INTERCEPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object p2, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 753
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 755
    :cond_57
    monitor-exit p3

    :goto_58
    return-void

    :catchall_59
    move-exception p0

    monitor-exit p3
    :try_end_5b
    .catchall {:try_start_31 .. :try_end_5b} :catchall_59

    throw p0

    :catchall_5c
    move-exception p0

    .line 738
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public onResourcesAvailable()V
    .registers 3

    .line 807
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v1, "Client callback exception."

    .line 811
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 883
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmDelegate(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
