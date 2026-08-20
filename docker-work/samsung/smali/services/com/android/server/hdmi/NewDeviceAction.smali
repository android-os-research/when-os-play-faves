.class public final Lcom/android/server/hdmi/NewDeviceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "NewDeviceAction.java"


# static fields
.field public static final STATE_WAITING_FOR_DEVICE_VENDOR_ID:I = 0x2

.field public static final STATE_WAITING_FOR_SET_OSD_NAME:I = 0x1

.field public static final TAG:Ljava/lang/String; = "NewDeviceAction"


# instance fields
.field public final mDeviceLogicalAddress:I

.field public final mDevicePhysicalAddress:I

.field public final mDeviceType:I

.field public mDisplayName:Ljava/lang/String;

.field public mTimeoutRetry:I

.field public mVendorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V
    .registers 5

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 68
    iput p2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 69
    iput p3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 70
    iput p4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    const p1, 0xffffff

    .line 71
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    return-void
.end method


# virtual methods
.method public final addDeviceInfo()V
    .registers 4

    .line 168
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->isInDeviceList(II)Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 170
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Device not found (%02x, %04x)"

    .line 170
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NewDeviceAction"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_35
    iget-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_41

    .line 175
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 177
    :cond_41
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 178
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 179
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPortId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    .line 181
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 182
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedMessages(I)V

    const/4 v1, 0x5

    .line 190
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 192
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    :cond_9b
    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 6

    .line 198
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eqz v0, :cond_2f

    if-eq v0, p1, :cond_7

    goto :goto_2f

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1b

    .line 202
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge p1, v1, :cond_17

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    return-void

    .line 207
    :cond_17
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    goto :goto_2f

    :cond_1b
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2f

    .line 209
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge p1, v1, :cond_29

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    return-void

    .line 214
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z
    .registers 4

    .line 220
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_e

    iget p0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final mayProcessCommandIfCached(II)Z
    .registers 4

    .line 143
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7

    .line 100
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 102
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 104
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_12

    return v3

    .line 108
    :cond_12
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    const/16 v1, 0x47

    if-ne v0, v1, :cond_44

    .line 111
    :try_start_1b
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_40

    :catch_25
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get OSD name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewDeviceAction"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_40
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    return v2

    :cond_44
    if-nez v0, :cond_77

    .line 118
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x46

    if-ne p1, v0, :cond_77

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    return v2

    :cond_52
    const/4 v4, 0x2

    if-ne v1, v4, :cond_77

    const/16 v1, 0x87

    if-ne v0, v1, :cond_66

    .line 126
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result p1

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v2

    :cond_66
    if-nez v0, :cond_77

    .line 131
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x8c

    if-ne p1, v0, :cond_77

    .line 133
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return v2

    :cond_77
    return v3
.end method

.method public final requestOsdName(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    :cond_5
    const/4 p1, 0x1

    .line 84
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 85
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v0, 0x47

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    .line 89
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 91
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final requestVendorId(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    :cond_5
    const/4 p1, 0x2

    .line 155
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 157
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v0, 0x87

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    .line 161
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 163
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public start()Z
    .registers 2

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    return v0
.end method
