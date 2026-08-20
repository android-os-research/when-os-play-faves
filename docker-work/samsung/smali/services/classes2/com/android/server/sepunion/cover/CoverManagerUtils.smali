.class public final Lcom/android/server/sepunion/cover/CoverManagerUtils;
.super Ljava/lang/Object;
.source "CoverManagerUtils.java"


# static fields
.field public static BOOSTING_TIMEOUT:I = 0x0

.field public static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field public static final PATH_FILE_COVER_DETECT:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

.field public static final PATH_FILE_COVER_MODEL:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

.field public static final PATH_FILE_COVER_SERIAL_NUMBER:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_sn"

.field public static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field public static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field public static final PATH_FILE_COVER_VERIFY_FAKE:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

.field public static final TAG:Ljava/lang/String;

.field public static final WIRELESS_CHARGE_COVER_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/led_cover"

.field public static final WIRELESS_CHARGE_SUPPORT_PATH:Ljava/lang/String; = "/sys/class/power_supply/wireless/present"

.field public static final isSupportWirelessCharge:Z

.field public static sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public static sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

.field public static sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 49
    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 50
    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v0, 0x7d0

    .line 51
    sput v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    .line 56
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)Z
    .registers 7

    .line 306
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileWriteInt to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_39

    if-eq p1, v1, :cond_39

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_39
    const/4 v0, 0x0

    .line 313
    :try_start_3a
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_44} :catch_58
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_44} :catch_56

    .line 318
    :try_start_44
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 319
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_52} :catch_53

    return v1

    :catch_53
    move-exception p0

    move-object v0, v3

    goto :goto_5d

    :catch_56
    move-exception p0

    goto :goto_5d

    :catch_58
    move-exception p0

    .line 315
    :try_start_59
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_56

    return v2

    .line 322
    :goto_5d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 324
    :try_start_60
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    return v2

    :catch_64
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static getValueFromSysFS(Ljava/lang/String;I)I
    .registers 6

    .line 60
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 63
    :try_start_7
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_c} :catch_35
    .catchall {:try_start_7 .. :try_end_c} :catchall_2e

    const/16 p0, 0xf

    :try_start_e
    new-array p0, p0, [C

    .line 65
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v0

    if-lez v0, :cond_23

    .line 67
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_22} :catch_2a
    .catchall {:try_start_e .. :try_end_22} :catchall_27

    move p1, p0

    .line 76
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3e

    goto :goto_3e

    :catchall_27
    move-exception p0

    move-object v0, v1

    goto :goto_2f

    :catch_2a
    move-object v0, v1

    goto :goto_35

    :catch_2c
    move-object v0, v1

    goto :goto_3b

    :catchall_2e
    move-exception p0

    :goto_2f
    if-eqz v0, :cond_34

    :try_start_31
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_34

    .line 80
    :catch_34
    :cond_34
    throw p0

    :catch_35
    :goto_35
    if-eqz v0, :cond_3e

    .line 76
    :goto_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3e

    goto :goto_3e

    :catch_3b
    :goto_3b
    if-eqz v0, :cond_3e

    goto :goto_37

    :catch_3e
    :cond_3e
    :goto_3e
    return p1
.end method

.method public static getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 89
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 92
    :try_start_7
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_37
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_c} :catch_31
    .catchall {:try_start_7 .. :try_end_c} :catchall_2a

    const/16 p0, 0xf

    :try_start_e
    new-array p0, p0, [C

    .line 94
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v0

    if-lez v0, :cond_1f

    .line 96
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([CII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_28
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1e} :catch_26
    .catchall {:try_start_e .. :try_end_1e} :catchall_23

    move-object p1, v2

    .line 105
    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_3a

    goto :goto_3a

    :catchall_23
    move-exception p0

    move-object v0, v1

    goto :goto_2b

    :catch_26
    move-object v0, v1

    goto :goto_31

    :catch_28
    move-object v0, v1

    goto :goto_37

    :catchall_2a
    move-exception p0

    :goto_2b
    if-eqz v0, :cond_30

    :try_start_2d
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_30

    .line 109
    :catch_30
    :cond_30
    throw p0

    :catch_31
    :goto_31
    if-eqz v0, :cond_3a

    .line 105
    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_3a

    goto :goto_3a

    :catch_37
    :goto_37
    if-eqz v0, :cond_3a

    goto :goto_33

    :catch_3a
    :cond_3a
    :goto_3a
    return-object p1
.end method

.method public static isBackCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 2

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static isClearCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_17

    const/16 v0, 0xf

    if-eq p0, v0, :cond_17

    const/16 v0, 0x10

    if-eq p0, v0, :cond_17

    const/16 v0, 0x11

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static isCoverTypeForWirelessCharger(I)Z
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1c

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1c

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1c

    if-eqz p0, :cond_1c

    const/16 v0, 0x11

    if-ne p0, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .registers 2

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static isFriendsCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 3

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-ne p0, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method

.method public static isSamsungCover(Lcom/samsung/android/cover/CoverState;)Z
    .registers 3

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    move-result p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static isSupportWirelessCharge()Z
    .registers 4

    const-string v0, "/sys/class/power_supply/wireless/present"

    const-string v1, "0"

    .line 288
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 291
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v1, "Feature for Wireless Charge is NOT existed"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 295
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 296
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v1, "Wireless Charge is NOT Supported"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 300
    :cond_25
    sget-object v1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wireless Charge is Supported: Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static needsCPUBoostCover(I)Z
    .registers 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_9

    packed-switch p0, :pswitch_data_c

    const/4 p0, 0x0

    return p0

    :cond_9
    :pswitch_9
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0xf
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static performCPUBoostCover(Landroid/content/Context;)V
    .registers 5

    .line 184
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    const/16 v0, 0xc

    const-string v2, "COVER_BOOSTER"

    .line 185
    invoke-static {p0, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1e

    .line 187
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 189
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 193
    :cond_1e
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_31

    .line 195
    :try_start_22
    sget v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception v0

    .line 197
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sCoverCpuBooster.acquire is failed"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :cond_31
    :goto_31
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_54

    const/16 v0, 0xe

    const-string v2, "COVER_CORE_BOOSTER"

    .line 203
    invoke-static {p0, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_54

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_54

    .line 207
    array-length v2, v0

    if-lez v2, :cond_54

    .line 208
    aget v0, v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_54

    .line 209
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 214
    :cond_54
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_67

    .line 216
    :try_start_58
    sget v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_67

    :catch_5e
    move-exception v0

    .line 218
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sCoverCoreNumLockHelper.acquire is failed"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :cond_67
    :goto_67
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_87

    const/16 v0, 0x13

    const-string v2, "COVER_BUS_BOOSTER"

    .line 224
    invoke-static {p0, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    sput-object p0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_87

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object p0

    if-eqz p0, :cond_87

    .line 227
    array-length v0, p0

    if-lez v0, :cond_87

    .line 228
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 233
    :cond_87
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_9a

    .line 235
    :try_start_8b
    sget v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_91

    goto :goto_9a

    :catch_91
    move-exception p0

    .line 237
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sCoverBusBooster.acquire is failed"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9a
    :goto_9a
    return-void
.end method

.method public static sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .line 268
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_12

    :cond_b
    const/4 p1, 0x0

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    .line 271
    invoke-static {v0, p1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    if-eqz p1, :cond_3c

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.COVER_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.soagent"

    const-string v2, "com.sec.android.soagent.receiver.PhoneCoverReceiver"

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isBoot"

    .line 276
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "serialNumber"

    .line 277
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string p2, "com.samsung.android.permission.COVER"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 280
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendCoverInformationToAgent : broadcast !!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method public static showRuggedizedPopup(Landroid/content/Context;ZZ)V
    .registers 7

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.SviewCover"

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/Feature;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, -0x1

    const-string v3, "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

    .line 247
    invoke-static {v3, v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-nez v2, :cond_29

    const-string v3, "com.sec.android.app.popupuireceiver.SviewCoverFake"

    .line 249
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_29
    const-string/jumbo v1, "verified"

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2f
    const-string v1, "isBoot"

    .line 254
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "attached"

    .line 255
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x34000000

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    :try_start_3e
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_43} :catch_44

    goto :goto_4c

    .line 262
    :catch_44
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showRuggedizedPopup : ActivityNotFoundException !!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void
.end method
