.class public abstract Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceSource.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceSource"


# instance fields
.field public mIsSwitchDevice:Z

.field public mLocalActivePort:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation
.end field

.field public mRoutingControlFeatureEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRoutingPort:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 43
    invoke-static {}, Landroid/sysprop/HdmiProperties;->is_switch()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mIsSwitchDevice:Z

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    .line 60
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    return-void
.end method


# virtual methods
.method public disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 308
    const-class v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 309
    const-class v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 310
    const-class v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 312
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    return-void
.end method

.method public getLocalActivePort()I
    .registers 2
    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 429
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getRcFeatures()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x4

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    .line 337
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2e

    const/4 v1, 0x3

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3f

    const/4 v1, 0x2

    .line 345
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_4f

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_60

    const/4 p0, 0x0

    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    return-object v0
.end method

.method public getRcProfile()I
    .registers 1
    .annotation build Lcom/android/server/hdmi/Constants$RcProfile;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public getRoutingPort()I
    .registers 2
    .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 418
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 215
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 216
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result p1

    .line 217
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "HdmiCecLocalDeviceSource#handleActiveSource()"

    .line 219
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    :cond_22
    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->updateDevicePowerStatus(II)V

    .line 222
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->switchInputOnReceivingNewActivePath(I)V

    :cond_2f
    const/4 p0, -0x1

    return p0
.end method

.method public handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 233
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 262
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_1a
    const-string v1, "HdmiCecLocalDeviceSource#handleRoutingChange()"

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(ILjava/lang/String;)V

    .line 268
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    const/4 p0, 0x4

    return p0

    .line 271
    :cond_27
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    return-void
.end method

.method public handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 280
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 281
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_19
    const-string v1, "HdmiCecLocalDeviceSource#handleRoutingInformation()"

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(ILjava/lang/String;)V

    .line 286
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isRoutingControlFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 p0, 0x4

    return p0

    .line 289
    :cond_26
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 242
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    const-string v2, "HdmiCecLocalDeviceSource#handleSetStreamPath()"

    if-ne v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 246
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)V

    goto :goto_32

    .line 248
    :cond_21
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p1

    if-ne v0, p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result p1

    if-nez p1, :cond_32

    .line 251
    :cond_2f
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(ILjava/lang/String;)V

    .line 253
    :cond_32
    :goto_32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->switchInputOnReceivingNewActivePath(I)V

    const/4 p0, -0x1

    return p0
.end method

.method public isActiveSource()Z
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 377
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 378
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p0

    .line 377
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(II)Z

    move-result p0

    return p0
.end method

.method public isRoutingControlFeatureEnabled()Z
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingControlFeatureEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 450
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSwitchingToTheSameInput(I)Z
    .registers 2
    .param p1    # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param

    .line 456
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getLocalActivePort()I

    move-result p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public maySendActiveSource(I)V
    .registers 3

    .line 391
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 394
    :cond_7
    new-instance v0, Lcom/android/server/hdmi/ActiveSourceAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/ActiveSourceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public onActiveSourceLost()V
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    return-void
.end method

.method public onHotplug(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 95
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 96
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    :cond_15
    if-eqz p2, :cond_1c

    .line 100
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    :cond_1c
    return-void
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 129
    const-class v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiCecLocalDeviceSource"

    const/4 v3, 0x0

    if-nez v1, :cond_22

    const-string/jumbo p0, "oneTouchPlay already in progress"

    .line 131
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    .line 135
    :cond_22
    invoke-static {p0, v3, p1}, Lcom/android/server/hdmi/OneTouchPlayAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;

    move-result-object v0

    if-nez v0, :cond_32

    const-string v0, "Cannot initiate oneTouchPlay"

    .line 138
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 142
    :cond_32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 75
    const-class v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "HdmiCecLocalDeviceSource"

    const/4 v3, 0x0

    if-nez v1, :cond_22

    const-string/jumbo p0, "queryDisplayStatus already in progress"

    .line 77
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    .line 81
    :cond_22
    invoke-static {p0, v3, p1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;

    move-result-object v0

    if-nez v0, :cond_32

    const-string v0, "Cannot initiate queryDisplayStatus"

    .line 84
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 88
    :cond_32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public sendStandby(I)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 108
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "power_control_mode"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "broadcast"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 111
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/16 v0, 0xf

    .line 112
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void

    .line 116
    :cond_2c
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    const/4 v2, 0x0

    .line 117
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const-string/jumbo v0, "to_tv_and_audio_system"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 120
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/4 v0, 0x5

    .line 121
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_59
    return-void
.end method

.method public setActiveSource(IILjava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(IILjava/lang/String;)V

    if-eqz v0, :cond_12

    .line 198
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result p1

    if-nez p1, :cond_12

    .line 199
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->onActiveSourceLost()V

    :cond_12
    return-void
.end method

.method public setActiveSource(ILjava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    const/4 v0, -0x1

    .line 207
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    return-void
.end method

.method public setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)V
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 367
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    .line 366
    invoke-virtual {v0, p2, p0, p1, p3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    return-void
.end method

.method public setLocalActivePort(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param

    .line 442
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mLocalActivePort:I

    .line 444
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setRoutingPort(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/android/server/hdmi/Constants$LocalActivePort;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingPort:I

    .line 407
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public switchInputOnReceivingNewActivePath(I)V
    .registers 2

    return-void
.end method

.method public toggleAndFollowTvPower()V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 148
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Lcom/android/server/hdmi/PowerManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/PowerManagerWrapper;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->pauseActiveMediaSessions()V

    goto :goto_1a

    .line 152
    :cond_15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 154
    :goto_1a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public updateDevicePowerStatus(II)V
    .registers 3

    return-void
.end method

.method public wakeUpIfActiveSource()V
    .registers 2

    .line 382
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 386
    :cond_7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    return-void
.end method
