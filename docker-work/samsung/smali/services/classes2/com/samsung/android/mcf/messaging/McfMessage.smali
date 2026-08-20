.class public Lcom/samsung/android/mcf/messaging/McfMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/messaging/McfMessage$Builder;
    }
.end annotation


# static fields
.field public static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field public static final KEY_DEVICE_BLE_ADDR:Ljava/lang/String; = "deviceBleAddr"

.field public static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field public static final KEY_MESSAGE_NET:Ljava/lang/String; = "messageNet"

.field public static final KEY_NEED_RESPONSE:Ljava/lang/String; = "needResponse"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final NET_TYPE_BLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "McfMessage"


# instance fields
.field public final mBleSID:I

.field public mJsonContent:Lorg/json/JSONObject;

.field public final mJsonString:Ljava/lang/String;

.field public mNeedResponse:Z

.field public final mNetworkType:I

.field public final mTargetBleAddress:Ljava/lang/String;

.field public final mTargetBluetoothAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    iput p2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    iput-object p3, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/BaseBundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    const-string v0, "messageNet"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    const-string v0, "deviceBleAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    const-string v0, "deviceAddr"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    :try_start_36
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonContent:Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_4a

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "McfMessage"

    const-string v3, "McfMessage "

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    const-string v0, "needResponse"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    return-void
.end method

.method public static createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/messaging/McfMessage;
    .registers 2
    .param p0    # Landroid/os/PersistableBundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_8

    new-instance v0, Lcom/samsung/android/mcf/messaging/McfMessage;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/messaging/McfMessage;-><init>(Landroid/os/BaseBundle;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBleSid()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    return p0
.end method

.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    const-string/jumbo v1, "serviceID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v1, "contents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    if-eqz v0, :cond_21

    const-string v1, "deviceAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v0, :cond_2a

    const-string v1, "deviceBleAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    const-string v1, "messageNet"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    const-string v0, "needResponse"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public getBundle()Landroid/os/PersistableBundle;
    .registers 4

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    const-string/jumbo v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    if-eqz v1, :cond_16

    const-string v2, "contents"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    if-eqz v1, :cond_1f

    const-string v2, "deviceAddr"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v1, :cond_28

    const-string v2, "deviceBleAddr"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    const-string v1, "messageNet"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonContent:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getJsonString()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageNetType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    return p0
.end method

.method public getTargetDeviceBleAddr()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    return-object p0
.end method

.method public needResponse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNeedResponse:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    const/16 v1, 0x11

    const/16 v2, 0xc

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v0, :cond_34

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    goto :goto_35

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "($m)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_34
    move-object v0, v4

    :goto_35
    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    if-eqz v5, :cond_61

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v4, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    goto :goto_61

    :cond_42
    iget-object v5, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_61

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "($m-ble)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mTargetBleAddress:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_61
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "McfMessage { i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mBleSID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", bt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", ble="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", j="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/messaging/McfMessage;->mJsonString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b4

    :cond_b2
    const-string p0, ""

    :goto_b4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
