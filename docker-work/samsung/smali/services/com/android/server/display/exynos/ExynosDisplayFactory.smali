.class public Lcom/android/server/display/exynos/ExynosDisplayFactory;
.super Ljava/lang/Object;
.source "ExynosDisplayFactory.java"


# static fields
.field public static final LOOP_CNT:I = 0x14

.field public static final MODE_CNT:I = 0x2

.field public static final MSG_SIGNAL_REFRESH:I = 0x1

.field public static final MSG_SYSFS_WRITE_CGC17_ENC:I = 0x3

.field public static final MSG_SYSFS_WRITE_CGC17_IDX:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ExynosDisplayFactory"


# instance fields
.field public APS_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public DEGAMMA_SYSFS_PATH:Ljava/lang/String;

.field public DE_SYSFS_PATH:Ljava/lang/String;

.field public DQE_COEF_XML_FILE_PATH:Ljava/lang/String;

.field public DQE_SYSFS_PATH:Ljava/lang/String;

.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public HDR_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public HSC_SYSFS_PATH:Ljava/lang/String;

.field public MODE_IDX_SYSFS_PATH:Ljava/lang/String;

.field public SCL_SYSFS_PATH:Ljava/lang/String;

.field public mColorModeModeIdx:[I

.field public mColorModeModeIdxDefault:I

.field public mColorModeSettingTable:[Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mCountDownTimerCount:I

.field public mCountDownTimerTable:[[I

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

.field public mFactoryXMLPath:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public mIntervalMs:I

.field public mLocalHandler:Landroid/os/Handler;

.field public mTimeoutMs:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorModeModeIdxDefault(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdxDefault:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationAPS(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationAPS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationCGC17_CON(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationCGC17_CON(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationCGC17_DEC(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationCGC17_DEC()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationCGC17_ENC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationCGC17_ENC(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationCGC_DITHER(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationCGC_DITHER(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationDE(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationDE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationDEGAMMA(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationGAMMA(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationGAMMA_MATRIX(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationGAMMA_MATRIX(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationHSC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationHSC(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationHSC48_LCG(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationHSC48_LCG(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationMODE_IDX(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetCalibrationSCL(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setCalibrationSCL(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msysfsWriteCGC17_ENC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_ENC(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msysfsWriteCGC17_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_IDX(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1b

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v3

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, v2

    :goto_1c
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/16 v1, 0x320

    .line 50
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    const/16 v1, 0x28

    .line 51
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    .line 52
    iput v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    const-string v1, "/sys/class/dqe/dqe"

    .line 57
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/hdr"

    .line 58
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HDR_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/mode_idx"

    .line 60
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/aps"

    .line 61
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/gamma_ext"

    .line 63
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/gamma"

    .line 64
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/degamma_ext"

    .line 65
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/degamma"

    .line 66
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/hsc"

    .line 67
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/cgc17_idx"

    .line 69
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/cgc17_enc"

    .line 70
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/cgc17_dec"

    .line 71
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/cgc17_con"

    .line 72
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/gamma_matrix"

    .line 74
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/cgc_dither"

    .line 75
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/hsc48_idx"

    .line 77
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 78
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/scl"

    .line 79
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/dqe/dqe/de"

    .line 80
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    const-string v1, "/vendor/etc/dqe/DQE_coef_data.xml"

    .line 82
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_COEF_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "0"

    .line 84
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    const-string v1, "1"

    .line 85
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 92
    iput v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdxDefault:I

    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 93
    fill-array-data v4, :array_fa

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    const-string/jumbo v4, "hdr10"

    const-string/jumbo v5, "hdr10p"

    .line 94
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    new-array v4, v1, [[I

    new-array v5, v2, [I

    aput v3, v5, v3

    aput-object v5, v4, v3

    new-array v5, v2, [I

    aput v3, v5, v3

    aput-object v5, v4, v2

    .line 95
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 128
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mContext:Landroid/content/Context;

    .line 99
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->setSysfsPath()V

    new-array p1, v1, [I

    .line 105
    fill-array-data p1, :array_102

    const-class v2, I

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    move p1, v3

    :goto_d4
    if-ge p1, v1, :cond_e7

    move v2, v3

    :goto_d7
    const/16 v4, 0x14

    if-ge v2, v4, :cond_e4

    .line 108
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v4, v4, p1

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    :cond_e4
    add-int/lit8 p1, p1, 0x1

    goto :goto_d4

    .line 110
    :cond_e7
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->initCountDownTimer()V

    .line 114
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_fa
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_102
    .array-data 4
        0x2
        0x14
    .end array-data
.end method


# virtual methods
.method public getCountDownTimerCount()I
    .registers 1

    .line 916
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    return p0
.end method

.method public final getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    .line 799
    :try_start_1
    invoke-static {p1, p2, p3, p0, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    return p0

    .line 804
    :cond_8
    array-length p2, p1

    const/4 p3, 0x1

    if-ge p2, p3, :cond_d

    return p0

    .line 807
    :cond_d
    aget-object p1, p1, p0

    const-string p2, "\\s*,\\s*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 808
    aget-object p1, p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 811
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return p0
.end method

.method public final initCountDownTimer()V
    .registers 8

    .line 642
    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    int-to-long v2, v0

    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V

    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final setCalibrationAPS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 586
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "setCalibrationAPS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    const-string v0, "aps"

    const/4 v2, 0x0

    .line 589
    invoke-static {p1, p2, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string/jumbo p0, "xml aps not found"

    .line 592
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 596
    :cond_1c
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_37

    .line 597
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml aps array size wrong: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 601
    :cond_37
    aget-object p1, p1, v2

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteAPS(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 607
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public final setCalibrationCGC17_CON(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 338
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "setCalibrationCGC17_CON"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    const-string v0, "cgc17_con"

    const/4 v2, 0x0

    .line 341
    invoke-static {p1, p2, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_20

    .line 344
    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz p0, :cond_1f

    const-string/jumbo p0, "xml cgc17_con not found"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void

    .line 348
    :cond_20
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_3f

    .line 349
    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz p0, :cond_3e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml cgc17_con array size wrong: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void

    .line 353
    :cond_3f
    aget-object p1, p1, v2

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_CON(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    return-void
.end method

.method public final setCalibrationCGC17_DEC()V
    .registers 3

    .line 330
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ExynosDisplayFactory"

    const-string/jumbo v1, "setCalibrationCGC17_DEC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v0, "7"

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_DEC(Ljava/lang/String;)V

    return-void
.end method

.method public final setCalibrationCGC17_ENC(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 301
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCalibrationCGC17_ENC + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x0

    move v2, v0

    :goto_1d
    const/16 v3, 0x11

    if-ge v2, v3, :cond_4b

    :try_start_21
    const-string v3, "cgc17_enc"

    .line 308
    invoke-static {p1, p2, v3, p3, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 310
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2e

    goto :goto_3c

    .line 315
    :cond_2e
    aget-object v3, v3, v0

    mul-int/lit8 v4, p3, 0x11

    add-int/2addr v4, v2

    .line 318
    invoke-virtual {p0, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_IDX(I)V

    .line 319
    invoke-virtual {p0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_ENC(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 311
    :cond_3c
    :goto_3c
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz p1, :cond_46

    const-string/jumbo p1, "xml cgc17_enc not found"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_46} :catch_47

    :cond_46
    return-void

    :catch_47
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    :cond_4b
    iget-boolean p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz p0, :cond_64

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setCalibrationCGC17_ENC - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-void
.end method

.method public final setCalibrationCGC_DITHER(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 368
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "setCalibrationCGC_DITHER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    const-string v0, "cgc_dither"

    const/4 v2, 0x0

    .line 371
    invoke-static {p1, p2, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string/jumbo p0, "xml cgc_dither not found"

    .line 374
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_1c
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_37

    .line 379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml cgc_dither array size wrong: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :cond_37
    aget-object p1, p1, v2

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC_DITHER(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 389
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public final setCalibrationDE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ExynosDisplayFactory"

    const-string/jumbo v1, "setCalibrationDE"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    const-string v1, "de"

    const/4 v2, 0x0

    .line 618
    invoke-static {p1, p2, v1, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    const-string/jumbo p0, "xml de not found"

    .line 621
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 625
    :cond_18
    array-length p2, p1

    const/4 v1, 0x1

    if-ge p2, v1, :cond_33

    .line 626
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml array size wrong: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_33
    aget-object p1, p1, v2

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDE(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 637
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-void
.end method

.method public final setCalibrationDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "degamma"

    .line 397
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "ExynosDisplayFactory"

    const-string/jumbo v2, "setCalibrationDEGAMMA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x0

    .line 401
    :try_start_f
    invoke-static {p1, p2, v0, v1, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    .line 403
    array-length v4, v2

    if-lt v4, v3, :cond_21

    .line 404
    aget-object p1, v2, v1

    .line 405
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_21
    const/16 v2, 0xa

    .line 409
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 411
    array-length v4, v2

    if-lt v4, v3, :cond_4a

    .line 412
    aget-object v2, v2, v1

    .line 413
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 415
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 417
    array-length p2, p1

    if-lt p2, v3, :cond_4a

    .line 418
    aget-object p1, p1, v1

    .line 419
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p0

    .line 425
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final setCalibrationGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "gamma"

    .line 433
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "ExynosDisplayFactory"

    const-string/jumbo v2, "setCalibrationGAMMA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v1, 0x0

    .line 437
    :try_start_f
    invoke-static {p1, p2, v0, v1, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    .line 439
    array-length v4, v2

    if-lt v4, v3, :cond_21

    .line 440
    aget-object p1, v2, v1

    .line 441
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_21
    const/16 v2, 0xa

    .line 445
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 447
    array-length v4, v2

    if-lt v4, v3, :cond_4a

    .line 448
    aget-object v2, v2, v1

    .line 449
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 451
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 453
    array-length p2, p1

    if-lt p2, v3, :cond_4a

    .line 454
    aget-object p1, p1, v1

    .line 455
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p0

    .line 461
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final setCalibrationGAMMA_MATRIX(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 469
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "setCalibrationGAMMA_MATRIX"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    const-string v0, "gamma_matrix"

    const/4 v2, 0x0

    .line 472
    invoke-static {p1, p2, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string/jumbo p0, "xml gamma_matrix not found"

    .line 475
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_1c
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_37

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml gamma_matrix array size wrong: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_37
    aget-object p1, p1, v2

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA_MATRIX(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 490
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public final setCalibrationHSC(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 526
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "setCalibrationHSC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    const-string/jumbo v0, "hsc"

    const/4 v2, 0x0

    .line 529
    invoke-static {p1, p2, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    const-string/jumbo p0, "xml hsc not found"

    .line 532
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 536
    :cond_1d
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_38

    .line 537
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml hsc array size wrong: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 541
    :cond_38
    aget-object p1, p1, v2

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteHSC(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 548
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    return-void
.end method

.method public final setCalibrationHSC48_LCG(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .line 499
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCalibrationHSC48_LCG: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 p3, 0x0

    move v0, p3

    :goto_1d
    const/4 v2, 0x3

    if-ge v0, v2, :cond_44

    :try_start_20
    const-string/jumbo v2, "hsc48_lcg"

    .line 504
    invoke-static {p1, p2, v2, v0, p3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 506
    array-length v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2e

    goto :goto_39

    .line 510
    :cond_2e
    aget-object v2, v2, p3

    .line 513
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteHSC48_IDX(I)V

    .line 514
    invoke-virtual {p0, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteHSC48_LCG(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_39
    :goto_39
    const-string/jumbo p0, "xml hsc48_lcg not found"

    .line 507
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    .line 518
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_44
    return-void
.end method

.method public final setCalibrationMODE_IDX(I)Z
    .registers 2

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteMODE_IDX(I)Z

    move-result p0

    return p0
.end method

.method public final setCalibrationSCL(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 556
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "setCalibrationSCL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    const-string/jumbo v0, "scl"

    const/4 v2, 0x0

    .line 559
    invoke-static {p1, p2, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    const-string/jumbo p0, "xml scl not found"

    .line 562
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 566
    :cond_1d
    array-length p2, p1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_38

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xml scl array size wrong: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 571
    :cond_38
    aget-object p1, p1, v2

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteSCL(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 578
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    return-void
.end method

.method public setExynosDisplayATC(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    return-void
.end method

.method public final setSysfsPath()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 289
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v0, :cond_a9

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSysfsPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExynosDisplayFactory"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return-void
.end method

.method public startCountDownTimer(Ljava/lang/String;)V
    .registers 11

    if-nez p1, :cond_8

    .line 819
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_COEF_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 821
    :cond_8
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 823
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 826
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    const-string v1, "ExynosDisplayFactory"

    if-eqz v0, :cond_2c

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCountDownTimer: xml_path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v0, 0x0

    move v2, v0

    :goto_2e
    const/4 v3, 0x2

    if-ge v2, v3, :cond_42

    move v3, v0

    :goto_32
    const/16 v4, 0x14

    if-ge v3, v4, :cond_3f

    .line 835
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v4, v4, v2

    aput v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_42
    :try_start_42
    const-string/jumbo v2, "version"

    .line 838
    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_206

    .line 840
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v4, v5, :cond_51

    goto/16 :goto_206

    .line 844
    :cond_51
    iget-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v4, :cond_6c

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xml version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    move v2, v0

    :goto_6d
    if-ge v2, v3, :cond_211

    .line 849
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 850
    iget-boolean v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v6, :cond_8c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    const-string v6, "aps"

    .line 852
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 853
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_aa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aps: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    if-lez v6, :cond_b2

    .line 855
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v6, v6, v2

    aput v5, v6, v0

    :cond_b2
    const-string v6, "degamma"

    .line 857
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 858
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_d0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "degamma: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    if-lez v6, :cond_d8

    .line 860
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v6, v6, v2

    aput v5, v6, v5

    :cond_d8
    const-string v6, "gamma"

    .line 862
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 863
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_f6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gamma: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    if-lez v6, :cond_fe

    .line 865
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v6, v6, v2

    aput v5, v6, v3

    :cond_fe
    const-string v6, "gamma_matrix"

    .line 867
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 868
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_11c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gamma_matrix: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    if-lez v6, :cond_125

    .line 870
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x3

    aput v5, v6, v7

    :cond_125
    const-string/jumbo v6, "hsc"

    .line 872
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 873
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_145

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hsc: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_145
    const/4 v7, 0x4

    :goto_146
    const/4 v8, 0x5

    if-gt v7, v8, :cond_154

    if-lez v6, :cond_151

    .line 876
    iget-object v8, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v8, v8, v2

    aput v5, v8, v7

    :cond_151
    add-int/lit8 v7, v7, 0x1

    goto :goto_146

    :cond_154
    const-string/jumbo v6, "scl"

    .line 879
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 880
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_174

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scl: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_174
    if-lez v6, :cond_17d

    .line 882
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x6

    aput v5, v6, v7

    :cond_17d
    const-string v6, "cgc17_con"

    .line 884
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 885
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_19b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cgc17_con: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19b
    const/4 v7, 0x7

    :goto_19c
    const/16 v8, 0xb

    if-gt v7, v8, :cond_1ab

    if-lez v6, :cond_1a8

    .line 888
    iget-object v8, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v8, v8, v2

    aput v5, v8, v7

    :cond_1a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_19c

    :cond_1ab
    const-string v6, "cgc_dither"

    .line 891
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 892
    iget-boolean v7, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    if-eqz v7, :cond_1c9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cgc_dither: enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c9
    if-lez v6, :cond_1d3

    .line 894
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v6, v6, v2

    const/16 v7, 0xc

    aput v5, v6, v7

    :cond_1d3
    const-string v6, "de"

    .line 896
    invoke-virtual {p0, p1, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1e3

    .line 898
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v6, v6, v2

    const/16 v7, 0xd

    aput v5, v6, v7

    .line 900
    :cond_1e3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " enable "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6d

    :cond_206
    :goto_206
    const-string/jumbo p1, "xml version not found"

    .line 841
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_20c} :catch_20d

    return-void

    :catch_20d
    move-exception p1

    .line 905
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 908
    :cond_211
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_21f

    .line 909
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 910
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 911
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_21f
    return-void
.end method

.method public final sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HDR_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 151
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_SYSFS_PATH:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HDR_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    return-object p1
.end method

.method public final sysfsWriteAPS(Ljava/lang/String;)V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "0"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 255
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    return-void
.end method

.method public final sysfsWriteCGC17_CON(Ljava/lang/String;)V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "0"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 184
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    return-void
.end method

.method public final sysfsWriteCGC17_DEC(Ljava/lang/String;)V
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sysfsWriteCGC17_ENC(Ljava/lang/String;)V
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sysfsWriteCGC17_IDX(I)V
    .registers 4

    .line 163
    div-int/lit8 v0, p1, 0x11

    .line 164
    rem-int/lit8 p1, p1, 0x11

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sysfsWriteCGC_DITHER(Ljava/lang/String;)V
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sysfsWriteDE(Ljava/lang/String;)V
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "0"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 264
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    return-void
.end method

.method public final sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "0"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_1c

    .line 197
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1c
    return-void
.end method

.method public final sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "0"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_1c

    .line 207
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1c
    return-void
.end method

.method public final sysfsWriteGAMMA_MATRIX(Ljava/lang/String;)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "0"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 217
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    return-void
.end method

.method public final sysfsWriteHSC(Ljava/lang/String;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "0"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 237
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    return-void
.end method

.method public final sysfsWriteHSC48_IDX(I)V
    .registers 2

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sysfsWriteHSC48_LCG(Ljava/lang/String;)V
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sysfsWriteMODE_IDX(I)Z
    .registers 2

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final sysfsWriteSCL(Ljava/lang/String;)V
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "0"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 246
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_15
    return-void
.end method
