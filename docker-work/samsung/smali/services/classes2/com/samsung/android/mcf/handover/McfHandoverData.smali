.class public Lcom/samsung/android/mcf/handover/McfHandoverData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/handover/McfHandoverData$Builder;
    }
.end annotation


# static fields
.field public static final KEY_CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field public static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field public static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final TAG:Ljava/lang/String; = "McfHandoverData"


# instance fields
.field public final bleSID:I

.field public final connectionType:I

.field public jsonContent:Lorg/json/JSONObject;

.field public final jsonString:Ljava/lang/String;

.field public final targetDeviceBluetoothAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    iput-object p2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/handover/McfHandoverData$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/handover/McfHandoverData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    const-string v0, "deviceAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a

    :try_start_26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonContent:Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_3a

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "McfHandoverData"

    const-string v3, "getKeyJsonContents "

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    const-string v0, "connectionType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    return-void
.end method


# virtual methods
.method public getBleSID()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    return p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "contents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    const-string/jumbo v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v1, :cond_1f

    const-string v2, "deviceAddr"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget p0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    const-string v1, "connectionType"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getConnectionType()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    return p0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonContent:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getJsonString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v0, :cond_2d

    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_9

    goto :goto_2e

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "($m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "McfAdvertiseData{bleSID=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->bleSID:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    const-string v3, ""

    if-eqz v0, :cond_5c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", targetAddr=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_5c
    move-object v0, v3

    :goto_5d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_7e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", json=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->jsonString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", connectionType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/handover/McfHandoverData;->connectionType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
