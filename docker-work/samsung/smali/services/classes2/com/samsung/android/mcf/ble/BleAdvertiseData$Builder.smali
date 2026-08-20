.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mIncludeDeviceName:Z

.field public mManufacturerId:I

.field public mManufacturerSpecificData:[B

.field public mServiceData:[B

.field public mServiceDataUuid:Landroid/os/ParcelUuid;

.field public mServiceUuid:Landroid/os/ParcelUuid;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    return-void
.end method


# virtual methods
.method public addManufacturerData(I[B)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 4

    if-ltz p1, :cond_11

    if-eqz p2, :cond_9

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerId:I

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerSpecificData:[B

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "manufacturerSpecificData is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid manufacturerId - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addServiceData(Landroid/os/ParcelUuid;[B)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 3

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceData:[B

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "serviceData Uuid or serviceDataUuid is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addServiceUuid(Landroid/os/ParcelUuid;)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "service Uuids are null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Lcom/samsung/android/mcf/ble/BleAdvertiseData;
    .registers 10

    new-instance v8, Lcom/samsung/android/mcf/ble/BleAdvertiseData;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerId:I

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mManufacturerSpecificData:[B

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mServiceData:[B

    iget-boolean v6, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;-><init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZLcom/samsung/android/mcf/ble/BleAdvertiseData$a;)V

    return-object v8
.end method

.method public setIncludeDeviceName(Z)Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;->mIncludeDeviceName:Z

    return-object p0
.end method
