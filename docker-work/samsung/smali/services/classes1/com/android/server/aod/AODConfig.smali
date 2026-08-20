.class public Lcom/android/server/aod/AODConfig;
.super Ljava/lang/Object;
.source "AODConfig.java"


# static fields
.field public static final AOD_MODE_DEFAULT_VALUE:Ljava/lang/String;

.field public static final CONFIG_DISABLE_TAP_TO_SHOW:Ljava/lang/String; = "notaptoshow"

.field public static final CONFIG_DISABLE_TOUCH:Ljava/lang/String; = "-touch"

.field public static final CONFIG_DUAL_DISPLAY:Ljava/lang/String; = "dualdisplay"

.field public static final SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

.field public static final SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

.field public static final SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

.field public static final SUPPORT_ACTIVE_CLOCK:Z = false

.field public static final SUPPORT_FRONT_SUB_DISPLAY_WATCHFACE:Z

.field public static final SUPPORT_PARTIAL_DISP_OFF:Z = false

.field public static final SUPPORT_REMOVE_SCREEN_TURNING_ON_DELAY:Z = true

.field public static final SUPPORT_SUB_DISPLAY_COVER:Z

.field public static final isAODTouchDisabled:Z

.field public static final isTapToShowDisabled:Z

.field public static final mProductName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 18
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "aodversion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODConfig;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_AOD_ConfigDefStatus"

    const-string v4, "ON"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODConfig;->AOD_MODE_DEFAULT_VALUE:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "-touch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notaptoshow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODConfig;->isTapToShowDisabled:Z

    const-string/jumbo v0, "ro.product.device"

    const-string v1, "NONE"

    .line 26
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODConfig;->mProductName:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "COVER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODConfig;->SUPPORT_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_78

    .line 34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WATCHFACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x1

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    sput-boolean v0, Lcom/android/server/aod/AODConfig;->SUPPORT_FRONT_SUB_DISPLAY_WATCHFACE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, " AOD Config"

    .line 45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isAODTouchDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isAODDefaultOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/aod/AODConfig;->isAODDefaultOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static isAODDefaultOn()Z
    .registers 2

    .line 41
    sget-object v0, Lcom/android/server/aod/AODConfig;->AOD_MODE_DEFAULT_VALUE:Ljava/lang/String;

    const-string v1, "OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNeedsScreenTurningOnDelayed()Z
    .registers 1

    .line 37
    sget-boolean v0, Lcom/android/server/aod/AODConfig;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    return v0
.end method
