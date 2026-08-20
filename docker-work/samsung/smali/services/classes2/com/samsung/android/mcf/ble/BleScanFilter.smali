.class public Lcom/samsung/android/mcf/ble/BleScanFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_TYPE_PUBLIC:I = 0x0

.field public static final ADDRESS_TYPE_RANDOM:I = 0x1

.field public static final KEY_BLE_SCAN_FILTER_ADDRESS_TYPE:Ljava/lang/String; = "ble_Scan_AddressType"

.field public static final KEY_BLE_SCAN_FILTER_DEVICE_ADDR:Ljava/lang/String; = "ble_Scan_DeviceAddr"

.field public static final KEY_BLE_SCAN_FILTER_DEVICE_NAME:Ljava/lang/String; = "ble_Scan_DeviceName"

.field public static final KEY_BLE_SCAN_FILTER_IRK:Ljava/lang/String; = "ble_Scan_IRK"

.field public static final KEY_BLE_SCAN_FILTER_MF_DATA:Ljava/lang/String; = "ble_Scan_Mf_Data"

.field public static final KEY_BLE_SCAN_FILTER_MF_DATA_MASK:Ljava/lang/String; = "ble_Scan_Mf_DataMask"

.field public static final KEY_BLE_SCAN_FILTER_MF_ID:Ljava/lang/String; = "ble_Scan_Mf_Id"

.field public static final KEY_BLE_SCAN_FILTER_PASSIVE_SCAN:Ljava/lang/String; = "ble_Scan_passiveScan"

.field public static final KEY_BLE_SCAN_FILTER_SDATA:Ljava/lang/String; = "ble_Scan_SData"

.field public static final KEY_BLE_SCAN_FILTER_SDATA_MASK:Ljava/lang/String; = "ble_Scan_SDataMask"

.field public static final KEY_BLE_SCAN_FILTER_SDATA_UUID:Ljava/lang/String; = "ble_Scan_DataUuid"

.field public static final KEY_BLE_SCAN_FILTER_UUID:Ljava/lang/String; = "ble_Scan_Uuid"

.field public static final KEY_BLE_SCAN_FILTER_UUID_MASK:Ljava/lang/String; = "ble_Scan_UuidMask"

.field public static final TAG:Ljava/lang/String; = "BleScanFilter"


# instance fields
.field public final mAddressType:I

.field public final mDeviceAddress:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mDeviceName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mIrk:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mManufacturerData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mManufacturerDataMask:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mManufacturerId:I

.field public final mPassiveScan:Z

.field public final mServiceData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mServiceDataMask:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mServiceDataUuid:Landroid/os/ParcelUuid;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mServiceUuid:Landroid/os/ParcelUuid;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mServiceUuidMask:Landroid/os/ParcelUuid;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ORmamEZlYtnMRvLFDZF2elUvFxE(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->lambda$toScanFilter$2(Landroid/bluetooth/le/ScanFilter$Builder;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$PGzl5FWkKr3SZgmqTnwNngQdWYw(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->lambda$toScanFilter$0(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qcY7iWX3ymFunvJR7rpJncKjw-I(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->lambda$toScanFilter$1(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ble_Scan_DeviceName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    const-string v0, "ble_Scan_DeviceAddr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    const-string v0, "ble_Scan_Uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    :cond_21
    const-string v0, "ble_Scan_UuidMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    :cond_2f
    const-string v0, "ble_Scan_DataUuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    :cond_3d
    const-string v0, "ble_Scan_SData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    const-string v0, "ble_Scan_SDataMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    const-string v0, "ble_Scan_Mf_Id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const-string v0, "ble_Scan_Mf_Data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    const-string v0, "ble_Scan_Mf_DataMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    const-string v0, "ble_Scan_passiveScan"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    const-string v0, "ble_Scan_AddressType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    const-string v0, "ble_Scan_IRK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[B)V
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/ParcelUuid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/ParcelUuid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/ParcelUuid;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iput-object p4, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iput-object p5, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p6, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    iput-object p7, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    iput p8, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    iput-object p9, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    iput-object p10, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    iput-boolean p11, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    iput p12, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    iput-object p13, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[BLcom/samsung/android/mcf/ble/BleScanFilter$a;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Lcom/samsung/android/mcf/ble/BleScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[B)V

    return-void
.end method

.method public static synthetic access$000(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z

    move-result p0

    return p0
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;
    .registers 14
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ble_Scan_Mf_DataMask"

    const-string v1, "ble_Scan_Mf_Data"

    const-string v2, "ble_Scan_Mf_Id"

    const-string v3, "ble_Scan_SDataMask"

    const-string v4, "ble_Scan_SData"

    const-string v5, "ble_Scan_DataUuid"

    const-string v6, "ble_Scan_UuidMask"

    const-string v7, "ble_Scan_Uuid"

    const-string v8, "ble_Scan_DeviceAddr"

    const-string v9, "ble_Scan_DeviceName"

    const/4 v10, 0x0

    :try_start_15
    new-instance v11, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_2c
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_39
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_48

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    goto :goto_49

    :cond_48
    move-object p0, v10

    :goto_49
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    goto :goto_59

    :cond_58
    move-object v6, v10

    :goto_59
    if-eqz p0, :cond_64

    if-eqz v6, :cond_61

    invoke-virtual {v11, p0, v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_64

    :cond_61
    invoke-virtual {v11, p0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_64
    :goto_64
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_73

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    goto :goto_74

    :cond_73
    move-object p0, v10

    :goto_74
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_84

    :cond_83
    move-object v4, v10

    :goto_84
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_94

    :cond_93
    move-object v3, v10

    :goto_94
    if-eqz p0, :cond_9f

    if-eqz v3, :cond_9c

    invoke-virtual {v11, p0, v4, v3}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_9f

    :cond_9c
    invoke-virtual {v11, p0, v4}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_9f
    :goto_9f
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_aa

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_ab

    :cond_aa
    const/4 p0, -0x1

    :goto_ab
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_bb

    :cond_ba
    move-object v1, v10

    :goto_bb
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_cb

    :cond_ca
    move-object v0, v10

    :goto_cb
    if-ltz p0, :cond_d6

    if-eqz v0, :cond_d3

    invoke-virtual {v11, p0, v1, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    goto :goto_d6

    :cond_d3
    invoke-virtual {v11, p0, v1}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_d6
    :goto_d6
    const-string p0, "ble_Scan_passiveScan"

    invoke-virtual {v12, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e1

    invoke-virtual {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->enablePassiveScan()Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    :cond_e1
    invoke-virtual {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object p0
    :try_end_e5
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_e5} :catch_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_e5} :catch_e6

    return-object p0

    :catch_e6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanFilter"

    const-string v1, "BleScanFilter - "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method private synthetic lambda$toScanFilter$0(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {p1, p2, p0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method private synthetic lambda$toScanFilter$1(Landroid/bluetooth/le/ScanFilter$Builder;Landroid/os/ParcelUuid;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, p2, v0, p0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method private synthetic lambda$toScanFilter$2(Landroid/bluetooth/le/ScanFilter$Builder;[B)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0, p2, p0}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method

.method public static setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z
    .registers 14
    .param p0    # Landroid/bluetooth/le/ScanFilter$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    const-string/jumbo v0, "setDeviceAddressWithIrk : "

    const-string v1, "BleScanFilter"

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setDeviceAddress"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, [B

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addressType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    aput-object p3, v4, v9

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_45} :catch_46

    return v8

    :catch_46
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v1, "ble_Scan_DeviceName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string v1, "ble_Scan_DeviceAddr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ble_Scan_Uuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ble_Scan_UuidMask"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ble_Scan_DataUuid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v0, :cond_49

    const-string v1, "ble_Scan_SData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_49
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_52

    const-string v1, "ble_Scan_SDataMask"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_52
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const-string v1, "ble_Scan_Mf_Id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_62

    const-string v1, "ble_Scan_Mf_Data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_62
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_6b

    const-string v1, "ble_Scan_Mf_DataMask"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_6b
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v0, :cond_74

    const-string v1, "ble_Scan_passiveScan"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_74
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    const-string v1, "ble_Scan_AddressType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz p0, :cond_84

    const-string v0, "ble_Scan_IRK"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_84
    return-object p1
.end method

.method public getIrk()[B
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    return-object p0
.end method

.method public isOnlyIrkFilter()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "ble_Scan_DeviceName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v2, "ble_Scan_DeviceAddr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_24

    const-string v2, "ble_Scan_Uuid"

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_31

    const-string v2, "ble_Scan_UuidMask"

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_3e

    const-string v2, "ble_Scan_DataUuid"

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v1, :cond_4b

    const-string v2, "ble_Scan_SData"

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v1, :cond_58

    const-string v2, "ble_Scan_SDataMask"

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_58
    iget v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_62

    const-string v2, "ble_Scan_Mf_Id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_62
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v1, :cond_6f

    const-string v2, "ble_Scan_Mf_Data"

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6f
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v1, :cond_7c

    const-string v2, "ble_Scan_Mf_DataMask"

    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7c
    iget-boolean p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz p0, :cond_86

    const-string p0, "ble_Scan_passiveScan"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_86
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8a} :catch_8b

    return-object p0

    :catch_8b
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanFilter"

    const-string/jumbo v1, "toJsonObject : "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toScanFilter()Landroid/bluetooth/le/ScanFilter;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->semEnablePassiveScan()Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_44
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/le/ScanFilter$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_56
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v1, :cond_63

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_63

    iget p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    invoke-static {v0, v2, p0, v1}, Lcom/samsung/android/mcf/ble/BleScanFilter;->setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z

    :cond_63
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleScanFilter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    const-string v2, ""

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SUuidMask="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mPassiveScan:Z

    if-eqz v1, :cond_4b

    const-string v1, ", Passive=true"

    goto :goto_4c

    :cond_4b
    move-object v1, v2

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_68

    :cond_67
    move-object v1, v2

    :goto_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_180

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    if-eqz v0, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SD="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceData:[B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_98

    :cond_97
    move-object v0, v2

    :goto_98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_b7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDMask="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mServiceDataMask:[B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b8

    :cond_b7
    move-object v0, v2

    :goto_b8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", MId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    :cond_d8
    move-object v0, v2

    :goto_d9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_f8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", MD="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerData:[B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f9

    :cond_f8
    move-object v0, v2

    :goto_f9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_118

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", MDMask="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mManufacturerDataMask:[B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_119

    :cond_118
    move-object v0, v2

    :goto_119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_13e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Addr="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", AddrType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mAddressType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    :cond_13e
    move-object v0, v2

    :goto_13f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    if-eqz v0, :cond_15e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Irk="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mIrk:[B

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15f

    :cond_15e
    move-object v0, v2

    :goto_15f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_179

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
