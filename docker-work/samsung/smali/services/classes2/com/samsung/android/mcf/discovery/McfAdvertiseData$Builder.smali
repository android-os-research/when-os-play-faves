.class public final Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public accessPermission:I

.field public bleSID:I

.field public byteString:Ljava/lang/String;

.field public jsonString:Ljava/lang/String;

.field public targetDeviceBluetoothAddr:Ljava/lang/String;

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
    .registers 10

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->bleSID:I

    if-eqz v1, :cond_16

    new-instance v8, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->byteString:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->jsonString:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    iget v6, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/mcf/discovery/McfAdvertiseData$a;)V

    return-object v8

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "setAdvertiseData is requirement"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAccessPermission(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_6

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->accessPermission:I

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accessPermission is invalid value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 4

    if-eq p2, p3, :cond_9

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->bleSID:I

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong advertise data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->byteString:Ljava/lang/String;

    return-object p0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->jsonString:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "wrong json data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "target device address is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    .registers 3

    if-ltz p1, :cond_a

    const v0, 0x5265c00

    if-gt p1, v0, :cond_a

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->timeout:I

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "timeout is out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
