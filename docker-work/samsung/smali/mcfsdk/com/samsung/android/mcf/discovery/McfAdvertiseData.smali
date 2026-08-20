.class public Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_CONTACT_ONLY:I = 0x1

.field public static final ACCESS_CUSTOM:I = 0x2

.field public static final ACCESS_EVERYONE:I = 0x0

.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field private static final KEY_ADV_ACCESS_PERMISSION:Ljava/lang/String; = "advAccessPermission"

.field private static final KEY_BYTE_CONTENTS:Ljava/lang/String; = "byteContents"

.field private static final KEY_DEVICE_ADDR:Ljava/lang/String; = "deviceAddr"

.field private static final KEY_JSON_CONTENTS:Ljava/lang/String; = "contents"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field private static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final LONG_TIMEOUT:I = 0x36ee80

.field public static final MAX_TIMEOUT:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "McfAdvertiseData"


# instance fields
.field private final accessPermission:I

.field private final bleSID:I

.field private byteContent:[B

.field private final byteString:Ljava/lang/String;

.field private jsonContent:Lorg/json/JSONObject;

.field private final jsonString:Ljava/lang/String;

.field private final targetDeviceBluetoothAddr:Ljava/lang/String;

.field private timeout:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    iput-object p2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    iput p6, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/mcf/discovery/McfAdvertiseData$a;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    const-string v0, "deviceAddr"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    const-string v0, "byteContents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteContent:[B

    :cond_25
    const-string v0, "contents"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_49

    :try_start_35
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonContent:Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_49

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "McfAdvertiseData"

    const-string v3, "getKeyJsonContents "

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    const-string v0, "advAccessPermission"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    const-string v0, "timeout"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return-void
.end method


# virtual methods
.method public getAccessPermission()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    return v0
.end method

.method public getBleSID()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "contents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    const-string v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string v2, "deviceAddr"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v1, :cond_27

    const-string v2, "byteContents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    const-string v2, "advAccessPermission"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "contents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v1, "byteContents"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v1, "deviceAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    const-string v1, "advAccessPermission"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    const-string v1, "timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getByteContent()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteContent:[B

    return-object v0
.end method

.method public getByteString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonContent()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDeviceBluetoothAddr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return v0
.end method

.method public setTimeout(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    if-eqz v0, :cond_2f

    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_9

    goto :goto_30

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "($m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->targetDeviceBluetoothAddr:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{id=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->bleSID:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    const-string v3, ""

    if-eqz v0, :cond_63

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", target=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_63
    move-object v0, v3

    :goto_64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_8a

    iget-object v4, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    if-eqz v4, :cond_8a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", byte=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->byteString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8b

    :cond_8a
    move-object v4, v3

    :goto_8b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    if-eqz v1, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", json=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->jsonString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_ae
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->accessPermission:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
