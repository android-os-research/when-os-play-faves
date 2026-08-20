.class public final Lcom/android/server/hdmi/HdmiMhlControllerStub;
.super Ljava/lang/Object;
.source "HdmiMhlControllerStub.java"


# static fields
.field public static final EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

.field public static final INVALID_DEVICE_ROLES:I

.field public static final INVALID_MHL_VERSION:I

.field public static final NO_SUPPORTED_FEATURES:I

.field public static final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 33
    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .registers 2

    .line 48
    new-instance v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0
.end method


# virtual methods
.method public addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public clearAllLocalDevices()V
    .registers 1

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    return-void
.end method

.method public getAllLocalDevices()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object p0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getEcbusDeviceRoles(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMhlVersion(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getPeerMhlVersion(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 1

    .line 52
    sget-object p0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-object p0
.end method

.method public getSupportedFeatures(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isReady()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public sendVendorCommand(III[B)V
    .registers 5

    return-void
.end method

.method public setOption(II)V
    .registers 3

    return-void
.end method
