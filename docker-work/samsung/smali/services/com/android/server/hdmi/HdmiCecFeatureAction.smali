.class public abstract Lcom/android/server/hdmi/HdmiCecFeatureAction;
.super Ljava/lang/Object;
.source "HdmiCecFeatureAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;,
        Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;
    }
.end annotation


# static fields
.field public static final MSG_TIMEOUT:I = 0x64

.field public static final STATE_NONE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HdmiCecFeatureAction"


# instance fields
.field public mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

.field public final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/IHdmiControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mOnFinishedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/IHdmiControlCallback;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 78
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_11

    .line 81
    :cond_21
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 82
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    return-void
.end method


# virtual methods
.method public final addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 308
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 299
    :cond_b
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTimer(II)V
    .registers 5

    .line 178
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->sendTimerMessage(IJ)V

    return-void
.end method

.method public final audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    return-object p0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 238
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    return-void
.end method

.method public final createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;
    .registers 3

    .line 172
    new-instance v0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;-><init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V

    return-object v0
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return-void
.end method

.method public finish(Z)V
    .registers 4

    .line 249
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    if-eqz p1, :cond_8

    .line 251
    invoke-virtual {p0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 253
    :cond_8
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_2f

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 255
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eqz v1, :cond_10

    .line 256
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_10

    :cond_2c
    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    :cond_2f
    return-void
.end method

.method public finishWithCallback(I)V
    .registers 2

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->invokeCallback(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public final getActions(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 199
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object p0

    return-object p0
.end method

.method public final getSourceAddress()I
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0
.end method

.method public final getSourcePath()I
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public abstract handleTimerEvent(I)V
.end method

.method public final invokeCallback(I)V
    .registers 3

    .line 313
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_15

    goto :goto_6

    .line 317
    :cond_15
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_6

    :catch_19
    move-exception p0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecFeatureAction"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method public final localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object p0
.end method

.method public final playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object p0
.end method

.method public final pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    return-void
.end method

.method public abstract processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
.end method

.method public final removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 2

    .line 213
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final removeAction(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 217
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ")V"
        }
    .end annotation

    .line 222
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 3

    .line 191
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final sendUserControlPressedAndReleased(II)V
    .registers 3

    .line 292
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    return-void
.end method

.method public setActionTimer(Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    return-void
.end method

.method public final source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .registers 1

    .line 272
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    return-object p0
.end method

.method public abstract start()Z
.end method

.method public started()Z
    .registers 1

    .line 182
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object p0
.end method
