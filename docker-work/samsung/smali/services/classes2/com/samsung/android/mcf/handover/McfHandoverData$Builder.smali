.class public final Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/handover/McfHandoverData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public bleSID:I

.field public connectionType:I

.field public jsonString:Ljava/lang/String;

.field public targetDeviceBluetoothAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/handover/ConnectionType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/handover/McfHandoverData;
    .registers 8

    iget v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->bleSID:I

    if-eqz v1, :cond_12

    new-instance v6, Lcom/samsung/android/mcf/handover/McfHandoverData;

    iget-object v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->jsonString:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/handover/McfHandoverData;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/handover/McfHandoverData$a;)V

    return-object v6

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "setAdvertiseData is requirement"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConnectionType(I)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    return-object p0
.end method

.method public setConnectionType(Lcom/samsung/android/mcf/handover/ConnectionType;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 2

    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/ConnectionType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->connectionType:I

    return-object p0
.end method

.method public setHandoverData(I)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->bleSID:I

    return-object p0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->jsonString:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong json data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "target device address is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
