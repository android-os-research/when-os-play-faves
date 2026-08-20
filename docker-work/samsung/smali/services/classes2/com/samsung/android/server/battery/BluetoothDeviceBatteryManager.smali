.class public Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;
.super Ljava/lang/Object;
.source "BluetoothDeviceBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;,
        Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    }
.end annotation


# static fields
.field public static final BATTERY_METADATA_LENGTH:I = 0x3

.field public static final LR_VOLUME_DIFF:I = 0xf

.field public static final R170_DEVICEID_POSTFIX:I = 0x1

.field public static final SAMSUNG_HEADPHONE_DEVICEID_PREFIX_1:I = 0x1

.field public static final SAMSUNG_HEADPHONE_DEVICEID_PREFIX_2:I = 0x2

.field public static final SAMSUNG_HEADPHONE_DEVICEID_PREFIX_3:I = 0x3

.field public static final TAG:Ljava/lang/String; = "BluetoothDeviceBatteryManager"

.field public static final TAG_PROPERTY_FEATURE_RECHARGE:I = 0x11a

.field public static final TAG_PROPERTY_STATE_RECHARGE_CRADLE:I = 0x22a

.field public static final TAG_PROPERTY_STATE_RECHARGE_L:I = 0x228

.field public static final TAG_PROPERTY_STATE_RECHARGE_R:I = 0x229

.field public static final TAG_STATE_BATTERY_CASE:I = 0x20a

.field public static final TAG_STATE_BATTERY_L:I = 0x208

.field public static final TAG_STATE_BATTERY_R:I = 0x209

.field public static final TAG_SUPPORTED_FEATURES:I = 0x100

.field public static final TYPE_BOTH_CHANGED:I = 0x3

.field public static final TYPE_CHARGING_CHANGED:I = 0x2

.field public static final TYPE_LEVEL_CHANGED:I = 0x1

.field public static final TYPE_NOT_SUPPORTED:I


# instance fields
.field public mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

.field public mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$mgetChangeType(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;[B)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getChangeType([B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBatteryLevelChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->handleBatteryLevelChanged(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDeviceNameChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->handleDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->handleMetaDataChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->printDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2b

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const-string v5, "0123456789abcdef"

    .line 92
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 95
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6

    const-string v0, "BluetoothDeviceBatteryManager"

    const/4 v1, 0x1

    .line 109
    :try_start_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object p0

    .line 110
    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;-><init>([B)V

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->getManufacturerType()I

    move-result p0

    .line 112
    invoke-virtual {v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->getDeviceId()[B

    move-result-object v2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ManufacturerType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->byteToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_76

    const/4 p0, 0x0

    .line 118
    aget-byte p0, v2, p0

    if-ne p0, v1, :cond_53

    aget-byte v2, v2, v1

    if-ne v2, v1, :cond_53

    const-string p0, "Type R170"

    .line 120
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    :cond_53
    const/4 v2, 0x3

    if-eq p0, v1, :cond_5b

    const/4 v3, 0x2

    if-eq p0, v3, :cond_5b

    if-ne p0, v2, :cond_76

    :cond_5b
    const-string p0, "Type Buds"

    .line 125
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_60} :catch_61

    return v2

    :catch_61
    move-exception p0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return v1
.end method

.method public static intToBytes(I)[B
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    .line 101
    aput-byte v3, v1, v2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public static printDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Alias("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") / Address("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceBatteryManager"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# BatteryLevel : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I
    .registers 2

    .line 154
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x3

    return p0

    .line 156
    :cond_6
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-eq p1, p0, :cond_11

    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-ne p1, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x2

    return p0
.end method

.method public final createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 3

    .line 143
    new-instance p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    return-object p0
.end method

.method public final decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .registers 3

    and-int/lit16 p0, p1, 0xf0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    .line 285
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0

    :cond_c
    const/4 p1, 0x2

    if-ne p0, p1, :cond_12

    .line 289
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0

    :cond_12
    const/4 p1, 0x3

    if-ne p0, p1, :cond_1f

    const-string p0, "BluetoothDeviceBatteryManager"

    const-string p1, "CHARGE_STATE_WIRELESS_CHARGE"

    .line 291
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0

    .line 294
    :cond_1f
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0
.end method

.method public final getChangeType([B)I
    .registers 11

    const-string p0, "BluetoothDeviceBatteryManager"

    const/4 v0, 0x0

    if-eqz p1, :cond_6c

    .line 343
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    goto/16 :goto_6c

    .line 349
    :cond_b
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v4, 0x100

    const/4 v5, 0x3

    if-eq v1, v4, :cond_5d

    move v1, v0

    move v4, v1

    move v6, v4

    .line 357
    :goto_23
    :try_start_23
    array-length v7, p1

    if-ge v1, v7, :cond_5f

    .line 358
    aget-byte v7, p1, v1

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/2addr v7, v3

    add-int/lit8 v8, v1, 0x2

    .line 359
    aget-byte v8, p1, v8
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_47

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    packed-switch v7, :pswitch_data_74

    packed-switch v7, :pswitch_data_7e

    goto :goto_23

    :pswitch_43
    move v6, v2

    goto :goto_23

    :pswitch_45
    move v4, v2

    goto :goto_23

    :catch_47
    move-exception p1

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChangeType exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_5d
    move v4, v0

    move v6, v4

    :cond_5f
    :goto_5f
    if-eqz v4, :cond_64

    if-eqz v6, :cond_64

    return v5

    :cond_64
    if-eqz v4, :cond_67

    return v2

    :cond_67
    if-eqz v6, :cond_6b

    const/4 p0, 0x2

    return p0

    :cond_6b
    return v0

    :cond_6c
    :goto_6c
    const-string/jumbo p1, "parseSupportedFeatures :: DataPacket is too short."

    .line 344
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_74
    .packed-switch 0x208
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x228
        :pswitch_43
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public final handleBatteryLevelChanged(Landroid/bluetooth/BluetoothDevice;)V
    .registers 8

    .line 312
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-ltz v0, :cond_89

    .line 315
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "type : "

    const-string v2, "BluetoothDeviceBatteryManager"

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v0, :cond_60

    .line 316
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 317
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v5

    if-eq v5, v4, :cond_47

    .line 319
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v4

    if-eq v4, v3, :cond_47

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_47
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    if-eq v1, v2, :cond_92

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 325
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto :goto_92

    .line 328
    :cond_60
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_7b

    if-eq v0, v3, :cond_7b

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_7b
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p1

    .line 335
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto :goto_92

    .line 338
    :cond_89
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public final handleDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    .line 299
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 300
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-object v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 303
    invoke-interface {v1, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / alias : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_46
    return-void
.end method

.method public final handleMetaDataChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9

    .line 394
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "type : "

    const-string v2, "level : "

    const/4 v3, 0x3

    const-string v4, "BluetoothDeviceBatteryManager"

    if-eqz v0, :cond_97

    .line 395
    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 396
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v5

    if-eq v5, v3, :cond_3b

    .line 398
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    const/4 v1, 0x0

    if-ne p2, v3, :cond_43

    .line 403
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_52

    :cond_43
    const/4 v3, 0x1

    if-ne p2, v3, :cond_4b

    .line 405
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_52

    :cond_4b
    const/4 v3, 0x2

    if-ne p2, v3, :cond_52

    .line 407
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 409
    :cond_52
    :goto_52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcast : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result p2

    if-gez p2, :cond_8d

    .line 412
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    goto :goto_ef

    :cond_8d
    if-eqz v1, :cond_ef

    .line 414
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    goto :goto_ef

    .line 417
    :cond_97
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-eq p2, v3, :cond_b0

    .line 419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 422
    :cond_b0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p2

    .line 423
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v0

    if-gez v0, :cond_e0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-ltz v0, :cond_e0

    .line 426
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 428
    :cond_e0
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result p1

    if-ltz p1, :cond_ef

    .line 429
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_ef
    :goto_ef
    return-void
.end method

.method public final parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 4

    .line 269
    invoke-static {p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->intToBytes(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    const-string p1, "BluetoothDeviceBatteryManager"

    if-eqz p0, :cond_28

    .line 270
    array-length p2, p0

    const/4 v0, 0x3

    if-le p2, v0, :cond_28

    .line 271
    aget-byte p0, p0, v0

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "parsedData : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_28
    const-string/jumbo p0, "parsedData error"

    .line 274
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_2f
    return p0
.end method

.method public final setBudsBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 261
    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-ne p0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    return v1
.end method

.method public final setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    const/16 v0, 0x208

    .line 171
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Left Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x209

    .line 173
    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Right Level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x20a

    .line 175
    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# Cradle Level: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-gez v0, :cond_56

    move p2, v0

    move v0, v1

    goto :goto_6d

    :cond_56
    if-gez v1, :cond_5a

    move p2, v0

    goto :goto_6d

    :cond_5a
    sub-int v2, v0, v1

    if-lez v2, :cond_60

    move v3, v1

    goto :goto_61

    :cond_60
    move v3, v0

    .line 189
    :goto_61
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0xf

    if-gt v2, v4, :cond_6b

    move v1, p2

    goto :goto_6c

    :cond_6b
    move p2, v0

    :goto_6c
    move v0, v3

    .line 195
    :goto_6d
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v2

    if-ne v2, v0, :cond_88

    .line 196
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelLeft()I

    move-result v2

    if-ne v2, p2, :cond_88

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelRight()I

    move-result v2

    if-ne v2, v1, :cond_88

    .line 198
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelCradle()I

    move-result v2

    if-eq v2, p0, :cond_86

    goto :goto_88

    :cond_86
    const/4 p0, 0x0

    goto :goto_96

    :cond_88
    :goto_88
    const/4 v2, 0x1

    .line 200
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 201
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelLeft(I)V

    .line 202
    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelRight(I)V

    .line 203
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelCradle(I)V

    move p0, v2

    :goto_96
    return p0
.end method

.method public final setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9

    const/16 v0, 0x11a

    .line 217
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Charge Feature :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_93

    const/16 v0, 0x228

    .line 222
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    if-ltz v0, :cond_45

    .line 224
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# Left Charging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result v0

    goto :goto_46

    :cond_45
    move v0, v1

    :goto_46
    const/16 v3, 0x229

    .line 228
    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v3

    if-ltz v3, :cond_6b

    .line 230
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v3

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Right Charging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result v3

    goto :goto_6c

    :cond_6b
    move v3, v1

    :goto_6c
    const/16 v4, 0x22a

    .line 234
    invoke-virtual {p0, p2, v4}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p2

    if-ltz p2, :cond_91

    .line 236
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object p2

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# Cradle Charging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result p0

    goto :goto_96

    :cond_91
    move p0, v1

    goto :goto_96

    :cond_93
    move p0, v1

    move v0, p0

    move v3, v0

    .line 242
    :goto_96
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result p2

    if-ne p2, v1, :cond_b1

    .line 243
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusLeft()I

    move-result p2

    if-ne p2, v0, :cond_b1

    .line 244
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusRight()I

    move-result p2

    if-ne p2, v3, :cond_b1

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusCradle()I

    move-result p2

    if-eq p2, p0, :cond_af

    goto :goto_b1

    :cond_af
    const/4 v1, 0x0

    goto :goto_bd

    .line 247
    :cond_b1
    :goto_b1
    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 248
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusLeft(I)V

    .line 249
    invoke-virtual {p1, v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusRight(I)V

    .line 250
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusCradle(I)V

    :goto_bd
    return v1
.end method

.method public systemServicesReady()V
    .registers 5

    .line 436
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 437
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iput-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 439
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 443
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
