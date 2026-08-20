.class public Lcom/android/server/hdmi/PowerStatusMonitorAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "PowerStatusMonitorAction.java"


# static fields
.field public static final INVALID_POWER_STATUS:I = -0x2

.field public static final MONITORING_INTERVAL_MS:I = 0xea60

.field public static final REPORT_POWER_STATUS_TIMEOUT_MS:I = 0x1388

.field public static final STATE_WAIT_FOR_NEXT_MONITORING:I = 0x2

.field public static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PowerStatusMonitorAction"


# instance fields
.field public final mPowerStatus:Landroid/util/SparseIntArray;


# direct methods
.method public static bridge synthetic -$$Nest$mupdatePowerStatus(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 55
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 77
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    return v3

    .line 83
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    return v1
.end method

.method public final handleTimeout()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 101
    :goto_2
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 102
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, -0x1

    .line 103
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_17
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x2

    .line 106
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 3

    .line 90
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_10

    .line 92
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    goto :goto_10

    .line 95
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleTimeout()V

    :goto_10
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4

    .line 69
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 70
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_12

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final queryPowerStatus()V
    .registers 5

    .line 121
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->resetPowerStatus(Ljava/util/List;)V

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_35

    .line 125
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v2

    if-ge v2, v3, :cond_16

    .line 126
    :cond_35
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    new-instance v3, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;-><init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_16

    :cond_4a
    const/4 v0, 0x1

    .line 142
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x2

    const v2, 0xea60

    .line 145
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    const/16 v1, 0x1388

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final resetPowerStatus(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_28

    .line 113
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v1

    if-ge v1, v2, :cond_9

    .line 114
    :cond_28
    iget-object v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_9

    :cond_36
    return-void
.end method

.method public start()Z
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updatePowerStatus(IIZ)V
    .registers 5

    .line 150
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    if-eqz p3, :cond_14

    .line 154
    iget-object p0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_14
    return-void
.end method
