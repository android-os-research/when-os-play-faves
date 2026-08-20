.class public final Lcom/android/server/hdmi/DeviceDiscoveryAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;,
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;
    }
.end annotation


# static fields
.field public static final STATE_WAITING_FOR_DEVICES:I = 0x5

.field public static final STATE_WAITING_FOR_DEVICE_POLLING:I = 0x1

.field public static final STATE_WAITING_FOR_OSD_NAME:I = 0x3

.field public static final STATE_WAITING_FOR_PHYSICAL_ADDRESS:I = 0x2

.field public static final STATE_WAITING_FOR_POWER:I = 0x6

.field public static final STATE_WAITING_FOR_VENDOR_ID:I = 0x4

.field public static final TAG:Ljava/lang/String; = "DeviceDiscoveryAction"


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

.field public final mDelayPeriod:I

.field public final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIsTvDevice:Z

.field public mProcessedDeviceCount:I

.field public mTimeoutRetry:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDelayPeriod(Lcom/android/server/hdmi/DeviceDiscoveryAction;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mallocateDevices(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->allocateDevices(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartPhysicalAddressStage(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartToDelayAction(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startToDelayAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwrapUpAndFinish(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;I)V
    .registers 4

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 105
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 106
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    .line 117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    iput-object p2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 118
    iput p3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    return-void
.end method


# virtual methods
.method public final allocateDevices(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 159
    new-instance v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo-IA;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_20
    return-void
.end method

.method public final checkAndProceedStage()V
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 453
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    return-void

    .line 458
    :cond_c
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_38

    const/4 v0, 0x0

    .line 459
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 460
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_28

    return-void

    .line 471
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    return-void

    .line 468
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPowerStatusStage()V

    return-void

    .line 465
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startVendorIdStage()V

    return-void

    .line 462
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startOsdNameStage()V

    return-void

    .line 477
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    return-void
.end method

.method public final delayActionWithTimePeriod(I)V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 201
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final getPortId(I)I
    .registers 3

    .line 358
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPortId(I)I

    move-result p0

    goto :goto_15

    .line 359
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPortId(I)I

    move-result p0

    :goto_15
    return p0
.end method

.method public final handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5

    .line 331
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 334
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_4b

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched address[expected:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceDiscoveryAction"

    .line 335
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 341
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmPhysicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 342
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmPhysicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getPortId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmPortId(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    const/4 v1, 0x2

    .line 343
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmDeviceType(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    const-string p1, ""

    .line 345
    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmDisplayName(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)V

    .line 348
    iget-boolean p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz p1, :cond_8b

    .line 349
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p1

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmDeviceType(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmPhysicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    .line 353
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 354
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 6

    .line 406
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 409
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v1, v3, :cond_4c

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched address[expected:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceDiscoveryAction"

    .line 410
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 415
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    if-eqz v1, :cond_5d

    .line 416
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 417
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 418
    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmPowerStatus(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 421
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 422
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 8

    .line 363
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 366
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const-string v3, "DeviceDiscoveryAction"

    if-eq v1, v2, :cond_4b

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched address[expected:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4b
    const-string v1, ""

    .line 374
    :try_start_4d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-eqz v2, :cond_78

    .line 375
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    const-string v5, "US-ASCII"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4d .. :try_end_5e} :catch_60

    move-object v1, v2

    goto :goto_78

    .line 378
    :catch_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode display name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_78
    :goto_78
    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmDisplayName(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 382
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public handleTimerEvent(I)V
    .registers 3

    .line 506
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eqz v0, :cond_53

    if-eq v0, p1, :cond_7

    goto :goto_53

    :cond_7
    const/4 p1, 0x5

    if-ne v0, p1, :cond_e

    .line 511
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    return-void

    .line 514
    :cond_e
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    if-ge v0, p1, :cond_1a

    .line 515
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    return-void

    :cond_1a
    const/4 p1, 0x0

    .line 518
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout[State="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Processed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceDiscoveryAction"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4d

    .line 524
    iget p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->removeDevice(I)V

    goto :goto_50

    .line 526
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 528
    :goto_50
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    :cond_53
    :goto_53
    return-void
.end method

.method public final handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5

    .line 386
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 389
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_4b

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched address[expected:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceDiscoveryAction"

    .line 390
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 395
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 396
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 397
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result p1

    .line 398
    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmVendorId(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 401
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 402
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final increaseProcessedDeviceCount()V
    .registers 2

    .line 426
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    return-void
.end method

.method public final mayProcessMessageIfCached(II)Z
    .registers 4

    .line 276
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6

    .line 286
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_78

    const/4 v1, 0x3

    if-eq v0, v1, :cond_55

    const/4 v1, 0x4

    if-eq v0, v1, :cond_32

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    return v3

    .line 314
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1d

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 317
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_31

    .line 318
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_31

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    :cond_31
    return v3

    .line 304
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x87

    if-ne v0, v1, :cond_3e

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 307
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_54

    .line 308
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_54

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    :cond_54
    return v3

    .line 294
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_61

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 297
    :cond_61
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_77

    .line 298
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x46

    if-ne v0, v1, :cond_77

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    :cond_77
    return v3

    .line 288
    :cond_78
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x84

    if-ne v0, v1, :cond_84

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    :cond_84
    return v3
.end method

.method public final queryOsdName(I)V
    .registers 3

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 214
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/16 v0, 0x47

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 223
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 224
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final queryPhysicalAddress(I)V
    .registers 3

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 185
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void

    .line 189
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/16 v0, 0x84

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 195
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 196
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final queryPowerStatus(I)V
    .registers 3

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 262
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/16 v0, 0x90

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 271
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 272
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final queryVendorId(I)V
    .registers 3

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 238
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void

    .line 242
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/16 v0, 0x87

    .line 244
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 248
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 249
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final removeDevice(I)V
    .registers 2

    .line 431
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final sendQueryCommand()V
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    .line 483
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_32

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    const/4 v2, 0x6

    if-eq v1, v2, :cond_20

    return-void

    .line 497
    :cond_20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPowerStatus(I)V

    return-void

    .line 485
    :cond_24
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->delayActionWithTimePeriod(I)V

    return-void

    .line 494
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryVendorId(I)V

    return-void

    .line 491
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryOsdName(I)V

    return-void

    .line 488
    :cond_32
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPhysicalAddress(I)V

    return-void
.end method

.method public start()Z
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 133
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 135
    new-instance v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;-><init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    const v2, 0x20001

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    return v0
.end method

.method public final startOsdNameStage()V
    .registers 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Osd Name Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    const/4 v0, 0x3

    .line 207
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 209
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final startPhysicalAddressStage()V
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Physical Address Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    const/4 v0, 0x2

    .line 174
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 176
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final startPowerStatusStage()V
    .registers 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Power Status Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    const/4 v0, 0x6

    .line 255
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 257
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final startToDelayAction()V
    .registers 3

    const-string v0, "DeviceDiscoveryAction"

    const-string v1, "Waiting for connected devices to be ready"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 166
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 168
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final startVendorIdStage()V
    .registers 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Vendor Id Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    const/4 v0, 0x4

    .line 231
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 233
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    return-void
.end method

.method public final verifyValidLogicalAddress(I)Z
    .registers 2

    if-ltz p1, :cond_8

    const/16 p0, 0xf

    if-ge p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final wrapUpAndFinish()V
    .registers 7

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------Wrap up Device Discovery:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]---------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 438
    invoke-static {v3}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$mtoHdmiDeviceInfo(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " DeviceInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_54
    const-string v2, "--------------------------------------------"

    .line 442
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    invoke-interface {v1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;->onDeviceDiscoveryDone(Ljava/util/List;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    .line 446
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v0, :cond_6c

    .line 447
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processAllDelayedMessages()V

    :cond_6c
    return-void
.end method
