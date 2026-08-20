.class public final Lcom/samsung/android/mcf/ble/BleScanSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field public static final KEY_BLE_SCAN_MODE:Ljava/lang/String; = "ble_ScanMode"

.field public static final KEY_BLE_SCAN_RSSI:Ljava/lang/String; = "ble_ScanRssi"

.field public static final KEY_PHY:Ljava/lang/String; = "phy"

.field public static final KEY_SCAN_INTERVAL:Ljava/lang/String; = "scanInterval"

.field public static final KEY_SCAN_WINDOW:Ljava/lang/String; = "scanWindow"

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final MAX_TIMEOUT:I = 0x36ee80

.field public static final RSSI_MAX:I = 0x14

.field public static final RSSI_MIN:I = -0x80

.field public static final SCAN_MODE_BALANCED:I = 0x2

.field public static final SCAN_MODE_FMM:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x3

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BleScanSettings"


# instance fields
.field public final mPhy:I

.field public final mScanFilterRssiValue:I

.field public mScanInterval:I

.field public mScanMode:I

.field public mScanWindow:I

.field public final mTimeout:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    iput p3, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    iput p4, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILcom/samsung/android/mcf/ble/BleScanSettings$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/ble/BleScanSettings;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ble_ScanMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    const-string v0, "ble_ScanRssi"

    const/16 v2, -0x80

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    const-string/jumbo v0, "timeout"

    const/16 v2, 0x7530

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    const-string/jumbo v0, "phy"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    const-string/jumbo v0, "scanInterval"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanInterval:I

    const-string/jumbo v0, "scanWindow"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanWindow:I

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanSettings;
    .registers 7

    const-string/jumbo v0, "phy"

    :try_start_3
    new-instance v1, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-direct {v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ble_ScanMode"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v3, "ble_ScanRssi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_25

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    :cond_25
    move v0, v5

    :goto_26
    invoke-virtual {v1, p0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setScanMode(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setScanFilterRssiThreshold(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    if-eqz v0, :cond_36

    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setPhy(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    :cond_36
    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object p0
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanSettings"

    const-string v1, "BleScanSettings - "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    const-string v1, "ble_ScanMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    const-string v1, "ble_ScanRssi"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    const-string/jumbo v1, "timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    const-string/jumbo v1, "phy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanInterval:I

    const-string/jumbo v1, "scanInterval"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanWindow:I

    const-string/jumbo v0, "scanWindow"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getPhy()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    return p0
.end method

.method public getScanFilterRssiValue()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    return p0
.end method

.method public getScanInterval()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanInterval:I

    return p0
.end method

.method public getScanMode()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    return p0
.end method

.method public getScanWindow()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanWindow:I

    return p0
.end method

.method public getTimeout()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    return p0
.end method

.method public setScanMode(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "ble_ScanMode"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ble_ScanRssi"

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "phy"

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanSettings"

    const-string/jumbo v1, "toJsonObject : "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleScanSettings{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mScanFilterRssiValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phy ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings;->mPhy:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
