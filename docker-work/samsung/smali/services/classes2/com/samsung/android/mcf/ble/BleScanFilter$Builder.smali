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
.field public static final LEN_IRK_OCTETS:I = 0x10


# instance fields
.field public mAddressType:I

.field public mDeviceAddress:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mIrk:[B

.field public mManufacturerData:[B

.field public mManufacturerDataMask:[B

.field public mManufacturerId:I

.field public mPassiveScan:Z

.field public mServiceData:[B

.field public mServiceDataMask:[B

.field public mServiceDataUuid:Landroid/os/ParcelUuid;

.field public mServiceUuid:Landroid/os/ParcelUuid;

.field public mUuidMask:Landroid/os/ParcelUuid;


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
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mPassiveScan:Z

    return-object p0
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceAddress(Ljava/lang/String;I)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceAddress(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'irk\' is invalid length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDeviceAddressInternal(Ljava/lang/String;I[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-ltz p2, :cond_2b

    const/4 v0, 0x1

    if-gt p2, v0, :cond_2b

    if-eqz p3, :cond_24

    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    # invokes: Lcom/samsung/android/mcf/ble/BleScanFilter;->setDeviceAddressWithIrk(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->access$000(Landroid/bluetooth/le/ScanFilter$Builder;Ljava/lang/String;I[B)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters for irk scan"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_24
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mAddressType:I

    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mIrk:[B

    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'addressType\' is invalid!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid device address "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid manufacture id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid manufacture id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_d
    if-eqz p3, :cond_27

    if-eqz p2, :cond_1f

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_16

    goto :goto_27

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    :goto_27
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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "serviceDataUuid is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;
    .registers 6

    if-eqz p1, :cond_24

    if-eqz p3, :cond_1d

    if-eqz p2, :cond_14

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_b

    goto :goto_1d

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size mismatch for service data and service data mask"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "serviceData is null while serviceDataMask is not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceData:[B

    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "serviceDataUuid is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-eqz p2, :cond_e

    if-eqz p1, :cond_5

    goto :goto_e

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uuid is null while uuidMask is not null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_e
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method
