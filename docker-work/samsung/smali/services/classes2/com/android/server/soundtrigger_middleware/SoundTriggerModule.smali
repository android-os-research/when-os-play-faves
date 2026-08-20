.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "SoundTriggerModule"


# instance fields
.field public final mActiveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;",
            ">;"
        }
    .end annotation
.end field

.field public final mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

.field public final mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

.field public mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

.field public mProperties:Landroid/media/soundtrigger/Properties;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioSessionProvider(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalService(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 84
    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    .line 100
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    .line 101
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mAudioSessionProvider:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    return-void
.end method


# virtual methods
.method public declared-synchronized attach(Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 4

    monitor-enter p0

    .line 120
    :try_start_1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session-IA;)V

    .line 121
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 122
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final attachToHal()V
    .registers 4

    .line 169
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalFactory:Lcom/android/server/soundtrigger_middleware/HalFactory;

    .line 170
    invoke-interface {v2}, Lcom/android/server/soundtrigger_middleware/HalFactory;->create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 171
    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0, p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger/Properties;

    return-void
.end method

.method public binderDied()V
    .registers 4

    const-string v0, "SoundTriggerModule"

    const-string v1, "Underlying HAL driver died."

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    monitor-enter p0

    .line 140
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 142
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$mmoduleDied(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 144
    :cond_2d
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->reset()V

    .line 146
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_51

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 150
    :try_start_46
    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3a

    :catch_4a
    move-exception p0

    .line 152
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_50
    return-void

    :catchall_51
    move-exception v0

    .line 146
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public declared-synchronized getProperties()Landroid/media/soundtrigger/Properties;
    .registers 2

    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mProperties:Landroid/media/soundtrigger/Properties;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResourcesAvailable()V
    .registers 4

    .line 188
    monitor-enter p0

    .line 189
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 191
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->-$$Nest$fgetmCallback(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 193
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_42

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 197
    :try_start_37
    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_2b

    :catch_3b
    move-exception p0

    .line 199
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_41
    return-void

    :catchall_42
    move-exception v0

    .line 193
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public final removeSession(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .registers 2

    .line 182
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mActiveSessions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reset()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->mHalService:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;->detach()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->attachToHal()V

    return-void
.end method
