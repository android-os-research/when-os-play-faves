.class public abstract Lcom/android/server/hdmi/HdmiCecLocalDevice;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;,
        Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    }
.end annotation


# static fields
.field public static final DEVICE_CLEANUP_TIMEOUT:I = 0x1388

.field public static final FOLLOWER_SAFETY_TIMEOUT:I = 0x226

.field public static final MAX_HDMI_ACTIVE_SOURCE_HISTORY:I = 0xa

.field public static final MSG_DISABLE_DEVICE_TIMEOUT:I = 0x1

.field public static final MSG_USER_CONTROL_RELEASE_TIMEOUT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "HdmiCecLocalDevice"


# instance fields
.field public final mActions:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">;"
        }
    .end annotation
.end field

.field public mActiveRoutingPath:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field public final mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

.field public mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDeviceType:I

.field public final mHandler:Landroid/os/Handler;

.field public mLastKeyRepeatCount:I

.field public mLastKeycode:I

.field public final mLock:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

.field public mPreferredAddress:I

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public static synthetic $r8$lambda$aCGH6-ZOm8iS4N41KsYka1uIJpY(ILcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->lambda$queryAvcSupport$0(ILcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleDisableDeviceTimeout(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 5

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 81
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 156
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 191
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 192
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 193
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .registers 3

    if-eqz p1, :cond_16

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_a
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object p1

    .line 202
    :cond_10
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object p1

    .line 200
    :cond_16
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object p1
.end method

.method public static injectKeyEvent(JIII)V
    .registers 18

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const v11, 0x2000001

    const/4 v12, 0x0

    move-wide v0, p0

    move-wide v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 821
    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 833
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 834
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 835
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public static isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 847
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 848
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x44

    if-ne p0, v2, :cond_18

    aget-byte p0, v0, v1

    const/16 v0, 0x6c

    if-eq p0, v0, :cond_17

    const/16 v0, 0x6b

    if-ne p0, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 839
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 840
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x44

    if-ne p0, v2, :cond_1c

    aget-byte p0, v0, v1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x6d

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x6b

    if-ne p0, v0, :cond_1c

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public static isVolumeOrMuteCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 854
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 855
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x44

    if-ne p0, v2, :cond_24

    aget-byte p0, v0, v1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_23

    const/16 v0, 0x41

    if-eq p0, v0, :cond_23

    const/16 v0, 0x43

    if-eq p0, v0, :cond_23

    const/16 v0, 0x65

    if-eq p0, v0, :cond_23

    const/16 v0, 0x66

    if-ne p0, v0, :cond_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public static synthetic lambda$queryAvcSupport$0(ILcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;)Z
    .registers 2

    .line 1055
    invoke-virtual {p1}, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;->getTargetAddress()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public addActiveSourceHistoryItem(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V
    .registers 6

    .line 1423
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord-IA;)V

    .line 1425
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 1426
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 1427
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1009
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAddressAllocated()Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1d

    .line 1014
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    return-void

    .line 1011
    :cond_1d
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not ready to start action. Queued for deferred start:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecLocalDevice"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addAvcAudioStatusAction(I)V
    .registers 3

    .line 1018
    const-class v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1019
    new-instance v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_10
    return-void
.end method

.method public assertRunOnServiceThread()V
    .registers 2

    .line 1154
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 1155
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on service thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public buildAndSendSetOsdName(I)V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 522
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 524
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_39

    .line 533
    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to build <Get Osd Name>:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecLocalDevice"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public canGoToStandby()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public checkIfPendingActionsCleared()V
    .registers 3

    .line 1145
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 1148
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 1149
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    :cond_12
    return-void
.end method

.method public clearDeviceInfoList()V
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 296
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    return-void
.end method

.method public computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 1

    .line 662
    sget-object p0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method

.method public disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 5

    .line 1271
    const-class p1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1272
    const-class p1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1274
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    invoke-direct {p1, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 1282
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 1283
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    .line 1282
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 264
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-eq v0, v1, :cond_15

    const/16 v1, 0xf

    if-eq v0, v1, :cond_15

    const/4 p0, -0x2

    return p0

    .line 268
    :cond_15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 269
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isWakeUpMessageReceived()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 270
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 p0, -0x1

    return p0

    .line 274
    :cond_2f
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0
.end method

.method public final dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_f
    move v1, v0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 416
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    if-nez v1, :cond_24

    if-eqz v2, :cond_f

    :cond_24
    const/4 v1, 0x1

    goto :goto_10

    :cond_26
    return v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPreferredAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1441
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string/jumbo p0, "mActiveRoutingPath: 0x%04x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findAudioReceiverAddress()I
    .registers 2

    const-string p0, "HdmiCecLocalDevice"

    const-string v0, "findAudioReceiverAddress is not implemented"

    .line 1395
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public findKeyReceiverAddress()I
    .registers 2

    const-string p0, "HdmiCecLocalDevice"

    const-string v0, "findKeyReceiverAddress is not implemented"

    .line 1384
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getActions(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

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

    .line 1095
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1096
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1097
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 1098
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1099
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    :cond_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_32
    return-object v0
.end method

.method public getActivePath()I
    .registers 2

    .line 1195
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1196
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1197
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getActivePathOnSwitchFromActivePortId(I)I
    .registers 4
    .param p1    # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param

    .line 1454
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p0

    shl-int/lit8 p1, p1, 0x8

    const/16 v0, 0xf00

    :goto_a
    const/16 v1, 0xf

    if-le v0, v1, :cond_18

    and-int v1, p0, v0

    if-nez v1, :cond_13

    goto :goto_18

    :cond_13
    shr-int/lit8 p1, p1, 0x4

    shr-int/lit8 v0, v0, 0x4

    goto :goto_a

    :cond_18
    :goto_18
    or-int/2addr p0, p1

    return p0
.end method

.method public getActivePortId()I
    .registers 3

    .line 1212
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 1214
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 1

    .line 1178
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p0

    return-object p0
.end method

.method public getActiveSourceHistory()Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$Dumpable;",
            ">;"
        }
    .end annotation

    .line 1432
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method public getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1236
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    return-object p0
.end method

.method public final getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 2

    .line 680
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateDeviceFeatures()V

    .line 681
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 683
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 989
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getPortId(I)I
    .registers 2

    .line 1230
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p0

    return p0
.end method

.method public abstract getPreferredAddress()I
.end method

.method public abstract getRcFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRcProfile()I
    .annotation build Lcom/android/server/hdmi/Constants$RcProfile;
    .end annotation
.end method

.method public final getService()Lcom/android/server/hdmi/HdmiControlService;
    .registers 1

    .line 1168
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 982
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    return p0
.end method

.method public handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    const/4 p0, -0x2

    return p0
.end method

.method public final handleAddressAllocated(II)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 971
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 972
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 973
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateDeviceFeatures()V

    .line 974
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_14

    .line 975
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 977
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onAddressAllocated(II)V

    .line 978
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setPreferredAddress(I)V

    return-void
.end method

.method public handleCecVersion()I
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 p0, -0x1

    return p0
.end method

.method public final handleDisableDeviceTimeout()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1292
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1293
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    const/4 v2, 0x0

    .line 1295
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 1296
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 1298
    :cond_1d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    if-eqz v0, :cond_24

    .line 1299
    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    :cond_24
    return-void
.end method

.method public handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 458
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v0

    .line 461
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 460
    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 462
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 497
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only TV can handle <Get Menu Language>:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecLocalDevice"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method public handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4

    .line 880
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 882
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 883
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 884
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result p0

    .line 881
    invoke-static {v1, p1, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 880
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleGiveDeviceVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 442
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 444
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_22

    .line 446
    :cond_13
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 448
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    .line 447
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 449
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_22
    const/4 p0, -0x1

    return p0
.end method

.method public handleGiveFeatures(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 3

    .line 688
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 692
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    const/4 p0, -0x1

    return p0
.end method

.method public handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 515
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->buildAndSendSetOsdName(I)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleGivePhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 426
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_15

    .line 428
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_26

    .line 430
    :cond_15
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 432
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 431
    invoke-static {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 433
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_26
    const/4 p0, -0x1

    return p0
.end method

.method public handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    const/4 p0, -0x2

    return p0
.end method

.method public handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4

    .line 891
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 893
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 894
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    const/4 v1, 0x0

    .line 892
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 891
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5

    .line 557
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 560
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_24

    .line 561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignored while Device Discovery Action is in progress: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecLocalDevice"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 565
    :cond_24
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 567
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 569
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 571
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 570
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 569
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_4d
    return v2
.end method

.method public handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public handleReportShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    const/4 p0, -0x2

    return p0
.end method

.method public handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleSetAudioVolumeLevel(Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 505
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only Playback device can handle <Set Menu Language>:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecLocalDevice"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method public handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 726
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 728
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 729
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 730
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 731
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    const/4 p0, -0x1

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2

    const/4 p0, -0x2

    return p0
.end method

.method public handleUnmappedCecKeycode(I)I
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x65

    if-ne p1, v3, :cond_13

    .line 794
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/16 p1, -0x64

    invoke-virtual {p0, v2, p1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v0

    :cond_13
    const/16 v3, 0x66

    if-ne p1, v3, :cond_23

    .line 798
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/16 p1, 0x64

    invoke-virtual {p0, v2, p1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v0

    :cond_23
    return v2
.end method

.method public handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 10
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 741
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1e

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 743
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    return v2

    .line 745
    :cond_1e
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 746
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    return v2

    .line 748
    :cond_32
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_42

    .line 749
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isVolumeOrMuteCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 p0, 0x4

    return p0

    .line 754
    :cond_42
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_8c

    .line 762
    :cond_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 763
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 764
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->cecKeycodeAndParamsToAndroidKey([B)I

    move-result v0

    .line 766
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v6, 0x0

    if-eq v5, v2, :cond_6a

    const/4 v7, 0x1

    if-ne v0, v5, :cond_67

    .line 768
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    add-int/2addr v5, v7

    goto :goto_6b

    .line 770
    :cond_67
    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    :cond_6a
    move v5, v6

    .line 773
    :goto_6b
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 774
    iput v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    if-eq v0, v2, :cond_80

    .line 777
    invoke-static {v3, v4, v6, v0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 778
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    .line 779
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x226

    .line 778
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    .line 782
    :cond_80
    array-length v0, p1

    if-lez v0, :cond_8a

    .line 784
    aget-byte p1, p1, v6

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUnmappedCecKeycode(I)I

    move-result p0

    return p0

    :cond_8a
    const/4 p0, 0x3

    return p0

    :cond_8c
    :goto_8c
    return v2
.end method

.method public handleUserControlReleased()I
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 808
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 809
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 810
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 811
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 812
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v1, 0x1

    .line 813
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    invoke-static {v3, v4, v1, v5, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(JIII)V

    .line 814
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    :cond_1d
    return v2
.end method

.method public handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 8

    .line 906
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 908
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 909
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    .line 910
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 906
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x4

    return p0

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 8

    .line 921
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    .line 922
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    .line 923
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2b

    .line 924
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_2b

    .line 926
    :cond_16
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 927
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    const/4 v5, 0x1

    .line 926
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(III[BZ)Z

    move-result p0

    if-nez p0, :cond_32

    const/4 p0, 0x4

    return p0

    :cond_2b
    :goto_2b
    const-string p0, "HdmiCecLocalDevice"

    const-string p1, "Wrong broadcast vendor command. Ignoring"

    .line 925
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, -0x1

    return p0
.end method

.method public hasAction(Ljava/lang/Class;)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1084
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 1085
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 214
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 217
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleDisableDeviceTimeout()V

    :cond_1a
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    return-void
.end method

.method public invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    if-nez p1, :cond_6

    return-void

    .line 1406
    :cond_6
    :try_start_6
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 1408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invoking callback failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecLocalDevice"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public isAddressOf(I)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1003
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    if-ne p1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isAlreadyActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;ILandroid/hardware/hdmi/IHdmiControlCallback;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 283
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1a

    .line 284
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne p2, p1, :cond_1a

    .line 286
    invoke-virtual {p0, p3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public final isConnectedToArcPort(I)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1174
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnectedToArcPort(I)Z

    move-result p0

    return p0
.end method

.method public isInputReady(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onAddressAllocated(II)V
.end method

.method public onHotplug(IZ)V
    .registers 3

    return-void
.end method

.method public onInitializeCecComplete(I)V
    .registers 2

    return-void
.end method

.method public final onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessageToAction(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, -0x1

    return p0

    .line 309
    :cond_b
    instance-of v0, p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    if-eqz v0, :cond_16

    .line 310
    check-cast p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetAudioVolumeLevel(Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;)I

    move-result p0

    return p0

    .line 313
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_138

    const/16 v1, 0xa

    if-eq v0, v1, :cond_133

    const/16 v1, 0xd

    if-eq v0, v1, :cond_12e

    const/16 v1, 0xf

    if-eq v0, v1, :cond_129

    const/16 v1, 0x32

    if-eq v0, v1, :cond_124

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_11f

    const/16 v1, 0x89

    if-eq v0, v1, :cond_11a

    const/16 v1, 0x35

    if-eq v0, v1, :cond_115

    const/16 v1, 0x36

    if-eq v0, v1, :cond_110

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_10b

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_106

    packed-switch v0, :pswitch_data_13e

    packed-switch v0, :pswitch_data_14c

    packed-switch v0, :pswitch_data_156

    packed-switch v0, :pswitch_data_168

    packed-switch v0, :pswitch_data_178

    packed-switch v0, :pswitch_data_184

    packed-switch v0, :pswitch_data_18e

    const/4 p0, -0x2

    return p0

    .line 347
    :pswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 343
    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 341
    :pswitch_66
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 351
    :pswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 349
    :pswitch_70
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 345
    :pswitch_75
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 403
    :pswitch_7a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveFeatures(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 399
    :pswitch_7f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 401
    :pswitch_84
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 385
    :pswitch_89
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommandWithId(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 333
    :pswitch_8e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetCecVersion(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 331
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleCecVersion()I

    move-result p0

    return p0

    .line 317
    :pswitch_98
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 321
    :pswitch_9d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 393
    :pswitch_a2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 377
    :pswitch_a7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDevicePowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 381
    :pswitch_ac
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 379
    :pswitch_b1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 329
    :pswitch_b6
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveDeviceVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 375
    :pswitch_bb
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 319
    :pswitch_c0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 335
    :pswitch_c5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 325
    :pswitch_ca
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGivePhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 315
    :pswitch_cf
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 339
    :pswitch_d4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 337
    :pswitch_d9
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 355
    :pswitch_de
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 361
    :pswitch_e3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 353
    :pswitch_e8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 387
    :pswitch_ed
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 327
    :pswitch_f2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 373
    :pswitch_f7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()I

    move-result p0

    return p0

    .line 371
    :pswitch_fc
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 391
    :pswitch_101
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 357
    :cond_106
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 359
    :cond_10b
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 365
    :cond_110
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 395
    :cond_115
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 383
    :cond_11a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleVendorCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 363
    :cond_11f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 323
    :cond_124
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 389
    :cond_129
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 367
    :cond_12e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 397
    :cond_133
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 369
    :cond_138
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    nop

    :pswitch_data_13e
    .packed-switch 0x43
        :pswitch_101
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_ed
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x70
        :pswitch_e8
        :pswitch_e3
        :pswitch_de
    .end packed-switch

    :pswitch_data_156
    .packed-switch 0x80
        :pswitch_d9
        :pswitch_d4
        :pswitch_cf
        :pswitch_ca
        :pswitch_c5
        :pswitch_c0
        :pswitch_bb
    .end packed-switch

    :pswitch_data_168
    .packed-switch 0x8c
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
    .end packed-switch

    :pswitch_data_178
    .packed-switch 0x9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
        :pswitch_89
    .end packed-switch

    :pswitch_data_184
    .packed-switch 0xa3
        :pswitch_84
        :pswitch_7f
        :pswitch_7a
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0xc0
        :pswitch_75
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_61
        :pswitch_5c
    .end packed-switch
.end method

.method public onStandby(ZI)V
    .registers 3

    return-void
.end method

.method public pathToPortId(I)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1242
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p0

    return p0
.end method

.method public queryAvcSupport(I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1044
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_25

    .line 1045
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    .line 1046
    invoke-static {v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveFeatures(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1048
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    throw p0

    .line 1053
    :cond_25
    :goto_25
    const-class v0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 1054
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1055
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1056
    new-instance v0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_47
    return-void
.end method

.method public removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 1116
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 1117
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    return-void
.end method

.method public removeAction(Ljava/lang/Class;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 1125
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

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

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1133
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1134
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    if-eq v1, p2, :cond_9

    .line 1136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 1137
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 1138
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 1141
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    return-void
.end method

.method public removeAvcAudioStatusAction()V
    .registers 2

    .line 1024
    const-class v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    return-void
.end method

.method public reportFeatures()V
    .registers 8

    .line 697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 698
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 699
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 703
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getRcProfile()I

    move-result v3

    .line 704
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getRcFeatures()Ljava/util/List;

    move-result-object v4

    .line 705
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v5

    .line 709
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_34
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 711
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_4b

    .line 713
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 716
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v6

    move v0, v1

    move v1, v6

    .line 714
    invoke-static/range {v0 .. v5}, Lcom/android/server/hdmi/ReportFeaturesMessage;->build(IILjava/util/List;ILjava/util/List;Landroid/hardware/hdmi/DeviceFeatures;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 713
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void

    :catchall_4b
    move-exception p0

    .line 711
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public sendKeyEvent(IZ)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1314
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    if-nez v0, :cond_20

    .line 1315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported key: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1318
    :cond_20
    const-class v0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1319
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findKeyReceiverAddress()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    .line 1320
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1321
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    if-ne v2, v3, :cond_36

    goto :goto_52

    .line 1331
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    const/4 p0, 0x0

    .line 1332
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    goto :goto_76

    :cond_47
    if-eqz p2, :cond_76

    .line 1334
    new-instance p2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {p2, p0, v2, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_76

    .line 1323
    :cond_52
    :goto_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Discard key event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pressed:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", receiverAddr="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    :goto_76
    return-void
.end method

.method public sendStandby(I)V
    .registers 2

    return-void
.end method

.method public sendUserControlPressedAndReleased(II)V
    .registers 5

    .line 1413
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1415
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 1414
    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 1413
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1416
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1418
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 1417
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 1416
    invoke-virtual {p2, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public sendVolumeKeyEvent(IZ)V
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1349
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 1353
    :cond_c
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isVolumeKeycode(I)Z

    move-result v0

    const-string v1, "HdmiCecLocalDevice"

    if-nez v0, :cond_29

    .line 1354
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not a volume key: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1357
    :cond_29
    const-class v0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5b

    .line 1359
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1360
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    if-ne v2, v3, :cond_3f

    goto :goto_5b

    .line 1370
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    const/4 p0, 0x0

    .line 1371
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    goto :goto_7f

    :cond_50
    if-eqz p2, :cond_7f

    .line 1373
    new-instance p2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {p2, p0, v2, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_7f

    .line 1362
    :cond_5b
    :goto_5b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Discard volume key event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pressed:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", receiverAddr="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    return-void
.end method

.method public setActivePath(I)V
    .registers 3

    .line 1201
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 1203
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 1204
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->pathToPortId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->setActivePortId(I)V

    return-void

    :catchall_10
    move-exception p0

    .line 1203
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setActivePortId(I)V
    .registers 3

    .line 1225
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    return-void
.end method

.method public setActiveSource(IILjava/lang/String;)V
    .registers 5

    .line 1190
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    .line 1191
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    return-void
.end method

.method public setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;)V
    .registers 4

    .line 1186
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(IILjava/lang/String;)V

    return-void
.end method

.method public setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V
    .registers 4

    .line 1182
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(IILjava/lang/String;)V

    return-void
.end method

.method public setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 996
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public abstract setPreferredAddress(I)V
.end method

.method public startQueuedActions()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 1073
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->started()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting queued action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HdmiCecLocalDevice"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()Z

    goto :goto_e

    :cond_3a
    return-void
.end method

.method public updateAvcVolume(I)V
    .registers 3

    .line 1029
    const-class v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 1030
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->updateVolume(I)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final updateDeviceFeatures()V
    .registers 4

    .line 669
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v1

    .line 671
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 670
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 673
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method
