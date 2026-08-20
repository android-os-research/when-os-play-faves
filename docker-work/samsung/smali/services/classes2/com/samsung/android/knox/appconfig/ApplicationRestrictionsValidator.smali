.class public Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;
.super Ljava/lang/Object;
.source "ApplicationRestrictionsValidator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsValidator"

.field public static final unusedBundleKeys:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    const-string/jumbo v0, "wificonfiguration"

    const-string/jumbo v1, "skip_welcome_screen"

    const-string v2, "flow_pointer_is_on_dex"

    const-string v3, "flow_pointer_from_where_dex"

    const-string v4, "app_config_skip_overscan"

    const-string v5, "app_config_hidden"

    const-string v6, "app_config_disable_ctx_menu"

    const-string v7, "app_config_disable_dex_labs_button"

    const-string v8, "app_config_disable_exit_dex_button"

    const-string v9, "dex_disable_file_copy_from_pc"

    const-string v10, "dex_disable_file_copy_from_mobile"

    const-string/jumbo v11, "startActivity"

    const-string/jumbo v12, "sendBroadcast"

    .line 51
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKeyType(Ljava/lang/String;)Z
    .registers 6

    .line 959
    sget-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 960
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .registers 3

    .line 943
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getPermission()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_11

    .line 944
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_PERMISSION_DENIED:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_14

    return p0

    .line 950
    :cond_11
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    return p0

    :catch_14
    move-exception p0

    .line 947
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail to checkPermission  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationRestrictionsValidator"

    invoke-static {p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    return p0
.end method

.method public static checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .registers 3

    .line 931
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getVersion()I

    move-result p0

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevelForInternal()I

    move-result v0

    if-le p0, v0, :cond_d

    .line 932
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    return p0

    .line 938
    :cond_d
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    return p0

    :catch_10
    move-exception p0

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to checkVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApplicationRestrictionsValidator"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    return p0
.end method

.method public static checkWPCODMode(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "device_policy"

    .line 954
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 955
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    return p0
.end method

.method public static getCallerPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1044
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasSystemVibrationMenu(Landroid/content/Context;)Z
    .registers 3

    .line 968
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 971
    :cond_8
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public static hasVibrator(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "vibrator"

    .line 984
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_13

    .line 985
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static isEnableIntensity(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "vibrator"

    .line 989
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    .line 993
    :cond_d
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_15

    move v0, v1

    :cond_15
    return v0
.end method

.method public static isSupportDcHaptic(Landroid/content/Context;)Z
    .registers 2

    .line 975
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_12

    .line 976
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static supportAutoBrightness(Landroid/content/Context;)Z
    .registers 2

    .line 1030
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportLightSensor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportCameraSensor(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static supportCameraSensor(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "sensor"

    .line 1017
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    :cond_d
    const/4 v1, 0x5

    .line 1022
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_1e

    const v1, 0x10044

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public static supportLightSensor(Landroid/content/Context;)Z
    .registers 5

    const-string/jumbo v0, "sensor"

    .line 998
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    :cond_d
    const/4 v1, -0x1

    .line 1002
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    move v1, v0

    .line 1004
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1005
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2f

    const v3, 0x10041

    if-ne v2, v3, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    :cond_30
    return v0
.end method

.method public static supportPocketMode(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "motion_recognition"

    .line 1035
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/high16 v0, 0x800000

    .line 1039
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isAvailable(I)Z

    move-result p0

    return p0
.end method

.method public static validate(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 21

    move-object/from16 v1, p1

    const-string v2, "ApplicationRestrictionsValidator"

    if-nez v1, :cond_c

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1

    .line 61
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->getCallerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    sget-object v4, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->NONE:Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    .line 63
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11a7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 66
    sget-object v7, Lcom/samsung/android/knox/appconfig/info/KeyInfo;->KEYMAP:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    if-nez v7, :cond_36

    goto :goto_1f

    .line 74
    :cond_36
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    move-result v8

    .line 75
    sget v9, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v9, v8, :cond_42

    .line 76
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1f

    :cond_42
    move-object/from16 v8, p0

    .line 80
    invoke-static {v8, v3, v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    move-result v7

    .line 81
    sget v9, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v9, v7, :cond_50

    .line 82
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1f

    .line 86
    :cond_50
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkWPCODMode(Landroid/content/Context;)Z

    move-result v7

    const-string v9, "location_services_wifi_scanning"

    const-string v10, "location_services_bluetooth_scanning"

    const-string/jumbo v11, "wifi_always_scanning"

    const-string v12, "bluetooth_always_scanning"

    const-string/jumbo v13, "top_level_location"

    const-string v14, "location_settings"

    const/4 v15, 0x1

    if-ne v7, v15, :cond_8f

    .line 88
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    .line 89
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    .line 90
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 91
    :cond_89
    sget v7, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1f

    .line 96
    :cond_8f
    invoke-static {v6}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkKeyType(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v15, :cond_96

    goto :goto_1f

    .line 101
    :cond_96
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_11a3

    .line 102
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a4

    goto/16 :goto_1f

    :cond_a4
    const-string/jumbo v15, "value"

    .line 105
    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11a3

    .line 106
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_b5

    goto/16 :goto_1f

    :cond_b5
    const/16 v17, -0x1

    .line 111
    :try_start_b7
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/4 v1, 0x4

    sparse-switch v18, :sswitch_data_11a8

    goto/16 :goto_9fc

    :sswitch_c1
    const-string/jumbo v9, "wifi_qrcode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x85

    goto/16 :goto_9fc

    :sswitch_ce
    const-string v9, "disableToolbarYoutube "

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x9a

    goto/16 :goto_9fc

    :sswitch_da
    const-string v9, "long_press_wake_bixby"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x63

    goto/16 :goto_9fc

    :sswitch_e6
    const-string/jumbo v9, "telephonyui_simcard_manager_data_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xae

    goto/16 :goto_9fc

    :sswitch_f3
    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/4 v9, 0x3

    goto/16 :goto_9fe

    :sswitch_ff
    const-string/jumbo v9, "xcover_top_long_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x58

    goto/16 :goto_9fc

    :sswitch_10c
    const-string/jumbo v9, "telephonyui_doemstic_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa9

    goto/16 :goto_9fc

    :sswitch_119
    const-string v9, "nfc_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x9

    goto/16 :goto_9fc

    :sswitch_125
    const-string v9, "lock_screen_additional_info"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x1e

    goto/16 :goto_9fc

    :sswitch_131
    const-string v9, "easy_mute"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x0

    goto/16 :goto_9fc

    :sswitch_13d
    const-string v9, "lockscreen_notifications"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x8b

    goto/16 :goto_9fc

    :sswitch_149
    const-string v9, "noti_card_seekbar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x23

    goto/16 :goto_9fc

    :sswitch_155
    const-string/jumbo v9, "top_level_apps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x7d

    goto/16 :goto_9fc

    :sswitch_162
    const-string/jumbo v9, "top_level_display_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x50

    goto/16 :goto_9fc

    :sswitch_16f
    const-string v9, "international_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa4

    goto/16 :goto_9fc

    :sswitch_17b
    const-string v9, "double_press_open_apps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x5c

    goto/16 :goto_9fc

    :sswitch_187
    const-string v9, "function_key_long_press"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x5d

    goto/16 :goto_9fc

    :sswitch_193
    const-string v9, "blue_light_filter_user_schedule"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x40

    goto/16 :goto_9fc

    :sswitch_19f
    const-string v9, "notification_details"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x6a

    goto/16 :goto_9fc

    :sswitch_1ab
    const-string v9, "change_language_shortcut"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x66

    goto/16 :goto_9fc

    :sswitch_1b7
    const-string v9, "homescreen_noti_preview"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x26

    goto/16 :goto_9fc

    :sswitch_1c3
    const-string/jumbo v9, "volume_key_control"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x33

    goto/16 :goto_9fc

    :sswitch_1d0
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x86

    goto/16 :goto_9fc

    :sswitch_1da
    const-string/jumbo v9, "xcover_top_short_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x57

    goto/16 :goto_9fc

    :sswitch_1e7
    const-string v9, "backup_category"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x83

    goto/16 :goto_9fc

    :sswitch_1f3
    const-string v9, "international_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa5

    goto/16 :goto_9fc

    :sswitch_1ff
    const-string v9, "auto_wifi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xc

    goto/16 :goto_9fc

    :sswitch_20b
    const-string v9, "notification_vibration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x6b

    goto/16 :goto_9fc

    :sswitch_217
    const-string v9, "disableVoiceInput"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x93

    goto/16 :goto_9fc

    :sswitch_223
    const-string v9, "double_press_quick_launch_camera"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x61

    goto/16 :goto_9fc

    :sswitch_22f
    const-string v9, "lock_screen_menu_notifications"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x22

    goto/16 :goto_9fc

    :sswitch_23b
    const-string/jumbo v9, "telephonyui_simcard_manager_general_settings_sim2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xad

    goto/16 :goto_9fc

    :sswitch_248
    const-string v9, "long_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x55

    goto/16 :goto_9fc

    :sswitch_254
    const-string v9, "flow_pointer_from_where_dex"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb6

    goto/16 :goto_9fc

    :sswitch_260
    const-string v9, "function_key_double_press"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x5a

    goto/16 :goto_9fc

    :sswitch_26c
    const-string v9, "disable_connectivity_check"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb3

    goto/16 :goto_9fc

    :sswitch_278
    const-string/jumbo v9, "restriction_app_suggestion"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb1

    goto/16 :goto_9fc

    :sswitch_285
    const-string v9, "charging_sounds"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x2b

    goto/16 :goto_9fc

    :sswitch_291
    const-string/jumbo v9, "wifi_adps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xd

    goto/16 :goto_9fc

    :sswitch_29e
    const-string v9, "all_notification"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x46

    goto/16 :goto_9fc

    :sswitch_2aa
    const-string v9, "default_autofill"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x81

    goto/16 :goto_9fc

    :sswitch_2b6
    const-string v9, "button_order"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x1a

    goto/16 :goto_9fc

    :sswitch_2c2
    const-string/jumbo v9, "where_to_show"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x1d

    goto/16 :goto_9fc

    :sswitch_2cf
    const-string v9, "dex_disable_file_copy_from_mobile"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xbd

    goto/16 :goto_9fc

    :sswitch_2db
    const-string v9, "blue_light_filter_turn_on_now"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x3d

    goto/16 :goto_9fc

    :sswitch_2e7
    const-string v9, "key_show_keyboard_button"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v9, 0x37

    goto/16 :goto_9fe

    :sswitch_2f3
    const-string v9, "noti_inverse_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x24

    goto/16 :goto_9fc

    :sswitch_2ff
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/4 v9, 0x6

    goto/16 :goto_9fe

    :sswitch_308
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x4a

    goto/16 :goto_9fc

    :sswitch_312
    const-string v9, "notification_content"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x8c

    goto/16 :goto_9fc

    :sswitch_31e
    const-string v9, "auto_brightness_no_pac"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x11

    goto/16 :goto_9fc

    :sswitch_32a
    const-string v9, "app_config_disable_dex_labs_button"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xba

    goto/16 :goto_9fc

    :sswitch_336
    const-string v9, "eye_comfort_set_schedule"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x6e

    goto/16 :goto_9fc

    :sswitch_342
    const-string/jumbo v9, "tts_default_pitch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v9, 0x39

    goto/16 :goto_9fe

    :sswitch_34f
    const-string v9, "blue_light_filter_on_time"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x41

    goto/16 :goto_9fc

    :sswitch_35b
    const-string/jumbo v9, "resolution_user_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xbc

    goto/16 :goto_9fc

    :sswitch_368
    const-string v9, "app_config_hidden"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb8

    goto/16 :goto_9fc

    :sswitch_374
    const-string/jumbo v9, "top_level_location_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x4e

    goto/16 :goto_9fc

    :sswitch_381
    const-string v9, "gesture_detailed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x74

    goto/16 :goto_9fc

    :sswitch_38d
    const-string/jumbo v9, "top_level_wifi_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x4b

    goto/16 :goto_9fc

    :sswitch_39a
    const-string/jumbo v9, "screen_timeout"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x18

    goto/16 :goto_9fc

    :sswitch_3a7
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x8

    goto/16 :goto_9fc

    :sswitch_3b1
    const-string v9, "notification_2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x30

    goto/16 :goto_9fc

    :sswitch_3bd
    const-string v9, "category_samsungservices"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x82

    goto/16 :goto_9fc

    :sswitch_3c9
    const-string/jumbo v9, "wifi_hs20_list"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x49

    goto/16 :goto_9fc

    :sswitch_3d6
    const-string v9, "accessibility_installed_services"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa0

    goto/16 :goto_9fc

    :sswitch_3e2
    const-string/jumbo v9, "phone_vibration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x35

    goto/16 :goto_9fc

    :sswitch_3ef
    const-string v9, "dashboard_tile_pref_com.samsung.android.app.telephonyui.netsettings.ui.NetSettingsActivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x52

    goto/16 :goto_9fc

    :sswitch_3fb
    const-string v9, "device_name_edit"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x89

    goto/16 :goto_9fc

    :sswitch_407
    const-string v9, "eye_comfort_adaptive_mode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x6c

    goto/16 :goto_9fc

    :sswitch_413
    const-string v9, "notification"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x2f

    goto/16 :goto_9fc

    :sswitch_41f
    const-string v9, "disableHWRInput"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x95

    goto/16 :goto_9fc

    :sswitch_42b
    const-string v9, "app_config_disable_exit_dex_button"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xbb

    goto/16 :goto_9fc

    :sswitch_437
    const-string v9, "auto_brightness"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x10

    goto/16 :goto_9fc

    :sswitch_443
    const-string/jumbo v9, "show_notification_icons"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x29

    goto/16 :goto_9fc

    :sswitch_450
    const-string/jumbo v9, "vibrate_when_ringing"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v9, 0x36

    goto/16 :goto_9fe

    :sswitch_45d
    const-string/jumbo v9, "screenshots_and_screen_recorder"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    move v9, v1

    goto/16 :goto_9fe

    :sswitch_469
    const-string/jumbo v9, "picture_in_picture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x65

    goto/16 :goto_9fc

    :sswitch_476
    const-string v9, "doemstic_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa3

    goto/16 :goto_9fc

    :sswitch_482
    const-string v9, "disableGifKeyboard"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x92

    goto/16 :goto_9fc

    :sswitch_48e
    const-string v9, "eye_comfort_seekbar_color_temperature"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x6f

    goto/16 :goto_9fc

    :sswitch_49a
    const-string/jumbo v9, "spen_detachment_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x76

    goto/16 :goto_9fc

    :sswitch_4a7
    const-string v9, "accessibility_power_and_volume_up_keys"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x9e

    goto/16 :goto_9fc

    :sswitch_4b3
    const-string/jumbo v9, "sec_font_size"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x16

    goto/16 :goto_9fc

    :sswitch_4c0
    const-string/jumbo v9, "phone_language"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x7e

    goto/16 :goto_9fc

    :sswitch_4cd
    const-string/jumbo v9, "screen_off_pocket"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x14

    goto/16 :goto_9fc

    :sswitch_4da
    const-string v9, "navigation_Bar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x43

    goto/16 :goto_9fc

    :sswitch_4e6
    const-string v9, "disableClipboard"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x96

    goto/16 :goto_9fc

    :sswitch_4f2
    const-string/jumbo v9, "skip_welcome_screen"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb4

    goto/16 :goto_9fc

    :sswitch_4ff
    const-string v9, "increse_touch_sensetivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x72

    goto/16 :goto_9fc

    :sswitch_50b
    const-string/jumbo v9, "telephonyui_simcard_manager_call_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xaf

    goto/16 :goto_9fc

    :sswitch_518
    const-string v9, "blue_light_filter_seekbar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x3c

    goto/16 :goto_9fc

    :sswitch_524
    const-string v9, "disablePrediction"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x8e

    goto/16 :goto_9fc

    :sswitch_530
    const-string/jumbo v9, "verizon_dedicated_ptt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x53

    goto/16 :goto_9fc

    :sswitch_53d
    const-string/jumbo v9, "telephonyui_international_roaming_data"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa6

    goto/16 :goto_9fc

    :sswitch_54a
    const-string v9, "dial_pad_tones"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x2c

    goto/16 :goto_9fc

    :sswitch_556
    const-string v9, "function_key_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x60

    goto/16 :goto_9fc

    :sswitch_562
    const-string v9, "bluetooth_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x79

    goto/16 :goto_9fc

    :sswitch_56e
    const-string v9, "lock_screen_dualclock"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x1b

    goto/16 :goto_9fc

    :sswitch_57a
    const-string/jumbo v9, "tts_engine_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x38

    goto/16 :goto_9fc

    :sswitch_587
    const-string/jumbo v9, "proxy_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x77

    goto/16 :goto_9fc

    :sswitch_594
    const-string v9, "blue_light_filter"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x15

    goto/16 :goto_9fc

    :sswitch_5a0
    const-string v9, "MobileWIPS"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xf

    goto/16 :goto_9fc

    :sswitch_5ac
    const-string/jumbo v9, "wifi_hs20_profile"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xe

    goto/16 :goto_9fc

    :sswitch_5b9
    const-string v9, "notification_badging"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x25

    goto/16 :goto_9fc

    :sswitch_5c5
    const-string/jumbo v9, "smart_alert"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/4 v9, 0x2

    goto/16 :goto_9fe

    :sswitch_5d1
    const-string v9, "ds_notification_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x48

    goto/16 :goto_9fc

    :sswitch_5dd
    const-string v9, "blue_light_filter_off_time"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x42

    goto/16 :goto_9fc

    :sswitch_5e9
    const-string/jumbo v9, "telephonyui_international_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xaa

    goto/16 :goto_9fc

    :sswitch_5f6
    const-string/jumbo v9, "telephonyui_simcard_manager_text_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb0

    goto/16 :goto_9fc

    :sswitch_603
    const-string v9, "disableSticker"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x91

    goto/16 :goto_9fc

    :sswitch_60f
    const-string v9, "app_icon_number"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x27

    goto/16 :goto_9fc

    :sswitch_61b
    const-string/jumbo v9, "xcover_top_key_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x5f

    goto/16 :goto_9fc

    :sswitch_628
    const-string v9, "function_key_double_press_type"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x5b

    goto/16 :goto_9fc

    :sswitch_634
    const-string/jumbo v9, "wificonfiguration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb2

    goto/16 :goto_9fc

    :sswitch_641
    const-string v9, "app_config_disable_ctx_menu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb9

    goto/16 :goto_9fc

    :sswitch_64d
    const-string/jumbo v9, "wifi_poor_network_detection"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa

    goto/16 :goto_9fc

    :sswitch_65a
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x87

    goto/16 :goto_9fc

    :sswitch_664
    const-string/jumbo v9, "wifi_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x78

    goto/16 :goto_9fc

    :sswitch_671
    const-string/jumbo v9, "wifi_switch_for_individual_apps"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb

    goto/16 :goto_9fc

    :sswitch_67e
    const-string/jumbo v9, "xcover_top_key_on_lockscreen_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x59

    goto/16 :goto_9fc

    :sswitch_68b
    const-string/jumbo v9, "recent_notifications"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x45

    goto/16 :goto_9fc

    :sswitch_698
    const-string v9, "disableTextEditPanel"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x98

    goto/16 :goto_9fc

    :sswitch_6a4
    const-string/jumbo v9, "show_virtual_keyboard_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x80

    goto/16 :goto_9fc

    :sswitch_6b1
    const-string/jumbo v9, "short_press_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x54

    goto/16 :goto_9fc

    :sswitch_6be
    const-string v9, "accessibility_flash_notificaitons"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x9f

    goto/16 :goto_9fc

    :sswitch_6ca
    const-string/jumbo v9, "reset_preference"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x7f

    goto/16 :goto_9fc

    :sswitch_6d7
    const-string v9, "blue_light_filter_turn_on_as_scheduled"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x3e

    goto/16 :goto_9fc

    :sswitch_6e3
    const-string v9, "disableToolbarSpotify"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x99

    goto/16 :goto_9fc

    :sswitch_6ef
    const-string/jumbo v9, "telephonyui_network_operator_menu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xac

    goto/16 :goto_9fc

    :sswitch_6fc
    const-string v9, "flow_pointer_is_on_dex"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb5

    goto/16 :goto_9fc

    :sswitch_708
    const-string v9, "disableAllToolbarItems"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x8f

    goto/16 :goto_9fc

    :sswitch_714
    const-string/jumbo v9, "sync_vibration_with_ringtone"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x88

    goto/16 :goto_9fc

    :sswitch_721
    const-string v9, "notification_vibration_pattern"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x71

    goto/16 :goto_9fc

    :sswitch_72d
    const-string/jumbo v9, "telephonyui_verizon_data_on_off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa7

    goto/16 :goto_9fc

    :sswitch_73a
    const-string v9, "disableSetting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x8d

    goto/16 :goto_9fc

    :sswitch_746
    const-string v9, "eye_comfort_custom_mode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x6d

    goto/16 :goto_9fc

    :sswitch_752
    const-string v9, "keyboard_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x2d

    goto/16 :goto_9fc

    :sswitch_75e
    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/4 v9, 0x5

    goto/16 :goto_9fe

    :sswitch_76a
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/4 v9, 0x7

    goto/16 :goto_9fe

    :sswitch_773
    const-string v9, "double_press_open_bixby"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x62

    goto/16 :goto_9fc

    :sswitch_77f
    const-string/jumbo v9, "top_level_lockscreen"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x7b

    goto/16 :goto_9fc

    :sswitch_78c
    const-string v9, "homecity_timezone"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x1c

    goto/16 :goto_9fc

    :sswitch_798
    const-string/jumbo v9, "phone_vibration_pattern"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x70

    goto/16 :goto_9fc

    :sswitch_7a5
    const-string v9, "app_icon_dot"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x44

    goto/16 :goto_9fc

    :sswitch_7b1
    const-string v9, "app_config_skip_overscan"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xb7

    goto/16 :goto_9fc

    :sswitch_7bd
    const-string/jumbo v9, "toggle_airplane"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x7a

    goto/16 :goto_9fc

    :sswitch_7ca
    const-string v9, "disableModes"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x97

    goto/16 :goto_9fc

    :sswitch_7d6
    const-string/jumbo v9, "top_level_sounds_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x4f

    goto/16 :goto_9fc

    :sswitch_7e3
    const-string/jumbo v9, "set_visibility"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x20

    goto/16 :goto_9fc

    :sswitch_7f0
    const-string/jumbo v9, "outdoor_mode"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x13

    goto/16 :goto_9fc

    :sswitch_7fd
    const-string/jumbo v9, "tts_default_rate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v9, 0x3a

    goto/16 :goto_9fe

    :sswitch_80a
    const-string/jumbo v9, "top_level_bluetooth_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x4c

    goto/16 :goto_9fc

    :sswitch_817
    const-string v9, "disableToolbarNetflix"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x9b

    goto/16 :goto_9fc

    :sswitch_823
    const-string/jumbo v9, "vibrate_on_touch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x34

    goto/16 :goto_9fc

    :sswitch_830
    const-string v9, "dex_disable_file_copy_from_pc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xbe

    goto/16 :goto_9fc

    :sswitch_83c
    const-string v9, "android_beam_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x3b

    goto/16 :goto_9fc

    :sswitch_848
    const-string v9, "current_input_method"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x67

    goto/16 :goto_9fc

    :sswitch_854
    const-string/jumbo v9, "palm_swipe_to_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/4 v9, 0x1

    goto/16 :goto_9fe

    :sswitch_860
    const-string v9, "long_press_power_off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x64

    goto/16 :goto_9fc

    :sswitch_86c
    const-string v9, "disableLiveMessage"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x94

    goto/16 :goto_9fc

    :sswitch_878
    const-string v9, "blue_light_filter_auto_schedule"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x3f

    goto/16 :goto_9fc

    :sswitch_884
    const-string v9, "gesture_preview"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x73

    goto/16 :goto_9fc

    :sswitch_890
    const-string/jumbo v9, "xcover_key_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x5e

    goto/16 :goto_9fc

    :sswitch_89d
    const-string v9, "mobile_network_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x8a

    goto/16 :goto_9fc

    :sswitch_8a9
    const-string/jumbo v9, "show_password"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x2a

    goto/16 :goto_9fc

    :sswitch_8b6
    const-string v9, "active_key_on_lockscreen_key"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x56

    goto/16 :goto_9fc

    :sswitch_8c2
    const-string/jumbo v9, "sec_font_style"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x17

    goto/16 :goto_9fc

    :sswitch_8cf
    const-string v9, "noti_view_style"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x21

    goto/16 :goto_9fc

    :sswitch_8db
    const-string/jumbo v9, "sendBroadcast"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xc0

    goto/16 :goto_9fc

    :sswitch_8e8
    const-string v9, "dashboard_tile_pref_com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x7c

    goto/16 :goto_9fc

    :sswitch_8f4
    const-string/jumbo v9, "top_level_airplane_mode_upsm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x4d

    goto/16 :goto_9fc

    :sswitch_901
    const-string v9, "key_notification_icons_on_status_bar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x68

    goto/16 :goto_9fc

    :sswitch_90d
    const-string v9, "notification_sound"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x47

    goto/16 :goto_9fc

    :sswitch_919
    const-string/jumbo v9, "telephonyui_domestic_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa8

    goto/16 :goto_9fc

    :sswitch_926
    const-string/jumbo v9, "touch_sounds"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x32

    goto/16 :goto_9fc

    :sswitch_933
    const-string/jumbo v9, "startActivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xbf

    goto/16 :goto_9fc

    :sswitch_940
    const-string v9, "external_storage_transfer"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x84

    goto/16 :goto_9fc

    :sswitch_94c
    const-string v9, "domestic_roaming_voice_text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa2

    goto/16 :goto_9fc

    :sswitch_958
    const-string v9, "facewidget_where_to_show"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x1f

    goto/16 :goto_9fc

    :sswitch_964
    const-string v9, "adaptive_brightness_no_ls"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x12

    goto/16 :goto_9fc

    :sswitch_970
    const-string v9, "disableToolbarMelon"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x9c

    goto/16 :goto_9fc

    :sswitch_97c
    const-string/jumbo v9, "telephonyui_access_point_names_menu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xab

    goto/16 :goto_9fc

    :sswitch_989
    const-string/jumbo v9, "top_level_accessibility"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x51

    goto :goto_9fc

    :sswitch_995
    const-string v9, "notification_icons_only"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x69

    goto :goto_9fc

    :sswitch_9a0
    const-string/jumbo v9, "show_battery_percent"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x28

    goto :goto_9fc

    :sswitch_9ac
    const-string/jumbo v9, "onehand_operation_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x75

    goto :goto_9fc

    :sswitch_9b8
    const-string v9, "accessibility_advanced_settings"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x9d

    goto :goto_9fc

    :sswitch_9c3
    const-string v9, "disableEmoticonInput"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x90

    goto :goto_9fc

    :sswitch_9ce
    const-string/jumbo v9, "sec_screen_size"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x19

    goto :goto_9fc

    :sswitch_9da
    const-string/jumbo v9, "verizon_data_on_off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0xa1

    goto :goto_9fc

    :sswitch_9e6
    const-string v9, "keyboard_vibration"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9fc

    const/16 v17, 0x2e

    goto :goto_9fc

    :sswitch_9f1
    const-string/jumbo v9, "screen_locking_sounds"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_9f8
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_9f8} :catch_118d

    if-eqz v9, :cond_9fc

    const/16 v17, 0x31

    :cond_9fc
    :goto_9fc
    move/from16 v9, v17

    :goto_9fe
    const-string v10, "0"

    const-string v11, "1"

    if-eqz v9, :cond_117b

    const/4 v12, 0x1

    if-eq v9, v12, :cond_1169

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1157

    const/4 v12, 0x3

    if-eq v9, v12, :cond_1145

    if-eq v9, v1, :cond_1133

    const/4 v12, 0x5

    if-eq v9, v12, :cond_112c

    const-string v12, "3"

    const-string v13, "2"

    const/4 v14, 0x6

    if-eq v9, v14, :cond_110d

    const/4 v14, 0x7

    if-eq v9, v14, :cond_10fa

    const/16 v14, 0x36

    if-eq v9, v14, :cond_10e7

    const/16 v14, 0x37

    if-eq v9, v14, :cond_10d4

    const/16 v14, 0x39

    if-eq v9, v14, :cond_10bd

    const/16 v14, 0x3a

    if-eq v9, v14, :cond_10a6

    const/16 v14, 0x49

    if-eq v9, v14, :cond_1093

    const/16 v14, 0x4a

    if-eq v9, v14, :cond_1074

    const/16 v14, 0x72

    if-eq v9, v14, :cond_1061

    const/16 v14, 0x73

    if-eq v9, v14, :cond_104e

    const/16 v14, 0x75

    if-eq v9, v14, :cond_103b

    const/16 v14, 0x76

    if-eq v9, v14, :cond_1023

    sparse-switch v9, :sswitch_data_14ae

    packed-switch v9, :pswitch_data_1554

    packed-switch v9, :pswitch_data_155e

    packed-switch v9, :pswitch_data_1582

    packed-switch v9, :pswitch_data_158e

    goto/16 :goto_11a3

    .line 513
    :pswitch_a55
    :try_start_a55
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 514
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 508
    :pswitch_a6e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 509
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 503
    :pswitch_a81
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 504
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 368
    :pswitch_a94
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a9f

    .line 369
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    :cond_a9f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 372
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 363
    :pswitch_ab2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 364
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 358
    :pswitch_ac5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 359
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 353
    :pswitch_ad8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 354
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 344
    :pswitch_aeb
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 345
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 339
    :pswitch_afe
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 340
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 334
    :pswitch_b11
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 335
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 329
    :pswitch_b24
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 330
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 324
    :pswitch_b37
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 325
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 319
    :pswitch_b4a
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 320
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 314
    :pswitch_b69
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 315
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 309
    :pswitch_b7c
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 310
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 304
    :pswitch_b8f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 305
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 299
    :pswitch_ba2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 300
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 294
    :pswitch_bb5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 295
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 289
    :pswitch_bc8
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_bd6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x4b

    if-le v1, v7, :cond_11a3

    .line 290
    :cond_bd6
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 284
    :pswitch_bdd
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 285
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 279
    :pswitch_bf0
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 280
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 274
    :pswitch_c09
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 275
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 269
    :pswitch_c1c
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 270
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 255
    :pswitch_c2f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 256
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 250
    :pswitch_c42
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 251
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 245
    :pswitch_c55
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_c61

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v1, :cond_11a3

    .line 246
    :cond_c61
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    :sswitch_c68
    const-string v1, "UWQHD"

    .line 898
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "WQXGA"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "WQHD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "UWFHD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "WUXGA"

    .line 899
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "FHD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "HD"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "null"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 900
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 863
    :sswitch_caf
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 864
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 849
    :sswitch_cc2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 850
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 832
    :sswitch_cd5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 833
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 820
    :sswitch_ce8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 821
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 815
    :sswitch_cfb
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 816
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 810
    :sswitch_d0e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 811
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 805
    :sswitch_d21
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 806
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 800
    :sswitch_d34
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 801
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 792
    :sswitch_d47
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 793
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 787
    :sswitch_d5a
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 788
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 782
    :sswitch_d6d
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 783
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 777
    :sswitch_d80
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 778
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 772
    :sswitch_d93
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 773
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 695
    :sswitch_da6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 696
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 690
    :sswitch_db9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 691
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 676
    :sswitch_dcc
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 677
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 671
    :sswitch_ddf
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 672
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 666
    :sswitch_df2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 667
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 646
    :sswitch_e05
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 647
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 561
    :sswitch_e18
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 562
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    :sswitch_e37
    const-string v1, "7"

    .line 549
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "6"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "5"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 550
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 551
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 520
    :sswitch_e70
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 521
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 494
    :sswitch_e89
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 495
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 485
    :sswitch_e9c
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 486
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 262
    :sswitch_eaf
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 263
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 233
    :sswitch_ec2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 234
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 225
    :sswitch_ed5
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportPocketMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_ee0

    .line 226
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    :cond_ee0
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 229
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 220
    :sswitch_ef3
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 221
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 215
    :sswitch_f06
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 216
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 210
    :sswitch_f19
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 211
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 191
    :sswitch_f2c
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f37

    .line 192
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    :cond_f37
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f48

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f48

    .line 195
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_f48
    const-string v1, "level"

    .line 197
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11a3

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_f54
    .catch Ljava/lang/Exception; {:try_start_a55 .. :try_end_f54} :catch_118d

    :try_start_f54
    const-string v1, "level"

    .line 200
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_brightness"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_f68
    .catch Ljava/lang/Exception; {:try_start_f54 .. :try_end_f68} :catch_f70
    .catchall {:try_start_f54 .. :try_end_f68} :catchall_f6d

    .line 205
    :goto_f68
    :try_start_f68
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f6b
    .catch Ljava/lang/Exception; {:try_start_f68 .. :try_end_f6b} :catch_118d

    goto/16 :goto_11a3

    :catchall_f6d
    move-exception v0

    move-object v1, v0

    goto :goto_f87

    :catch_f70
    move-exception v0

    move-object v1, v0

    .line 203
    :try_start_f72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auto brightness level fail :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f86
    .catchall {:try_start_f72 .. :try_end_f86} :catchall_f6d

    goto :goto_f68

    .line 205
    :goto_f87
    :try_start_f87
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw v1

    .line 186
    :sswitch_f8b
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 187
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 181
    :sswitch_f9e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 182
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 176
    :sswitch_fb1
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 177
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 171
    :sswitch_fc4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 172
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 166
    :sswitch_fd7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 167
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 161
    :sswitch_fea
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 162
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 156
    :sswitch_ffd
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 157
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 151
    :sswitch_1010
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 152
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    :cond_1023
    const-string/jumbo v1, "true"

    .line 614
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    const-string v1, "false"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 615
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 609
    :cond_103b
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 610
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 601
    :cond_104e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 602
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 593
    :cond_1061
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 594
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 450
    :cond_1074
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 451
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 445
    :cond_1093
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 446
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 395
    :cond_10a6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0xa

    if-lt v1, v7, :cond_10b6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x258

    if-le v1, v7, :cond_11a3

    .line 396
    :cond_10b6
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 390
    :cond_10bd
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x19

    if-lt v1, v7, :cond_10cd

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x190

    if-le v1, v7, :cond_11a3

    .line 391
    :cond_10cd
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 383
    :cond_10d4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 384
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 378
    :cond_10e7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 379
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 146
    :cond_10fa
    :sswitch_10fa
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 147
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 141
    :cond_110d
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 142
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 138
    :cond_112c
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11a3

    .line 133
    :cond_1133
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 134
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11a3

    .line 128
    :cond_1145
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 129
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11a3

    .line 123
    :cond_1157
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 124
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11a3

    .line 118
    :cond_1169
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 119
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11a3

    .line 113
    :cond_117b
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a3

    .line 114
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_118c
    .catch Ljava/lang/Exception; {:try_start_f87 .. :try_end_118c} :catch_118d

    goto :goto_11a3

    :catch_118d
    move-exception v0

    move-object v1, v0

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to validate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11a3
    :goto_11a3
    move-object/from16 v1, p1

    goto/16 :goto_1f

    :cond_11a7
    return-object v4

    :sswitch_data_11a8
    .sparse-switch
        -0x7f5cb021 -> :sswitch_9f1
        -0x787013c6 -> :sswitch_9e6
        -0x72e8c808 -> :sswitch_9da
        -0x70e89afa -> :sswitch_9ce
        -0x70cc2d24 -> :sswitch_9c3
        -0x705f4111 -> :sswitch_9b8
        -0x6bafcb5b -> :sswitch_9ac
        -0x6b770d2f -> :sswitch_9a0
        -0x6b1bfe7b -> :sswitch_995
        -0x6a1df617 -> :sswitch_989
        -0x69a85713 -> :sswitch_97c
        -0x67379d00 -> :sswitch_970
        -0x65712a00 -> :sswitch_964
        -0x640f2df5 -> :sswitch_958
        -0x63de4f3f -> :sswitch_94c
        -0x62ae10dd -> :sswitch_940
        -0x5b20666f -> :sswitch_933
        -0x58d55dbc -> :sswitch_926
        -0x58cef052 -> :sswitch_919
        -0x588de745 -> :sswitch_90d
        -0x574ec733 -> :sswitch_901
        -0x56fd1517 -> :sswitch_8f4
        -0x55af4883 -> :sswitch_8e8
        -0x5424cde7 -> :sswitch_8db
        -0x53046480 -> :sswitch_8cf
        -0x5270bd91 -> :sswitch_8c2
        -0x503c9082 -> :sswitch_8b6
        -0x4fbce263 -> :sswitch_8a9
        -0x4f5feeef -> :sswitch_89d
        -0x4ec70bfd -> :sswitch_890
        -0x4d0a712e -> :sswitch_884
        -0x4ccd4ad2 -> :sswitch_878
        -0x4bdf968d -> :sswitch_86c
        -0x4b0c998a -> :sswitch_860
        -0x4a8376ec -> :sswitch_854
        -0x4a34e804 -> :sswitch_848
        -0x4969d71d -> :sswitch_83c
        -0x485b6dfe -> :sswitch_830
        -0x47f26a51 -> :sswitch_823
        -0x42717761 -> :sswitch_817
        -0x4261e015 -> :sswitch_80a
        -0x3ffd6516 -> :sswitch_7fd
        -0x3f046bfa -> :sswitch_7f0
        -0x3e9934f1 -> :sswitch_7e3
        -0x3e8fe055 -> :sswitch_7d6
        -0x3bc386d8 -> :sswitch_7ca
        -0x3bb86c23 -> :sswitch_7bd
        -0x3b2c12ce -> :sswitch_7b1
        -0x3812671f -> :sswitch_7a5
        -0x354445ae -> :sswitch_798
        -0x314d8a32 -> :sswitch_78c
        -0x313a5164 -> :sswitch_77f
        -0x2f80f0e3 -> :sswitch_773
        -0x2f73aab0 -> :sswitch_76a
        -0x2ea4a2d7 -> :sswitch_75e
        -0x2d772949 -> :sswitch_752
        -0x2bff1350 -> :sswitch_746
        -0x2bc011b8 -> :sswitch_73a
        -0x2b692c1b -> :sswitch_72d
        -0x2b0fff71 -> :sswitch_721
        -0x2ab92996 -> :sswitch_714
        -0x29c9d2c2 -> :sswitch_708
        -0x28f70de7 -> :sswitch_6fc
        -0x28897b8a -> :sswitch_6ef
        -0x276d2439 -> :sswitch_6e3
        -0x2487d469 -> :sswitch_6d7
        -0x22cd2235 -> :sswitch_6ca
        -0x2171b40e -> :sswitch_6be
        -0x1fbd53a0 -> :sswitch_6b1
        -0x1dd1a9ea -> :sswitch_6a4
        -0x1d2bba9b -> :sswitch_698
        -0x1d090dfc -> :sswitch_68b
        -0x1b8d2d73 -> :sswitch_67e
        -0x1ad7d13f -> :sswitch_671
        -0x191499f3 -> :sswitch_664
        -0x189833bc -> :sswitch_65a
        -0x1827bcbf -> :sswitch_64d
        -0x17cba8d3 -> :sswitch_641
        -0x179e4fff -> :sswitch_634
        -0x159b1c23 -> :sswitch_628
        -0x14e8d153 -> :sswitch_61b
        -0x142aff4f -> :sswitch_60f
        -0x12ca16cb -> :sswitch_603
        -0x122bc0d0 -> :sswitch_5f6
        -0x114d657c -> :sswitch_5e9
        -0xe56d6ca -> :sswitch_5dd
        -0xce06d95 -> :sswitch_5d1
        -0x9d1b89a -> :sswitch_5c5
        -0x8d18fb4 -> :sswitch_5b9
        -0x7ffc723 -> :sswitch_5ac
        -0x7980be9 -> :sswitch_5a0
        -0x76e157a -> :sswitch_594
        -0x5c6012c -> :sswitch_587
        -0x57f5054 -> :sswitch_57a
        -0x421126d -> :sswitch_56e
        -0x38db16c -> :sswitch_562
        -0x2f3ad77 -> :sswitch_556
        -0x2aea77a -> :sswitch_54a
        0x6a1594 -> :sswitch_53d
        0xb5ce54 -> :sswitch_530
        0x1268597 -> :sswitch_524
        0x2f125e2 -> :sswitch_518
        0x319915f -> :sswitch_50b
        0x91483ff -> :sswitch_4ff
        0x9c1eaa9 -> :sswitch_4f2
        0x9c49f8e -> :sswitch_4e6
        0xa371348 -> :sswitch_4da
        0xa801419 -> :sswitch_4cd
        0xcbfc309 -> :sswitch_4c0
        0xddb2b83 -> :sswitch_4b3
        0xea853a6 -> :sswitch_4a7
        0xebf6e1a -> :sswitch_49a
        0x1089c6b3 -> :sswitch_48e
        0x114887c3 -> :sswitch_482
        0x12bde081 -> :sswitch_476
        0x14a5a9c5 -> :sswitch_469
        0x14fee157 -> :sswitch_45d
        0x1528b87d -> :sswitch_450
        0x1642ab48 -> :sswitch_443
        0x176690e1 -> :sswitch_437
        0x18f662a5 -> :sswitch_42b
        0x1c19474f -> :sswitch_41f
        0x237a88eb -> :sswitch_413
        0x2668f90b -> :sswitch_407
        0x29373095 -> :sswitch_3fb
        0x29de8e28 -> :sswitch_3ef
        0x2bd7b901 -> :sswitch_3e2
        0x2d890a14 -> :sswitch_3d6
        0x2dee6dea -> :sswitch_3c9
        0x2eb98d17 -> :sswitch_3bd
        0x2efc05de -> :sswitch_3b1
        0x306993b7 -> :sswitch_3a7
        0x3343888e -> :sswitch_39a
        0x35b5df3a -> :sswitch_38d
        0x35ee0ae6 -> :sswitch_381
        0x3780cd1a -> :sswitch_374
        0x383dc7a9 -> :sswitch_368
        0x38730e8f -> :sswitch_35b
        0x3e637c74 -> :sswitch_34f
        0x40383676 -> :sswitch_342
        0x4104aeb5 -> :sswitch_336
        0x424d656d -> :sswitch_32a
        0x436e0232 -> :sswitch_31e
        0x448b4925 -> :sswitch_312
        0x470f223a -> :sswitch_308
        0x47a8296d -> :sswitch_2ff
        0x47b87a85 -> :sswitch_2f3
        0x4857e328 -> :sswitch_2e7
        0x4a05f63f -> :sswitch_2db
        0x4ae07531 -> :sswitch_2cf
        0x4cbee6e9 -> :sswitch_2c2
        0x4cce6401 -> :sswitch_2b6
        0x4fb137f0 -> :sswitch_2aa
        0x5080e6c9 -> :sswitch_29e
        0x537bcc50 -> :sswitch_291
        0x55d982d2 -> :sswitch_285
        0x57037fb5 -> :sswitch_278
        0x5a047737 -> :sswitch_26c
        0x5ae319bc -> :sswitch_260
        0x5bbc62dd -> :sswitch_254
        0x5bc56e60 -> :sswitch_248
        0x5be34f83 -> :sswitch_23b
        0x5d584ea7 -> :sswitch_22f
        0x5ed3e575 -> :sswitch_223
        0x606bf2c0 -> :sswitch_217
        0x62408c3e -> :sswitch_20b
        0x6306bfa5 -> :sswitch_1ff
        0x63278621 -> :sswitch_1f3
        0x6402d2db -> :sswitch_1e7
        0x642f4f76 -> :sswitch_1da
        0x6568c319 -> :sswitch_1d0
        0x65f349d8 -> :sswitch_1c3
        0x662ee633 -> :sswitch_1b7
        0x663b2e7e -> :sswitch_1ab
        0x68ad06ee -> :sswitch_19f
        0x6981c692 -> :sswitch_193
        0x69bd25e7 -> :sswitch_187
        0x69d231dd -> :sswitch_17b
        0x6c6aad51 -> :sswitch_16f
        0x6dc86397 -> :sswitch_162
        0x6e355777 -> :sswitch_155
        0x6f216615 -> :sswitch_149
        0x705a7c00 -> :sswitch_13d
        0x72a6d836 -> :sswitch_131
        0x734e5d87 -> :sswitch_125
        0x74c2f437 -> :sswitch_119
        0x78c6352e -> :sswitch_10c
        0x78cd108a -> :sswitch_ff
        0x7b5d2ad0 -> :sswitch_f3
        0x7c6b1493 -> :sswitch_e6
        0x7ceb0fac -> :sswitch_da
        0x7e6be5f0 -> :sswitch_ce
        0x7fc6dff8 -> :sswitch_c1
    .end sparse-switch

    :sswitch_data_14ae
    .sparse-switch
        0x7 -> :sswitch_10fa
        0x8 -> :sswitch_1010
        0x9 -> :sswitch_ffd
        0xa -> :sswitch_fea
        0xb -> :sswitch_fd7
        0xc -> :sswitch_fc4
        0xd -> :sswitch_fb1
        0xe -> :sswitch_f9e
        0xf -> :sswitch_f8b
        0x10 -> :sswitch_f2c
        0x11 -> :sswitch_f19
        0x12 -> :sswitch_f06
        0x13 -> :sswitch_ef3
        0x14 -> :sswitch_ed5
        0x15 -> :sswitch_ec2
        0x1d -> :sswitch_eaf
        0x53 -> :sswitch_e9c
        0x56 -> :sswitch_e89
        0x5d -> :sswitch_e70
        0x66 -> :sswitch_e37
        0x68 -> :sswitch_e18
        0x80 -> :sswitch_e05
        0x86 -> :sswitch_df2
        0x87 -> :sswitch_ddf
        0x88 -> :sswitch_dcc
        0x8b -> :sswitch_db9
        0x8c -> :sswitch_da6
        0xa1 -> :sswitch_d93
        0xa2 -> :sswitch_d80
        0xa3 -> :sswitch_d6d
        0xa4 -> :sswitch_d5a
        0xa5 -> :sswitch_d47
        0xa6 -> :sswitch_d34
        0xa7 -> :sswitch_d21
        0xa8 -> :sswitch_d0e
        0xa9 -> :sswitch_cfb
        0xaa -> :sswitch_ce8
        0xad -> :sswitch_cd5
        0xb1 -> :sswitch_cc2
        0xb3 -> :sswitch_caf
        0xbc -> :sswitch_c68
    .end sparse-switch

    :pswitch_data_1554
    .packed-switch 0x19
        :pswitch_c55
        :pswitch_c42
        :pswitch_c2f
    .end packed-switch

    :pswitch_data_155e
    .packed-switch 0x1f
        :pswitch_c1c
        :pswitch_c09
        :pswitch_bf0
        :pswitch_bdd
        :pswitch_bc8
        :pswitch_bb5
        :pswitch_ba2
        :pswitch_b8f
        :pswitch_b7c
        :pswitch_b69
        :pswitch_b4a
        :pswitch_b37
        :pswitch_b24
        :pswitch_b11
        :pswitch_afe
        :pswitch_aeb
    .end packed-switch

    :pswitch_data_1582
    .packed-switch 0x31
        :pswitch_ad8
        :pswitch_ac5
        :pswitch_ab2
        :pswitch_a94
    .end packed-switch

    :pswitch_data_158e
    .packed-switch 0x59
        :pswitch_a81
        :pswitch_a6e
        :pswitch_a55
    .end packed-switch
.end method
