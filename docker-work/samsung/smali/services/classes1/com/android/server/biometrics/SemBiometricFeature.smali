.class public Lcom/android/server/biometrics/SemBiometricFeature;
.super Ljava/lang/Object;
.source "SemBiometricFeature.java"


# static fields
.field public static final FACE_FEATURE_CONFIG:Ljava/lang/String; = ""

.field public static final FACE_FEATURE_LANDSCAPE_MODE:Z

.field public static final FACE_FEATURE_SUPPORT_FACE:Z = true

.field public static final FACE_FEATURE_SUPPORT_V2_WITHCONTEXT:Z = false

.field public static final FEATURE_BP_USE_AOSP_SYSTEMUI:Z = false

.field public static final FEATURE_BP_USE_SWITCHING:Z = true

.field public static final FEATURE_FINGERPRINT_JDM_HAL:Z

.field public static final FEATURE_INTEGRATED_LOCKOUT:Z

.field public static final FEATURE_JDM_HAL:Z

.field public static final FEATURE_LOGGING_MODE:Z

.field public static final FEATURE_SAMSUNG_BIOMETRICS_FACE_FW:Z = true

.field public static final FEATURE_SUPPORT_AOD:Z

.field public static final FEATURE_SUPPORT_DESKTOP_MODE:Z = false

.field public static final FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

.field public static final FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

.field public static final FEATURE_SUPPORT_SPEN:Z

.field public static final FEATURE_USE_AOSP_VIBRATE_POLICY:Z = false

.field public static final FEATURE_USE_SENSOR_RESOURCE_CONFIG:Z = false

.field public static final FP_FEATURE_EARLY_WAKE_UP:Z = false

.field public static final FP_FEATURE_FAKE_AOD:Z

.field public static final FP_FEATURE_GESTURE_MODE:Z

.field public static final FP_FEATURE_HW_LIGHT_SOURCE:Z

.field public static final FP_FEATURE_MAX_TEMPLATES_PER_USER:I = 0x4

.field public static final FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field public static final FP_FEATURE_SENSOR_IS_OPTICAL:Z

.field public static final FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

.field public static final FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

.field public static final FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

.field public static final FP_FEATURE_SUPPORT_FINGERPRINT:Z

.field public static final FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

.field public static final FP_FEATURE_SWIPE_ENROLL:Z

.field public static final FP_FEATURE_TSP_BLOCK:Z

.field public static final FP_FEATURE_USE_AOSP_HAL:Z

.field public static final FP_FEATURE_USE_FRAMEWORK_LOCKOUT:Z = true

.field public static final FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z

.field public static final PKG_NAME_DESKTOP_KEYGUARD:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field public static final PKG_NAME_KEYGUARD:Ljava/lang/String; = "com.android.systemui"

.field public static final PKG_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final SETTING_DB_STRONG_BIO_TIMESTAMP:Ljava/lang/String; = "biometrics_strong_enroll_timestamp"


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 27
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEVICE_MANUFACTURING_TYPE"

    .line 32
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "jdm"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    .line 37
    :goto_26
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    .line 49
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 50
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aodversion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    .line 53
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    .line 54
    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_60

    move v4, v1

    goto :goto_61

    :cond_60
    move v4, v2

    :goto_61
    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_SPEN:Z

    .line 57
    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    if-nez v0, :cond_69

    move v0, v2

    goto :goto_6a

    :cond_69
    move v0, v1

    .line 64
    :goto_6a
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_BIOAUTH_CONFIG_FINGERPRINT_FEATURES"

    .line 70
    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "display"

    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    move v0, v1

    goto :goto_81

    :cond_80
    move v0, v2

    :goto_81
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "optical"

    .line 78
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    move v0, v1

    goto :goto_97

    :cond_96
    move v0, v2

    :goto_97
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 83
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ultrasonic"

    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ac

    move v0, v1

    goto :goto_ad

    :cond_ac
    move v0, v2

    :goto_ad
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 89
    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    .line 93
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    .line 97
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    .line 105
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_LCD_CONFIG_SELFMASK_VERSION"

    .line 106
    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v1, :cond_c3

    move v0, v1

    goto :goto_c4

    :cond_c3
    move v0, v2

    :goto_c4
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 110
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    .line 114
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    .line 118
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_FAKE_AOD:Z

    .line 120
    sput-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    .line 124
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z

    .line 135
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_LANDSCAPE_MODE:Z

    .line 144
    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
