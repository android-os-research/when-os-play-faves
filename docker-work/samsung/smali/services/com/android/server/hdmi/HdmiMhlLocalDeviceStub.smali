.class public final Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
.super Ljava/lang/Object;
.source "HdmiMhlLocalDeviceStub.java"


# static fields
.field public static final INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;


# instance fields
.field public final mPortId:I

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const v0, 0xffff

    const/4 v1, -0x1

    .line 11
    invoke-static {v0, v1, v1, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->mhlDevice(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    iput p2, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    return-void
.end method


# virtual methods
.method public getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 1

    .line 25
    sget-object p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object p0
.end method

.method public getPortId()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    return p0
.end method

.method public onBusOvercurrentDetected(Z)V
    .registers 2

    return-void
.end method

.method public onDeviceRemoved()V
    .registers 1

    return-void
.end method

.method public sendKeyEvent(IZ)V
    .registers 3

    return-void
.end method

.method public sendStandby()V
    .registers 1

    return-void
.end method

.method public setBusMode(I)V
    .registers 2

    return-void
.end method

.method public setDeviceStatusChange(II)V
    .registers 3

    return-void
.end method

.method public turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 2

    return-void
.end method
