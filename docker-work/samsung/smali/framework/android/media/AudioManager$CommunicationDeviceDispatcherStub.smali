.class final Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;
.super Landroid/media/ICommunicationDeviceDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommunicationDeviceDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2

    .line 7952
    iput-object p1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$CommunicationDeviceDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchCommunicationDeviceChanged$0(Landroid/media/AudioDeviceInfo;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .registers 2
    .param p0, "device"    # Landroid/media/AudioDeviceInfo;
    .param p1, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 7972
    invoke-interface {p1, p0}, Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;->onCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchCommunicationDeviceChanged(I)V
    .registers 5
    .param p1, "portId"    # I

    .line 7970
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 7971
    .local v0, "device":Landroid/media/AudioDeviceInfo;
    iget-object v1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmCommDeviceChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-virtual {v1, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 7973
    return-void
.end method

.method public blacklist register(Z)V
    .registers 3
    .param p1, "register"    # Z

    .line 7958
    if-eqz p1, :cond_a

    .line 7959
    :try_start_2
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    goto :goto_11

    .line 7961
    :cond_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_12

    .line 7965
    :goto_11
    goto :goto_16

    .line 7963
    :catch_12
    move-exception v0

    .line 7964
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7966
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
