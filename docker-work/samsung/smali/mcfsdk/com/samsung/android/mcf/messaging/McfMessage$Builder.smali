.class public final Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/messaging/McfMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final mNetworkType:I


# instance fields
.field private mBleSID:I

.field private mJsonString:Ljava/lang/String;

.field private mNeedResponse:Z

.field private mTargetBleAddress:Ljava/lang/String;

.field private mTargetBluetoothAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/messaging/McfMessage;
    .registers 9

    iget v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    if-eqz v1, :cond_2d

    iget-object v4, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBluetoothAddress:Ljava/lang/String;

    if-nez v4, :cond_15

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mJsonString:Ljava/lang/String;

    if-eqz v5, :cond_25

    new-instance v7, Lcom/samsung/android/mcf/messaging/McfMessage;

    iget-object v3, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mNeedResponse:Z

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/messaging/McfMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON content is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mJsonString:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid JSON content"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessageId(I)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    return-object p0
.end method

.method public setMessageId(IZZ)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .registers 4

    if-eq p2, p3, :cond_9

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mBleSID:I

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong message ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNeedResponse(Z)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mNeedResponse:Z

    return-object p0
.end method

.method public setTargetBleDevice(Ljava/lang/String;)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBluetoothAddress:Ljava/lang/String;

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target BLE address"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBleAddress:Ljava/lang/String;

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage$Builder;->mTargetBluetoothAddress:Ljava/lang/String;

    return-object p0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
