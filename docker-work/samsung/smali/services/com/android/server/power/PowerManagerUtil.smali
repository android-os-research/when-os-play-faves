.class public final Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;,
        Lcom/android/server/power/PowerManagerUtil$TraceDumper;,
        Lcom/android/server/power/PowerManagerUtil$Country;,
        Lcom/android/server/power/PowerManagerUtil$Sales;,
        Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;
    }
.end annotation


# static fields
.field public static final A23X_PROJECT:Z

.field public static final A53X_PROJECT:Z

.field public static final AUTO_BRIGHTNESS_TYPE:I

.field public static final B2_PROJECT:Z

.field public static final B4_PROJECT:Z

.field public static CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z = false

.field public static final DEBUG_LOW:Z

.field public static final DEBUG_UNKNOWN:Z

.field public static final DIAMOND_PROJECT:Z

.field public static final DREAM_PROJECT:Z

.field public static final E4_PROJECT:Z

.field public static final GREAT_PROJECT:Z

.field public static final GTA3XL_PROJECT:Z

.field public static final GTA4S_PROJECT:Z

.field public static final PALETTE_PROJECT:Z

.field public static final PERFORMANCE_MODE_DEFAULT_SCALE_FACTOR:F = 0.885f

.field public static final Q2_PROJECT:Z

.field public static final Q4_PROJECT:Z

.field public static final RAINBOW_PROJECT:Z

.field public static final SECURITY_FINGERPRINT_IN_DISPLAY:Z

.field public static final SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

.field public static final SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

.field public static final SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

.field public static final SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

.field public static final SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

.field public static final SEC_FEATURE_BATTERY_SIMULATION:Z

.field public static final SEC_FEATURE_BRIGHTNESS_CONTROL_BY_EXTRA_DIM:Z = false

.field public static final SEC_FEATURE_CONVERTING_BRIGHTNESS:Z

.field public static final SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

.field public static final SEC_FEATURE_DEX_DUAL_VIEW:Z = false

.field public static final SEC_FEATURE_DISPLAY_QUALITY:Z

.field public static final SEC_FEATURE_DUAL_DISPLAY:Z = false

.field public static final SEC_FEATURE_EARLY_WAKEUP:Z = true

.field public static final SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

.field public static final SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FEATURE_FLIP_COVER_DISPLAY:Z = false

.field public static final SEC_FEATURE_FOLD_COVER_DISPLAY:Z = false

.field public static final SEC_FEATURE_HEADLESS_DEVICE:Z

.field public static final SEC_FEATURE_HOMEHUB:Z

.field public static final SEC_FEATURE_HQM_SEND_DPUC:Z

.field public static final SEC_FEATURE_INITIAL_BATTERY_USE:Z = true

.field public static final SEC_FEATURE_JDM:Z

.field public static final SEC_FEATURE_PAPAYA_DQE:Z

.field public static final SEC_FEATURE_PREVENT_SWELLING:Z

.field public static final SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

.field public static final SEC_FEATURE_SEAMLESS_AOD:Z

.field public static final SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

.field public static final SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

.field public static final SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

.field public static final SEC_FEATURE_TABLET:Z

.field public static final SEC_FEATURE_USE_AFC:Z

.field public static final SEC_FEATURE_USE_GED_DOZE:Z

.field public static final SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z = false

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_USE_SFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_AFC:Z

.field public static final SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

.field public static final SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

.field public static final SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

.field public static final SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

.field public static final SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

.field public static final SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

.field public static final SHIP_BUILD:Z

.field public static final TABA2XL_PROJECT:Z

.field public static final TABS4_PROJECT:Z

.field public static final TAG:Ljava/lang/String; = "PowerManagerUtil"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final USE_FAST_RAMP_RATE:Z

.field public static final USE_LONG_RAMP_RATE_FOR_NON_HBM:Z = true

.field public static final USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

.field public static USE_SEC_LONG_TERM_MODEL:Z = false

.field public static final USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

.field public static final V2_PROJECT:Z

.field public static final V4_PROJECT:Z

.field public static final YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

.field public static final YUVA_FEATURE_TAG:Ljava/lang/String; = "CscFeature_Common_ConfigYuva"

.field public static final deviceType:Ljava/lang/String;

.field public static final homeHubFeature:Ljava/lang/String;

.field public static final mProductName:Ljava/lang/String;

.field public static final productType:Ljava/lang/String; = "jdm"

.field public static final sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

.field public static final sScreenOnProfiler:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    const-string/jumbo v0, "ro.product.vendor.device"

    const-string v1, "NONE"

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->mProductName:Ljava/lang/String;

    const-string v1, "dream"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->DREAM_PROJECT:Z

    const-string/jumbo v1, "great"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->GREAT_PROJECT:Z

    const-string/jumbo v1, "gts4l"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->TABS4_PROJECT:Z

    const-string/jumbo v2, "gta2xl"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->TABA2XL_PROJECT:Z

    const-string/jumbo v3, "o1"

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "t2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "p3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 v3, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v3, 0x1

    :goto_51
    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->PALETTE_PROJECT:Z

    const-string/jumbo v6, "gta4s"

    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->GTA4S_PROJECT:Z

    const-string/jumbo v7, "gta3xl"

    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->GTA3XL_PROJECT:Z

    const-string/jumbo v8, "q2"

    .line 78
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->Q2_PROJECT:Z

    const-string/jumbo v9, "v2"

    .line 79
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->V2_PROJECT:Z

    const-string v10, "b2"

    .line 80
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->B2_PROJECT:Z

    const-string/jumbo v11, "r0"

    .line 81
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "g0"

    if-nez v12, :cond_9b

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9b

    const-string v12, "b0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_99

    goto :goto_9b

    :cond_99
    const/4 v12, 0x0

    goto :goto_9c

    :cond_9b
    :goto_9b
    const/4 v12, 0x1

    :goto_9c
    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->RAINBOW_PROJECT:Z

    const-string v14, "a53x"

    .line 82
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->A53X_PROJECT:Z

    const-string/jumbo v15, "q4"

    .line 83
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    sput-boolean v15, Lcom/android/server/power/PowerManagerUtil;->Q4_PROJECT:Z

    const-string/jumbo v5, "v4"

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->V4_PROJECT:Z

    const-string v4, "b4"

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/power/PowerManagerUtil;->B4_PROJECT:Z

    const-string v4, "e4"

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/power/PowerManagerUtil;->E4_PROJECT:Z

    const-string v4, "a23xq"

    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/power/PowerManagerUtil;->A23X_PROJECT:Z

    const-string v4, "dm1"

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    move/from16 v17, v14

    const-string v14, "dm2"

    if-nez v16, :cond_ef

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_ef

    move/from16 v16, v5

    const-string v5, "dm3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ed

    goto :goto_f1

    :cond_ed
    const/4 v5, 0x0

    goto :goto_f2

    :cond_ef
    move/from16 v16, v5

    :goto_f1
    const/4 v5, 0x1

    :goto_f2
    sput-boolean v5, Lcom/android/server/power/PowerManagerUtil;->DIAMOND_PROJECT:Z

    const-string v18, "2"

    move/from16 v19, v15

    .line 92
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    sput v15, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    move/from16 v18, v9

    const/4 v9, 0x3

    if-lt v15, v9, :cond_105

    const/4 v9, 0x1

    goto :goto_106

    :cond_105
    const/4 v9, 0x0

    .line 93
    :goto_106
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    move/from16 v20, v8

    const/4 v8, 0x4

    if-ne v15, v8, :cond_10f

    const/4 v8, 0x1

    goto :goto_110

    :cond_10f
    const/4 v8, 0x0

    .line 94
    :goto_110
    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    const/4 v8, 0x5

    if-ne v15, v8, :cond_117

    const/4 v8, 0x1

    goto :goto_118

    :cond_117
    const/4 v8, 0x0

    .line 95
    :goto_118
    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    .line 96
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    if-nez v6, :cond_123

    if-eqz v7, :cond_121

    goto :goto_123

    :cond_121
    const/4 v6, 0x0

    goto :goto_124

    :cond_123
    :goto_123
    const/4 v6, 0x1

    .line 98
    :goto_124
    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->USE_FAST_RAMP_RATE:Z

    xor-int/lit8 v6, v12, 0x1

    .line 100
    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    const-string/jumbo v6, "ro.boot.debug_level"

    .line 104
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->DEBUG_UNKNOWN:Z

    .line 105
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "0x4f4c"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->DEBUG_LOW:Z

    const-string/jumbo v8, "ro.product_ship"

    const-string/jumbo v9, "true"

    .line 106
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/power/PowerManagerUtil;->SHIP_BUILD:Z

    if-nez v7, :cond_15f

    if-nez v6, :cond_15f

    const/4 v9, 0x1

    goto :goto_160

    :cond_15f
    const/4 v9, 0x0

    .line 107
    :goto_160
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-nez v7, :cond_16a

    if-nez v6, :cond_16a

    if-nez v8, :cond_16a

    const/4 v9, 0x1

    goto :goto_16b

    :cond_16a
    const/4 v9, 0x0

    .line 108
    :goto_16b
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SIMULATION:Z

    if-nez v7, :cond_175

    if-nez v6, :cond_175

    if-nez v8, :cond_175

    const/4 v6, 0x1

    goto :goto_176

    :cond_175
    const/4 v6, 0x0

    .line 109
    :goto_176
    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    const-string/jumbo v6, "ro.product.first_api_level"

    const/4 v7, 0x0

    .line 114
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_186

    const/4 v6, 0x1

    goto :goto_187

    :cond_186
    const/4 v6, 0x0

    :goto_187
    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

    .line 120
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "aodversion"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLICKERING_PANEL_WHEN_WAKINGUP_FROM_DOZE:Z

    .line 123
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v15

    move-object/from16 v21, v7

    const-string v7, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v15, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "INFINITY"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    .line 128
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    .line 130
    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    .line 134
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_CLOCKPACK_ITEM"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "clockpackversion"

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    .line 137
    sget-boolean v6, Lcom/android/server/aod/AODConfig;->SUPPORT_SUB_DISPLAY_COVER:Z

    if-eqz v6, :cond_1df

    sget-boolean v6, Lcom/android/server/aod/AODConfig;->SUPPORT_FRONT_SUB_DISPLAY_WATCHFACE:Z

    if-nez v6, :cond_1df

    const/4 v6, 0x1

    goto :goto_1e0

    :cond_1df
    const/4 v6, 0x0

    :goto_1e0
    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    .line 143
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1fd

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1fd

    .line 144
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1fd

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    goto :goto_1fd

    :cond_1fb
    const/4 v0, 0x0

    goto :goto_1fe

    :cond_1fd
    :goto_1fd
    const/4 v0, 0x1

    :goto_1fe
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    .line 156
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_HV"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 165
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    .line 170
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_TX"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-nez v1, :cond_237

    if-eqz v2, :cond_235

    goto :goto_237

    :cond_235
    const/4 v0, 0x0

    goto :goto_238

    :cond_237
    :goto_237
    const/4 v0, 0x1

    .line 174
    :goto_238
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    .line 179
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_OPTION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 184
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 189
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_NIGHT_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    const/4 v0, 0x1

    .line 199
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_JDM:Z

    if-nez v3, :cond_276

    if-nez v12, :cond_276

    if-eqz v5, :cond_274

    goto :goto_276

    :cond_274
    const/4 v0, 0x0

    goto :goto_277

    :cond_276
    :goto_276
    const/4 v0, 0x1

    .line 225
    :goto_277
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    .line 230
    sput-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_CONVERTING_BRIGHTNESS:Z

    .line 234
    sput-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

    const/4 v0, 0x0

    .line 241
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 243
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "activeclock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    if-nez v0, :cond_2a6

    .line 250
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clocktransition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a6

    const/4 v7, 0x1

    goto :goto_2a7

    :cond_2a6
    const/4 v7, 0x0

    :goto_2a7
    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    const-string v0, "ADAPTIVE_BRIGHTNESS"

    .line 255
    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->YUVA_FEATURE_ADAPTIVE_BRIGHTNESS_NAME:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    .line 256
    sput-boolean v7, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    const-string/jumbo v0, "ro.build.characteristics"

    .line 260
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_2c6

    const-string/jumbo v1, "tablet"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    const/4 v0, 0x1

    goto :goto_2c7

    :cond_2c6
    move v0, v7

    :goto_2c7
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    if-nez v20, :cond_2d4

    if-nez v18, :cond_2d4

    if-nez v19, :cond_2d4

    if-eqz v16, :cond_2d2

    goto :goto_2d4

    :cond_2d2
    move v0, v7

    goto :goto_2d5

    :cond_2d4
    :goto_2d4
    const/4 v0, 0x1

    .line 265
    :goto_2d5
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    .line 270
    sput-boolean v17, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    .line 275
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HEADLESS_DEVICE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HEADLESS_DEVICE:Z

    .line 279
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PAPAYA_DQE:Z

    .line 281
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_QUALITY:Z

    .line 285
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->homeHubFeature:Ljava/lang/String;

    if-eqz v0, :cond_30c

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30c

    const/4 v0, 0x1

    goto :goto_30d

    :cond_30c
    move v0, v7

    :goto_30d
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HOMEHUB:Z

    const-string v0, "30"

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_31b

    const/4 v4, 0x1

    goto :goto_31c

    :cond_31b
    move v4, v7

    :goto_31c
    sput-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    const/4 v0, 0x1

    .line 307
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 571
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfiler:Lcom/android/internal/util/RingBuffer;

    .line 573
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static brightnessToString(F)Ljava/lang/String;
    .registers 5

    .line 437
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 438
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 439
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%d(%.2f)"

    .line 437
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static callerInfoToString()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    .line 406
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static callerInfoToString(Z)Ljava/lang/String;
    .registers 6

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_d0

    .line 377
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq p0, v1, :cond_3c

    goto/16 :goto_d0

    .line 381
    :cond_3c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v1, 0x0

    .line 386
    :goto_45
    array-length v2, p0

    if-ge v1, v2, :cond_cb

    .line 387
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dalvik.system.VMStack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c7

    aget-object v2, p0, v1

    .line 388
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "java.lang.Thread"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c7

    aget-object v2, p0, v1

    .line 389
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.server.power.PowerManagerUtil"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c7

    aget-object v2, p0, v1

    .line 390
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.server.power.PowerManagerService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c7

    aget-object v2, p0, v1

    .line 391
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.os.PowerManager"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    goto :goto_c7

    .line 395
    :cond_90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " <- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    :cond_c7
    :goto_c7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_45

    .line 402
    :cond_cb
    :goto_cb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 378
    :cond_d0
    :goto_d0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fileExist(Ljava/lang/String;)Z
    .registers 4

    .line 316
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 322
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileExist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 4

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteInt to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_1e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_41

    .line 330
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    .line 331
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_41

    goto :goto_45

    :catchall_37
    move-exception p0

    .line 329
    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    :try_start_3d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_45
    return-void
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :try_start_1e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_3d

    .line 339
    :try_start_28
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_33

    .line 340
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3d

    goto :goto_41

    :catchall_33
    move-exception p0

    .line 338
    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p1

    :try_start_39
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw p0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public static getCurrentTimeAsString()Ljava/lang/String;
    .registers 3

    .line 362
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 363
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printArray([FLjava/lang/String;)V
    .registers 6

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " array l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 420
    :goto_1b
    array-length v2, p0

    if-ge v0, v2, :cond_42

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_42
    return-void
.end method

.method public static printArray([ILjava/lang/String;)V
    .registers 6

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " array l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 412
    :goto_1b
    array-length v2, p0

    if-ge v0, v2, :cond_42

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_42
    return-void
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 348
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_3f

    .line 350
    :try_start_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerUtil"

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_35

    .line 353
    :try_start_31
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_3f

    goto :goto_43

    :catchall_35
    move-exception p0

    .line 348
    :try_start_36
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v1

    :try_start_3b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception p0

    .line 354
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_43
    return-object v0
.end method
