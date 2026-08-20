.class public Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;
.super Ljava/lang/Object;
.source "BluetoothDeviceBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManufacturerData"
.end annotation


# static fields
.field public static final MANUFACTURER_DEVICE_TYPE_SAMSUNG_GALAXY_WATCH:I = 0xff

.field public static final MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B = 0x10t

.field public static final MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B = 0x8t

.field public static final MANUFACTURER_SS_LE_DEVICE_FIELD:B = 0x4t

.field public static final MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B = 0x1t

.field public static final MANUFACTURER_SS_LE_PROXIMITY_FIELD:B = 0x2t

.field public static final MANUFACTURER_TYPE_DEFAULT:I = 0x0

.field public static final MANUFACTURER_TYPE_OLD:I = 0x1

.field public static final MANUFACTURER_TYPE_SS_BREDR:I = 0x2

.field public static final MANUFACTURER_TYPE_SS_LE:I = 0x3


# instance fields
.field public MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

.field public MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

.field public MANUFACTURER_LENGTH_SS_LE_DEVICE:I

.field public MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

.field public MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

.field public MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

.field public MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

.field public MANUFACTURER_OFFSET_OLD_SAMSUNG_GALAXY_WATCH_DEVICE_TYPE:I

.field public MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

.field public MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field public MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field public MANUFACTURER_OFFSET_SS_LE_FEATURES:I

.field public MANUFACTURER_OFFSET_SS_SERVICE_ID:I

.field public mDeviceId:[B

.field public mManufacturerRawData:[B

.field public mManufacturerType:I


# direct methods
.method public constructor <init>([B)V
    .registers 5

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 511
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    const/4 v1, 0x7

    .line 512
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    const/16 v2, 0xa

    .line 513
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    const/16 v2, 0xd

    .line 514
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SAMSUNG_GALAXY_WATCH_DEVICE_TYPE:I

    .line 515
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    .line 516
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    const/16 v1, 0x1f

    .line 517
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    const/4 v1, 0x1

    .line 518
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    const/16 v2, 0x8

    .line 519
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    .line 520
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 521
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 523
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    const/4 v1, 0x2

    .line 524
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    const/4 v2, 0x6

    .line 525
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    const/16 v2, 0x12

    .line 526
    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    .line 527
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    const/4 v0, 0x0

    .line 529
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    new-array v0, v1, [B

    .line 531
    iput-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    .line 534
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setManufacturerRawData([B)V

    .line 535
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setManufacturerType([B)V

    .line 536
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([B)V

    return-void
.end method


# virtual methods
.method public getDeviceId()[B
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    return-object p0
.end method

.method public getManufacturerRawData()[B
    .registers 1

    .line 581
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    return-object p0
.end method

.method public getManufacturerType()I
    .registers 1

    .line 589
    iget p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    return p0
.end method

.method public final isSupportFeature(B)Z
    .registers 4

    .line 646
    :try_start_0
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    goto :goto_2a

    .line 648
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    if-eqz v0, :cond_2a

    .line 649
    iget p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte p0, v0, p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_13

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_2a

    const/4 p0, 0x1

    return p0

    :catch_13
    move-exception p0

    .line 661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportFeature exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothDeviceBatteryManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final setDeviceId([B)V
    .registers 6

    .line 545
    :try_start_0
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eq v0, v1, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_61

    :cond_e
    const/16 v0, 0x10

    .line 547
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 548
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V

    goto :goto_61

    .line 562
    :cond_1f
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v0

    and-int/2addr v1, v2

    if-lez v1, :cond_61

    .line 564
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_61

    .line 567
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V

    goto :goto_61

    .line 553
    :cond_31
    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SAMSUNG_GALAXY_WATCH_DEVICE_TYPE:I

    add-int/lit8 v3, v1, 0x2

    if-lt v0, v3, :cond_43

    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_43

    .line 556
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V

    goto :goto_61

    .line 558
    :cond_43
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->setDeviceId([BI)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_61

    :catch_49
    move-exception p0

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDeviceId exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothDeviceBatteryManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_61
    return-void
.end method

.method public final setDeviceId([BI)V
    .registers 5

    .line 667
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final setManufacturerRawData([B)V
    .registers 2

    .line 585
    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    return-void
.end method

.method public final setManufacturerType([B)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_6b

    .line 593
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_a

    goto/16 :goto_6b

    .line 598
    :cond_a
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    aget-byte v3, p1, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1a

    add-int/2addr v1, v5

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_1a

    .line 601
    iput v5, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    goto :goto_6a

    .line 602
    :cond_1a
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_29

    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v3, p1, v3

    if-nez v3, :cond_29

    .line 605
    iput v4, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    goto :goto_6a

    :cond_29
    if-ne v1, v2, :cond_68

    .line 606
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_68

    const/4 v1, 0x3

    .line 609
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    .line 612
    iget v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v2, p1, v1

    add-int/2addr v1, v5

    :goto_39
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6a

    shl-int v3, v5, v0

    int-to-byte v3, v3

    and-int/2addr v3, v2

    int-to-byte v3, v3

    if-eq v3, v5, :cond_62

    if-eq v3, v4, :cond_5f

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5c

    const/16 v6, 0x8

    if-eq v3, v6, :cond_59

    const/16 v6, 0x10

    if-eq v3, v6, :cond_51

    goto :goto_65

    .line 632
    :cond_51
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 633
    aget-byte v3, p1, v1

    add-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    goto :goto_64

    .line 629
    :cond_59
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    goto :goto_64

    .line 626
    :cond_5c
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    goto :goto_64

    .line 623
    :cond_5f
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    goto :goto_64

    .line 620
    :cond_62
    iget v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    :goto_64
    add-int/2addr v1, v3

    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 640
    :cond_68
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    :cond_6a
    :goto_6a
    return-void

    .line 594
    :cond_6b
    :goto_6b
    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    return-void
.end method
