.class public final Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final LEN_IRK_OCTETS:I = 0x10


# instance fields
.field private mAddressType:I

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mIrk:[B

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mPassiveScan:Z

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    return-void
.end method

.method private setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-ltz p2, :cond_31

    const/4 v0, 0x1

    if-gt p2, v0, :cond_31

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2a

    if-eqz p3, :cond_2a

    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    # invokes: Lcom/samsung/android/mcf/ble/BleScanFilter;->setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->access$000(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_2a

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters for irk scan"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    return-object p0

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'addressType\' is invalid!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid device address "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleScanFilter;
    .registers 17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v3, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    if-eqz v1, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one filter must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    new-instance v15, Lcom/samsung/android/mcf/ble/BleScanFilter;

    iget-object v1, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v5, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v6, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    iget-object v7, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    iget v8, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    iget-object v9, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    iget-object v10, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    iget-boolean v11, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mPassiveScan:Z

    iget v12, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    iget-object v13, v0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    const/4 v14, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/mcf/ble/BleScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BZI[BLcom/samsung/android/mcf/ble/BleScanFilter$a;)V

    return-object v15
.end method

.method public enablePassiveScan()Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mPassiveScan:Z

    return-object p0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceAddress(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'irk\' is invalid length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_d
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_d
    if-eqz p3, :cond_26

    if-eqz p2, :cond_1e

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_16

    goto :goto_26

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerId:I

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerData:[B

    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    if-eqz p1, :cond_22

    if-eqz p3, :cond_1b

    if-eqz p2, :cond_13

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_b

    goto :goto_1b

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for service data and service data mask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceData is null while serviceDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    :goto_1b
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    if-eqz p2, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uuid is null while uuidMask is not null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_d
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method
