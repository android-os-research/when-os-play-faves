.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "HdmiCecLocalDeviceAudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;
    }
.end annotation


# static fields
.field public static final SHORT_AUDIO_DESCRIPTOR_CONFIG_PATH:Ljava/lang/String; = "/vendor/etc/sadConfig.xml"

.field public static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceAudioSystem"

.field public static final WAKE_ON_HOTPLUG:Z = false


# instance fields
.field public mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field public mArcIntentUsed:Z

.field public final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field public final mPortIdToTvInputs:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemAudioControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field public final mTvInputsToDeviceInfo:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTvSystemAudioModeSupport:Ljava/lang/Boolean;


# direct methods
.method public static bridge synthetic -$$Nest$maddOrUpdateTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->addOrUpdateTvInput(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 6

    const/4 v0, 0x5

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    .line 95
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "tvinput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 110
    new-instance v1, Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 125
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 114
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    const-string/jumbo v2, "routing_control"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4d

    move v1, v2

    goto :goto_4e

    :cond_4d
    move v1, v0

    :goto_4e
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingControlFeatureEnabled:Z

    .line 117
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    const-string/jumbo v3, "system_audio_control"

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_60

    move v0, v2

    :cond_60
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 120
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    return-void
.end method


# virtual methods
.method public final addOrUpdateTvInput(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 145
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_6
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getTvInputManager()Landroid/media/tv/TvInputManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    if-nez v1, :cond_14

    .line 148
    monitor-exit v0

    return-void

    .line 150
    :cond_14
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 152
    monitor-exit v0

    return-void

    .line 154
    :cond_1c
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 157
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processDelayedActiveSource(I)V

    .line 159
    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public checkSupportAndSetSystemAudioMode(Z)Z
    .registers 5

    .line 787
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 788
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot turn "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_17

    const-string/jumbo p1, "on"

    goto :goto_1a

    :cond_17
    const-string/jumbo p1, "off"

    .line 790
    :goto_1a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "system audio mode because the System Audio Control feature is disabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 788
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 797
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "System Audio Mode change[old:%b new:%b]"

    .line 795
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4d

    .line 800
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 802
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    return v2
.end method

.method public computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 2

    const-string/jumbo p0, "persist.sys.hdmi.property_arc_support"

    const/4 v0, 0x1

    .line 186
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 188
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcRxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object p0

    return-object p0
.end method

.method public disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 226
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 228
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    return-void
.end method

.method public doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 904
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p1, 0x3

    .line 905
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 908
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result v0

    if-ne p1, v0, :cond_1b

    const/4 p1, 0x0

    .line 909
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 912
    :cond_1b
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 914
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    const/4 p1, 0x6

    .line 915
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 918
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result p2

    if-eqz p2, :cond_3f

    .line 919
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p2

    goto :goto_47

    .line 920
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p2

    .line 921
    :goto_47
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    if-ne p2, v0, :cond_50

    return-void

    .line 925
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 926
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 929
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    .line 928
    invoke-static {p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 930
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "HdmiCecLocalDeviceAudioSystem:"

    .line 1200
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isRoutingFeatureEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemAudioControlFeatureEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTvSystemAudioModeSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcEstablished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mArcIntentUsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRoutingPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLocalActivePort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    const-string/jumbo v1, "mPortIdToTvInputs:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    const-string/jumbo v1, "mTvInputsToDeviceInfo:"

    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V

    .line 1211
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1212
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final enableAudioReturnChannel(Z)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 745
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 746
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 747
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 746
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    return-void
.end method

.method public findKeyReceiverAddress()I
    .registers 2

    .line 292
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic getActiveSourceHistory()Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 1

    .line 69
    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSourceHistory()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p0

    return-object p0
.end method

.method public final getLpcmShortAudioDescriptor(Landroid/media/AudioDeviceInfo;)[B
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferredAddress()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const-string/jumbo p0, "persist.sys.hdmi.addr.audiosystem"

    const/16 v0, 0xf

    .line 312
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)[B"
        }
    .end annotation

    .line 564
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x3

    mul-int/2addr p0, v0

    new-array p0, p0, [B

    .line 566
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 567
    invoke-static {v3, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    goto :goto_e

    :cond_1f
    return-object p0
.end method

.method public final getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 585
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getLpcmShortAudioDescriptor(Landroid/media/AudioDeviceInfo;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B
    .registers 11

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_34

    aget v4, p2, v3

    .line 515
    invoke-virtual {p0, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptor(Landroid/media/AudioDeviceInfo;I)[B

    move-result-object v5

    if-eqz v5, :cond_31

    .line 517
    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1b

    .line 519
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_1b
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 521
    array-length v5, v5

    .line 523
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const-string v4, "Dropping Short Audio Descriptor with length %d for requested codec %x"

    .line 521
    invoke-static {v4, v6}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 527
    :cond_34
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSupportedShortAudioDescriptorsFromConfig(Ljava/util/List;[I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;[I)[B"
        }
    .end annotation

    const-string/jumbo v0, "persist.sys.hdmi.property_sytem_audio_mode_audio_port"

    const-string v1, "VX_AUDIO_DEVICE_IN_HDMI_ARC"

    .line 533
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 537
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    const/4 p1, 0x0

    if-nez v1, :cond_40

    .line 543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sadConfig.xml does not have required device info for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "HdmiCecLocalDeviceAudioSystem"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [B

    return-object p0

    .line 546
    :cond_40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 547
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 548
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 549
    iget v4, v3, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 551
    :cond_69
    :goto_69
    array-length v1, p2

    if-ge p1, v1, :cond_90

    .line 552
    aget v1, p2, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 553
    aget v1, p2, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_8d

    .line 554
    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8d

    .line 555
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8d
    add-int/lit8 p1, p1, 0x1

    goto :goto_69

    .line 559
    :cond_90
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getShortAudioDescriptorBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSystemAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .registers 10

    .line 615
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_1a

    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "Error getting system audio device because AudioManager not available."

    .line 617
    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1a
    const/4 v2, 0x1

    .line 621
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Object;

    .line 622
    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Found %d audio input devices"

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    array-length v3, p0

    move v4, v1

    :goto_2f
    if-ge v4, v3, :cond_77

    aget-object v5, p0, v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 624
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "%s at port %s"

    invoke-static {v7, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v6, v2, [Ljava/lang/Object;

    .line 626
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getEncodings()[I

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v7

    new-instance v8, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v7

    const-string v8, ", "

    .line 628
    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Supported encodings are %s"

    .line 625
    invoke-static {v7, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_74

    return-object v5

    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_77
    return-object v0
.end method

.method public handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 335
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 336
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    .line 337
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 338
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    .line 337
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 340
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 345
    :cond_21
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_42

    new-array v1, v4, [Ljava/lang/Object;

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Device info %X not found; buffering the command"

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_62

    .line 349
    :cond_42
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isInputReady(I)Z

    move-result v0

    if-nez v0, :cond_63

    new-array v0, v4, [Ljava/lang/Object;

    .line 350
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Input not ready for device: %X; buffering the command"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_62
    return v2

    .line 353
    :cond_63
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->removeActiveSource()V

    .line 354
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0
.end method

.method public handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 397
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 399
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->reportAudioStatus(I)V

    const/4 p0, -0x1

    return p0

    :cond_1b
    const/4 p0, 0x4

    return p0
.end method

.method public handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_18

    .line 416
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    if-nez v1, :cond_18

    const-class v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 417
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 420
    :cond_18
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 423
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 421
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 420
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "HdmiCecLocalDeviceAudioSystemStub handleInitiateArc"

    .line 365
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleReportArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 p0, -0x1

    return p0
.end method

.method public handleReportArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 388
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRequestArcInitiate(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 433
    const-class p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 434
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v0, "persist.sys.hdmi.property_arc_support"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_16

    return v0

    .line 436
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    move-result p1

    if-nez p1, :cond_24

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "AVR device is not directly connected with TV"

    .line 437
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 440
    :cond_24
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRequestArcTermination(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const-string/jumbo p1, "persist.sys.hdmi.property_arc_support"

    const/4 v0, 0x1

    .line 450
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    return v1

    .line 452
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result p1

    if-nez p1, :cond_1d

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "ARC is not established between TV and AVR device"

    .line 453
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 456
    :cond_1d
    const-class p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 457
    new-instance p1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 8
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    .line 465
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HdmiCecLocalDeviceAudioSystemStub handleRequestShortAudioDescriptor"

    .line 466
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 p0, 0x4

    return p0

    .line 470
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 v1, 0x0

    .line 475
    new-instance v2, Ljava/io/File;

    const-string v3, "/vendor/etc/sadConfig.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 478
    :try_start_2b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 479
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 480
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_37} :catch_38

    goto :goto_63

    :catch_38
    move-exception v3

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    :catch_4e
    move-exception v3

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    :cond_63
    :goto_63
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->parseAudioFormatCodes([B)[I

    move-result-object v0

    if-eqz v1, :cond_78

    .line 490
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_78

    .line 491
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptorsFromConfig(Ljava/util/List;[I)[B

    move-result-object v0

    goto :goto_84

    .line 493
    :cond_78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSystemAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_80

    const/4 p0, 0x5

    return p0

    .line 498
    :cond_80
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->getSupportedShortAudioDescriptors(Landroid/media/AudioDeviceInfo;[I)[B

    move-result-object v0

    .line 501
    :goto_84
    array-length v1, v0

    if-nez v1, :cond_89

    const/4 p0, 0x3

    return p0

    .line 504
    :cond_89
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 506
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 505
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 504
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4

    .line 1130
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    if-lez p1, :cond_9

    return-void

    :cond_9
    if-gez p1, :cond_15

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1138
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleRoutingChangeAndInformationForSystemAudio()V

    return-void

    :cond_15
    if-nez p1, :cond_1a

    .line 1144
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleRoutingChangeAndInformationForSwitch(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_1a
    return-void
.end method

.method public final handleRoutingChangeAndInformationForSwitch(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1156
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p0

    const-string v1, "HdmiCecLocalDeviceAudioSystem#handleRoutingChangeAndInformationForSwitch()"

    .line 1157
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    return-void

    .line 1163
    :cond_24
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p1

    .line 1165
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    if-ne p1, v0, :cond_4d

    .line 1166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current device can\'t assign valid physical addressto devices under it any more. It\'s physical address is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1173
    :cond_4d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 1174
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 1173
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    return-void
.end method

.method public final handleRoutingChangeAndInformationForSystemAudio()V
    .registers 2

    const/16 v0, 0x11

    .line 1150
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    return-void
.end method

.method public handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 701
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 703
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x4

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public handleSystemAudioModeOnFromNonTvDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5

    .line 986
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Cannot turn onsystem audio mode because the System Audio Control feature is disabled."

    .line 987
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x4

    return p0

    .line 993
    :cond_10
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 997
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    const/4 p1, 0x1

    .line 999
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 1000
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/16 v2, 0xf

    .line 1001
    invoke-static {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 1000
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v1

    .line 1007
    :cond_3c
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    return v1
.end method

.method public handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 651
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 652
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 656
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v0, :cond_1e

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleSystemAudioModeOnFromNonTvDevice(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0

    .line 664
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setTvSystemAudioModeSupport(Z)V

    .line 668
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 p0, 0x4

    return p0

    .line 672
    :cond_26
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 674
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    const/16 v3, 0xf

    .line 673
    invoke-static {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    .line 672
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v1, -0x1

    if-eqz v0, :cond_62

    .line 682
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result p1

    .line 684
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    .line 683
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->getLocalPortFromPhysicalAddress(II)I

    move-result v0

    if-eq v0, v1, :cond_53

    return v1

    .line 688
    :cond_53
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 689
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_62

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchInputOnReceivingNewActivePath(I)V

    :cond_62
    return v1
.end method

.method public handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 713
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 715
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x4

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public final initArcOnFromAvr()V
    .registers 3

    .line 1036
    const-class v0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    const-string/jumbo v0, "persist.sys.hdmi.property_arc_support"

    const/4 v1, 0x1

    .line 1037
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1039
    const-class v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1040
    new-instance v0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_28
    return-void
.end method

.method public isArcEnabled()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1032
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isDirectConnectToTv()Z
    .registers 2

    .line 869
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p0

    const v0, 0xf000

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isInputReady(I)Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 179
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 180
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public isSystemAudioActivated()Z
    .registers 1

    .line 940
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result p0

    return p0
.end method

.method public isSystemAudioControlFeatureEnabled()Z
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 936
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final launchDeviceDiscovery()V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 1181
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 1182
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "HdmiCecLocalDeviceAudioSystem"

    const-string v2, "Device Discovery Action is in progress. Restarting."

    .line 1183
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 1186
    :cond_15
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 1195
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final notifyArcStatusToAudioService(Z)V
    .registers 4

    .line 753
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const v0, -0x7fffffe0

    const-string v1, ""

    .line 754
    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAddressAllocated(II)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 253
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-nez p2, :cond_1a

    .line 254
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p2

    .line 255
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v0

    const/16 v1, 0xf

    const-string v2, "HdmiCecLocalDeviceAudioSystem#onAddressAllocated()"

    .line 254
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    .line 258
    :cond_1a
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 261
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceType:I

    .line 259
    invoke-static {p2, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 258
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 263
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 265
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    .line 264
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 263
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 266
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->initArcOnFromAvr()V

    .line 275
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isScreenOff()Z

    move-result p1

    if-nez p1, :cond_6f

    const/4 p1, 0x0

    const-string/jumbo p2, "persist.sys.hdmi.system_audio_control_on_power_on"

    .line 277
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    const-string/jumbo v0, "persist.sys.hdmi.last_system_audio_control"

    .line 281
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->systemAudioControlOnPowerOn(IZ)V

    .line 285
    :cond_6f
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->launchDeviceDiscovery()V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    return-void
.end method

.method public onHotplug(IZ)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 200
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 201
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    if-nez p2, :cond_60

    .line 203
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 205
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 207
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isArcEnabled()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 208
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    goto :goto_60

    :cond_2e
    if-nez p2, :cond_60

    .line 211
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_60

    .line 212
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 213
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-nez p1, :cond_53

    return-void

    .line 219
    :cond_53
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p2

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    :cond_60
    :goto_60
    return-void
.end method

.method public onStandby(ZI)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 237
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string p2, "HdmiCecLocalDeviceAudioSystem#onStandby()"

    const/4 v0, -0x1

    const v1, 0xffff

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 241
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 242
    :try_start_14
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v0, "persist.sys.hdmi.last_system_audio_control"

    .line 244
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo v1, "true"

    goto :goto_25

    :cond_23
    const-string v1, "false"

    .line 242
    :goto_25
    invoke-virtual {p2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2d

    .line 246
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->terminateSystemAudioMode()V

    return-void

    :catchall_2d
    move-exception p0

    .line 245
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public onSystemAudioControlFeatureSupportChanged(Z)V
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioControlFeatureEnabled(Z)V

    if-eqz p1, :cond_d

    .line 881
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_d
    return-void
.end method

.method public final parseAudioFormatCodes([B)[I
    .registers 6

    .line 638
    array-length p0, p1

    new-array p0, p0, [I

    const/4 v0, 0x0

    move v1, v0

    .line 639
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 640
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_12

    const/16 v3, 0xf

    if-gt v2, v3, :cond_12

    goto :goto_13

    :cond_12
    move v2, v0

    .line 642
    :goto_13
    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    return-object p0
.end method

.method public processArcTermination()V
    .registers 3

    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 737
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_13

    .line 738
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    :cond_13
    return-void
.end method

.method public processDelayedActiveSource(I)V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 327
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    return-void
.end method

.method public queryTvSystemAudioModeSupport(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V
    .registers 3

    .line 974
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 975
    new-instance v0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_14

    .line 977
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    :goto_14
    return-void
.end method

.method public final removeTvInput(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 165
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_6
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    .line 167
    monitor-exit v0

    return-void

    .line 169
    :cond_10
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public reportAudioStatus(I)V
    .registers 10

    .line 758
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 759
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 764
    :cond_c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 765
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 766
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 767
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v4

    .line 768
    invoke-static {v0, v3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    .line 770
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v0

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "Reporting volume %d (%d-%d) as CEC volume %d"

    .line 769
    invoke-static {v0, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 774
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 773
    invoke-static {p0, p1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 772
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public routeToInputFromPortId(I)V
    .registers 3

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Routing Control Feature is not enabled."

    .line 1060
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1063
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    if-eqz v0, :cond_16

    .line 1064
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToTvInputFromPortId(I)V

    :cond_16
    return-void
.end method

.method public routeToTvInputFromPortId(I)V
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_76

    const/16 v1, 0x15

    if-lt p1, v1, :cond_8

    goto :goto_76

    .line 1076
    :cond_8
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, p1, :cond_33

    if-eq p1, v2, :cond_33

    .line 1078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not switching to the same port "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " except for arc"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_33
    if-nez p1, :cond_41

    .line 1082
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToHomeTvInput()V

    goto :goto_67

    :cond_41
    if-ne p1, v2, :cond_56

    .line 1085
    invoke-static {}, Landroid/sysprop/HdmiProperties;->arc_port()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    return-void

    .line 1089
    :cond_56
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 1091
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToTvInput(Ljava/lang/String;)V

    .line 1098
    :goto_67
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 1099
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    return-void

    :cond_6e
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Port number does not match any Tv Input."

    .line 1093
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_76
    :goto_76
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Invalid port number for Tv Input switching."

    .line 1072
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setArcStatus(Z)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 725
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Set Arc Status[old:%b new:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->enableAudioReturnChannel(Z)V

    .line 729
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->notifyArcStatusToAudioService(Z)V

    .line 731
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcEstablished:Z

    return-void
.end method

.method public setPreferredAddress(I)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 320
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 321
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "persist.sys.hdmi.addr.audiosystem"

    .line 320
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoutingControlFeatureEnabled(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 896
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingControlFeatureEnabled:Z

    .line 898
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setSystemAudioControlFeatureEnabled(Z)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 888
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_6
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 890
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setSystemAudioMode(Z)V
    .registers 8

    .line 813
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 814
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    if-eqz p1, :cond_13

    if-ltz v0, :cond_13

    .line 816
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->switchToAudioInput()V

    .line 820
    :cond_13
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string/jumbo v1, "system_audio_mode_muting"

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v1

    .line 823
    :goto_27
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 824
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-ne v3, p1, :cond_48

    if-nez v0, :cond_38

    if-eqz p1, :cond_48

    .line 827
    :cond_38
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    if-eqz p1, :cond_43

    const/16 v5, 0x64

    goto :goto_45

    :cond_43
    const/16 v5, -0x64

    .line 828
    :goto_45
    invoke-virtual {v3, v4, v5, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 836
    :cond_48
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->updateAudioManagerForSystemAudio(Z)V

    .line 837
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_4e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v3

    if-eq v3, p1, :cond_5e

    .line 839
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 840
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 842
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_9e

    .line 849
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mArcIntentUsed:Z

    if-eqz v1, :cond_76

    if-nez v0, :cond_76

    if-nez p1, :cond_76

    .line 852
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_76

    .line 853
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getRoutingPort()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    :cond_76
    const-string/jumbo p1, "persist.sys.hdmi.property_arc_support"

    .line 857
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 858
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isDirectConnectToTv()Z

    move-result p1

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 859
    const-class p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_9d

    .line 860
    new-instance p1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_9d
    return-void

    :catchall_9e
    move-exception p0

    .line 842
    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p0
.end method

.method public setTvSystemAudioModeSupport(Z)V
    .registers 2

    .line 1025
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    return-void
.end method

.method public switchInputOnReceivingNewActivePath(I)V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result p1

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_14

    if-gez p1, :cond_14

    const/16 p1, 0x11

    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    goto :goto_1d

    .line 1051
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    if-eqz v0, :cond_1d

    if-ltz p1, :cond_1d

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->routeToInputFromPortId(I)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public switchToAudioInput()V
    .registers 1

    return-void
.end method

.method public final switchToHomeTvInput()V
    .registers 3

    .line 1116
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x34010000

    .line 1118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1122
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p0

    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    const-string v1, "Can\'t find activity to switch to HOME"

    .line 1124
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public final switchToTvInput(Ljava/lang/String;)V
    .registers 5

    .line 1105
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 1106
    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 1107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_32

    :catch_1b
    move-exception p0

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find activity to switch to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdmiCecLocalDeviceAudioSystem"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public systemAudioControlOnPowerOn(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    if-eqz p2, :cond_15

    .line 303
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioControlFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 304
    :cond_d
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_15
    return-void
.end method

.method public terminateSystemAudioMode()V
    .registers 4

    .line 945
    const-class v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 946
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 950
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 952
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 954
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/16 v2, 0xf

    .line 953
    invoke-static {p0, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 952
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_26
    return-void
.end method

.method public final updateAudioManagerForSystemAudio(Z)V
    .registers 4

    .line 874
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 875
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
