.class public Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
.super Ljava/lang/Object;
.source "HdrDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;
    }
.end annotation


# static fields
.field public static final FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

.field public static final FEATURE_SUPPORT_HDR_HW:Z

.field public static final FEATURE_SUPPORT_HDR_NODE:Z

.field public static final FEATURE_SUPPORT_HDR_SOLUTION:Z

.field private static final LIST_LEGACY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HdrSolution_HdrDisplayController"

.field private static final URI_SETTING_BLF:Ljava/lang/String; = "blue_light_filter"

.field private static final URI_SETTING_NIGHT_DIM:Ljava/lang/String; = "blue_light_filter_night_dim"

.field private static final WRITE_HDR_PATH:Ljava/lang/String; = "/sys/class/mdnie/mdnie/hdr"

.field private static final WRITE_PANEL_DIA:Ljava/lang/String; = "/sys/class/lcd/panel/dia"


# instance fields
.field private HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

.field private HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mBlueLightFilterOn:Z

.field private mContext:Landroid/content/Context;

.field private mHdrState:Z

.field private mIsNightDim:Z

.field private mLegacy:Z

.field private mMultiWindowMode:I

.field private mMultiWindowOn:Z

.field private mNightDimOn:Z

.field private mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mSettedHdrMode:I

.field private mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

.field private mSupportHdrSolution:Z

.field private mTaskStackListener:Landroid/app/TaskStackListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHdrState(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)I
    .registers 1

    iget p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemMultiWindowManager(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Lcom/samsung/android/app/SemMultiWindowManager;
    .registers 1

    iget-object p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportHdrSolution(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)Z
    .registers 1

    iget-boolean p0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMultiWindowMode(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;I)V
    .registers 2

    iput p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMultiWindowOn(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Z)V
    .registers 2

    iput-boolean p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBLFValue(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V
    .registers 1

    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateBLFValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 43
    const-string v0, "EXYNOS9820"

    const-string v1, "EXYNOS9825"

    const-string v2, "EXYNOS990"

    const-string v3, "EXYNOS2100"

    const-string v4, "EXYNOS9610"

    const-string v5, "EXYNOS9611"

    const-string v6, "SM8150"

    const-string v7, "SM8250"

    const-string v8, "SM7150"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->LIST_LEGACY:[Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_DISABLE_PANEL_DIA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    sput-boolean v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_NODE:Z

    .line 70
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HW_HDR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_HW:Z

    .line 71
    if-eqz v0, :cond_4a

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    sput-boolean v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    .line 48
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    .line 57
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    .line 58
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    .line 59
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 60
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    .line 61
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    .line 62
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    .line 63
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mIsNightDim:Z

    .line 65
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    .line 66
    iput v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    .line 73
    new-instance v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$1;

    invoke-direct {v1, p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$1;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 85
    new-instance v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;

    invoke-direct {v1, p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$2;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 103
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    .line 107
    const-string v1, "ro.soc.model"

    const-string v2, "null"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "chipName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "ro.vendor.qti.soc_model"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_5e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const-string v3, "ro.hardware.chipname"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_6a
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    sget-object v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->LIST_LEGACY:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_86

    iput-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    goto :goto_88

    .line 113
    :cond_86
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    .line 115
    :goto_88
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    if-eqz v3, :cond_b5

    .line 116
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 117
    .local v3, "activityManagerNative":Landroid/app/IActivityManager;
    if-eqz v3, :cond_9c

    .line 119
    :try_start_92
    iget-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-interface {v3, v5}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_97} :catch_98

    .line 122
    goto :goto_9c

    .line 120
    :catch_98
    move-exception v5

    .line 121
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9c
    :goto_9c
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iput-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 125
    if-eqz v5, :cond_ae

    .line 127
    :try_start_a4
    iget-object v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v5, v6}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_aa

    .line 130
    goto :goto_ae

    .line 128
    :catch_aa
    move-exception v5

    .line 129
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_ae
    :goto_ae
    new-instance v5, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v5}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v5, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 135
    .end local v3    # "activityManagerNative":Landroid/app/IActivityManager;
    :cond_b5
    new-instance v3, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v5}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;-><init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Landroid/os/Handler;)V

    iput-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    .line 137
    const-string v3, "debug.hdr.enforce.hdr_solution"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "enforceHdrSolution":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_106

    :cond_d7
    goto :goto_eb

    :sswitch_d8
    const-string v6, "OFF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    move v5, v4

    goto :goto_eb

    :sswitch_e2
    const-string v6, "ON"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    move v5, v0

    :goto_eb
    const-string v3, "HdrSolution_HdrDisplayController"

    packed-switch v5, :pswitch_data_110

    .line 148
    sget-boolean v0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    goto :goto_105

    .line 144
    :pswitch_f5
    iput-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 145
    const-string v0, "Prevent support Hdr Solution"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_105

    .line 140
    :pswitch_fd
    iput-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    .line 141
    const-string v0, "Enforce support Hdr Solution"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    nop

    .line 151
    :goto_105
    return-void

    :sswitch_data_106
    .sparse-switch
        0x9df -> :sswitch_e2
        0x1314f -> :sswitch_d8
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_f5
    .end packed-switch
.end method

.method private getHdrModeFromPackageName()I
    .registers 6

    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, "mode":I
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->getTopPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "mTopPackageName":Ljava/lang/String;
    if-eqz v1, :cond_5a

    .line 195
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 196
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_e
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1f

    .line 197
    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 198
    const/4 v0, 0x3

    .line 196
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 202
    .end local v2    # "j":I
    :cond_1f
    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    if-eqz v2, :cond_38

    .line 203
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_27
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_38

    .line 204
    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 205
    const/4 v0, 0x2

    .line 203
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 209
    .end local v2    # "j":I
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HdrAppMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdrSolution_HdrDisplayController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_5a
    return v0
.end method

.method public static getTopPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 266
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 267
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v2, ""

    if-eqz v1, :cond_30

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_30

    .line 273
    :cond_18
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "topPackage":Ljava/lang/String;
    if-nez v3, :cond_2f

    .line 275
    const-string v4, "HdrSolution_HdrDisplayController"

    const-string v5, "getTopPackage : Failed to get top information"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v2

    .line 278
    :cond_2f
    return-object v3

    .line 270
    .end local v3    # "topPackage":Ljava/lang/String;
    :cond_30
    :goto_30
    return-object v2
.end method

.method private setHdrMode(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 215
    const-string v0, "/sys/class/lcd/panel/dia"

    const-string v1, "/sys/class/mdnie/mdnie/hdr"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_24

    .line 216
    invoke-static {v1, p1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->sysfsWrite(Ljava/lang/String;I)Z

    .line 217
    sget-boolean v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

    if-eqz v1, :cond_12

    .line 218
    invoke-static {v0, v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->sysfsWrite(Ljava/lang/String;I)Z

    .line 220
    :cond_12
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_3a

    .line 221
    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    .line 222
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setHighDynamicRangeMode(Z)V

    .line 223
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setIRCompensationMode(Z)V

    goto :goto_3a

    .line 226
    :cond_24
    invoke-static {v1, v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->sysfsWrite(Ljava/lang/String;I)Z

    .line 227
    sget-boolean v1, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->FEATURE_SUPPORT_DISABLE_PANEL_DIA:Z

    if-eqz v1, :cond_2e

    .line 228
    invoke-static {v0, v2}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->sysfsWrite(Ljava/lang/String;I)Z

    .line 230
    :cond_2e
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_3a

    .line 232
    invoke-virtual {v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setHighDynamicRangeMode(Z)V

    .line 233
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setIRCompensationMode(Z)V

    .line 236
    :cond_3a
    :goto_3a
    return-void
.end method

.method private startSettingObserver()V
    .registers 5

    .line 283
    :try_start_0
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateBLFValue()V

    .line 284
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 287
    goto :goto_1a

    .line 285
    :catch_12
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HdrSolution_HdrDisplayController"

    const-string v2, "startSettingObserver : Fail to startSettingObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method private stopSettingObserver()V
    .registers 4

    .line 292
    :try_start_0
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettingObserver:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 295
    goto :goto_14

    .line 293
    :catch_c
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HdrSolution_HdrDisplayController"

    const-string v2, "startSettingObserver : Fail to stopSettingObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "out":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "myfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    .line 244
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_27

    move-object v0, v2

    .line 248
    nop

    .line 249
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 250
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 259
    nop

    .line 260
    const/4 v2, 0x1

    return v2

    .line 251
    :catch_27
    move-exception v2

    goto :goto_2e

    .line 245
    :catch_29
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2d} :catch_27

    .line 247
    return v3

    .line 252
    .local v2, "e":Ljava/io/IOException;
    :goto_2e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    :try_start_31
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    .line 257
    goto :goto_39

    .line 255
    :catch_35
    move-exception v4

    .line 256
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_39
    return v3

    .line 262
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3a
    return v3
.end method

.method private updateBLFValue()V
    .registers 6

    .line 299
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 300
    .local v0, "nightDim":I
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-le v0, v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    iput-boolean v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mIsNightDim:Z

    .line 301
    if-ne v0, v3, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    iput-boolean v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    .line 303
    iget-object v2, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "blue_light_filter"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2c

    move v1, v3

    :cond_2c
    iput-boolean v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    .line 304
    return-void
.end method


# virtual methods
.method public setHdrLayerState(Z)V
    .registers 4
    .param p1, "state"    # Z

    .line 154
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSupportHdrSolution:Z

    if-eqz v0, :cond_25

    .line 155
    iput-boolean p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    .line 157
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_16

    .line 158
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 160
    :cond_16
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    if-eqz v0, :cond_1e

    .line 161
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->startSettingObserver()V

    goto :goto_21

    .line 163
    :cond_1e
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->stopSettingObserver()V

    .line 165
    :goto_21
    invoke-virtual {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateHdrMode()V

    goto :goto_43

    .line 167
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHdrLayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), HDR Uncertified Device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdrSolution_HdrDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_43
    return-void
.end method

.method public updateHdrMode()V
    .registers 11

    .line 172
    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowOn:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 173
    .local v0, "hdrOnOff":Z
    :goto_c
    invoke-direct {p0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->getHdrModeFromPackageName()I

    move-result v2

    .line 174
    .local v2, "hdrAppMode":I
    if-eqz v0, :cond_13

    move v1, v2

    .line 176
    .local v1, "requiredHdrMode":I
    :cond_13
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mIsNightDim:Z

    const-string v4, "), MultiWindow("

    const-string v5, "), BLF("

    const-string v6, "HdrState("

    const-string v7, ")"

    const-string v8, "HdrSolution_HdrDisplayController"

    if-eqz v3, :cond_90

    .line 177
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    const-string v9, "), ND("

    if-eqz v3, :cond_61

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 178
    :cond_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mNightDimOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 180
    :cond_90
    iget-boolean v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mLegacy:Z

    if-eqz v3, :cond_c3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mMultiWindowMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 181
    :cond_c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mHdrState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mBlueLightFilterOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_e7
    iget v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    if-eq v3, v1, :cond_10c

    .line 185
    invoke-direct {p0, v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->setHdrMode(I)V

    .line 186
    iput v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMode HDR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->mSettedHdrMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_10c
    return-void
.end method
