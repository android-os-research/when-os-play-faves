.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleAdvertiseData$Builder;
    }
.end annotation


# static fields
.field private static final KEY_ADV_INCLUDE_DEVICENAME:Ljava/lang/String; = "AdvIncludeDeviceName"

.field private static final KEY_ADV_INCLUDE_RSP:Ljava/lang/String; = "AdvIncludeRsp"

.field private static final KEY_ADV_MANUFACTURER_DATA:Ljava/lang/String; = "AdvManufacturerData"

.field private static final KEY_ADV_MANUFACTURER_ID:Ljava/lang/String; = "AdvManufacturerId"

.field private static final KEY_ADV_SVC_DATA:Ljava/lang/String; = "AdvSvcData"

.field private static final KEY_ADV_SVC_DATA_UUID:Ljava/lang/String; = "AdvSvcDataUuid"

.field private static final KEY_ADV_SVC_UUID:Ljava/lang/String; = "AdvSvcUuid"

.field private static final KEY_RSP_INCLUDE_DEVICENAME:Ljava/lang/String; = "RspIncludeDeviceName"

.field private static final KEY_RSP_MANUFACTURER_DATA:Ljava/lang/String; = "RspManufacturerData"

.field private static final KEY_RSP_MANUFACTURER_ID:Ljava/lang/String; = "RspManufacturerId"

.field private static final KEY_RSP_SVC_DATA:Ljava/lang/String; = "RspSvcData"

.field private static final KEY_RSP_SVC_DATA_UUID:Ljava/lang/String; = "RspSvcDataUuid"

.field private static final KEY_RSP_SVC_UUID:Ljava/lang/String; = "RspSvcUuid"

.field public static final Type_ADV:I = 0x0

.field public static final Type_RSP:I = 0x1


# instance fields
.field private mHasResponseData:Z

.field private final mIncludeDeviceName:Z

.field private final mManufacturerId:I

.field private final mManufacturerSpecificData:[B

.field private final mServiceData:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    if-nez p2, :cond_4d

    const-string p2, "AdvSvcUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    :cond_16
    const-string p2, "AdvSvcDataUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_24

    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    :cond_24
    const-string p2, "AdvSvcData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    const-string p2, "AdvManufacturerId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    const-string p2, "AdvManufacturerData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    const-string p2, "AdvIncludeDeviceName"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    const-string p2, "AdvIncludeRsp"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    goto :goto_89

    :cond_4d
    const-string p2, "RspSvcUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5b

    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    :cond_5b
    const-string p2, "RspSvcDataUuid"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_69

    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    :cond_69
    const-string p2, "RspSvcData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    const-string p2, "RspManufacturerId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    const-string p2, "RspManufacturerData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    const-string p2, "RspIncludeDeviceName"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    :goto_89
    return-void
.end method

.method private constructor <init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    iput-object p3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    iput-object p4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    iput-boolean p6, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZLcom/samsung/android/mcf/ble/BleAdvertiseData$a;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;-><init>(Landroid/os/ParcelUuid;I[BLandroid/os/ParcelUuid;[BZ)V

    return-void
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 5

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v0, "AdvIncludeRsp"

    if-nez p2, :cond_4a

    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AdvSvcUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AdvSvcDataUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    const-string v1, "AdvSvcData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2c
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz p2, :cond_3e

    iget p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    const-string v1, "AdvManufacturerId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    const-string v1, "AdvManufacturerData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_3e
    iget-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    const-string v1, "AdvIncludeDeviceName"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x0

    :goto_46
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_4a
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_57

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RspSvcUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz p2, :cond_6b

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RspSvcDataUuid"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    const-string v1, "RspSvcData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_6b
    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz p2, :cond_7d

    iget p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    const-string v1, "RspManufacturerId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    const-string v1, "RspManufacturerData"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_7d
    iget-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    const-string v1, "RspIncludeDeviceName"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    goto :goto_46
.end method

.method public getIncludeDeviceName()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    return v0
.end method

.method public getManufacturerId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    return v0
.end method

.method public getManufacturerSpecificData()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    return-object v0
.end method

.method public getServiceData()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hasResponseData()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mHasResponseData:Z

    return v0
.end method

.method synthetic lambda$toAdvertiseData$0$com-samsung-android-mcf-ble-BleAdvertiseData(Landroid/bluetooth/le/AdvertiseData$Builder;[B)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method

.method synthetic lambda$toAdvertiseData$1$com-samsung-android-mcf-ble-BleAdvertiseData(Landroid/bluetooth/le/AdvertiseData$Builder;[B)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    return-void
.end method

.method public toAdvertiseData()Landroid/bluetooth/le/AdvertiseData;
    .registers 4

    new-instance v0, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseData$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Landroid/bluetooth/le/AdvertiseData$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleAdvertiseData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    const-string v2, ""

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SDUuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    :cond_46
    move-object v1, v2

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v1, :cond_6d

    iget-object v3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    if-eqz v3, :cond_6d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", SD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mServiceData:[B

    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6e

    :cond_6d
    move-object v3, v2

    :goto_6e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    if-eqz v1, :cond_a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mManufacturerSpecificData:[B

    invoke-static {v2}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IDN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
