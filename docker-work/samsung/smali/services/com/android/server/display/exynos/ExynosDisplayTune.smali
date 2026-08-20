.class public Lcom/android/server/display/exynos/ExynosDisplayTune;
.super Ljava/lang/Object;
.source "ExynosDisplayTune.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExynosDisplayTune"


# instance fields
.field public CALIB_DATA_XML_PATH:Ljava/lang/String;

.field public CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public DEGAMMA_SYSFS_PATH:Ljava/lang/String;

.field public DE_SYSFS_PATH:Ljava/lang/String;

.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public HSC_SYSFS_PATH:Ljava/lang/String;

.field public SCL_SYSFS_PATH:Ljava/lang/String;

.field public mDelayMs:J

.field public mPeriodMs:J

.field public mTuneTimer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$mgetCalibXMLPath(Lcom/android/server/display/exynos/ExynosDisplayTune;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getCalibXMLPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEBUG:Z

    const-string v0, "/sys/class/dqe/dqe/gamma_ext"

    .line 32
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma"

    .line 33
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma_ext"

    .line 34
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma"

    .line 35
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc"

    .line 36
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_idx"

    .line 38
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_enc"

    .line 39
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_dec"

    .line 40
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_con"

    .line 41
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma_matrix"

    .line 43
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc_dither"

    .line 44
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_idx"

    .line 46
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 47
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/scl"

    .line 48
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->SCL_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/de"

    .line 49
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DE_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "0"

    .line 51
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    const-string v0, "1"

    .line 52
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 55
    iput-wide v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    .line 56
    iput-wide v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    const-string v0, "/data/dqe/calib_data.xml"

    .line 58
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enableTuneDQE(Z)V
    .registers 4

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTuneDQE: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayTune"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_22

    .line 378
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getCalibXMLPath()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tune"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public enableTuneTimer(Z)V
    .registers 3

    if-eqz p1, :cond_6

    .line 85
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->startTuneTimer()V

    goto :goto_9

    .line 88
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->stopTuneTimer()V

    .line 90
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableTuneTimer: enable="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExynosDisplayTune"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getCalibXMLPath()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 p0, 0x0

    .line 125
    :try_start_1
    invoke-static {p1, p2, p3, p0, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 126
    array-length v2, v0

    if-ge v2, v1, :cond_17

    :cond_b
    const/16 v0, 0xa

    .line 127
    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 128
    array-length p1, v0

    if-ge p1, v1, :cond_17

    goto :goto_26

    .line 132
    :cond_17
    aget-object p1, v0, p0

    const-string p2, "\\s*,\\s*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 133
    aget-object p1, p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_27

    goto :goto_2b

    :cond_26
    :goto_26
    return p0

    :catch_27
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    return p0
.end method

.method public final getXMLVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    :try_start_1
    const-string/jumbo v0, "version"

    .line 102
    invoke-static {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_31

    const-string v0, "ExynosDisplayTune"

    if-eqz p1, :cond_2a

    .line 104
    :try_start_c
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_11

    goto :goto_2a

    :cond_11
    const/4 v1, 0x0

    .line 109
    aget-object p0, p1, v1

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xml version: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_2a
    :goto_2a
    const-string/jumbo p1, "xml version not found"

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    return-object p0
.end method

.method public setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "de"

    const-string v4, "cgc17_con"

    const-string/jumbo v5, "scl"

    const-string/jumbo v6, "hsc"

    const-string v7, "gamma_matrix"

    const-string v8, "cgc_dither"

    const-string v9, "gamma"

    const-string v10, "degamma"

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1f

    return-void

    .line 160
    :cond_1f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getXMLVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_26

    return-void

    :cond_26
    const-string v11, "ExynosDisplayTune"

    const-string/jumbo v12, "setCalibrationDQE+"

    .line 163
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x5a

    new-array v13, v12, [I

    const/4 v14, 0x0

    move v15, v14

    :goto_34
    if-ge v15, v12, :cond_3b

    .line 167
    aput v14, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_34

    .line 174
    :cond_3b
    :try_start_3b
    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 175
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cgc_dither: enable = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    if-lez v15, :cond_58

    aput v12, v13, v12

    .line 179
    :cond_58
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 180
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "degamma: enable = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    if-lez v14, :cond_76

    const/4 v14, 0x1

    aput v14, v13, v12

    .line 184
    :cond_76
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 185
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gamma: enable = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x3

    if-lez v14, :cond_94

    const/4 v14, 0x1

    aput v14, v13, v12

    .line 189
    :cond_94
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 190
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gamma_matrix: enable = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x4

    if-lez v14, :cond_b2

    const/4 v14, 0x1

    aput v14, v13, v12

    .line 194
    :cond_b2
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 195
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "hsc: enable = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x5

    :goto_cc
    const/16 v12, 0x8

    if-gt v15, v12, :cond_d8

    if-lez v14, :cond_d5

    const/4 v12, 0x1

    .line 198
    aput v12, v13, v15

    :cond_d5
    add-int/lit8 v15, v15, 0x1

    goto :goto_cc

    .line 201
    :cond_d8
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 202
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scl: enable = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v14, :cond_f8

    const/16 v12, 0x9

    const/4 v14, 0x1

    aput v14, v13, v12

    .line 206
    :cond_f8
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 207
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cgc17_con: enable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0xa

    :goto_112
    const/16 v14, 0x3e

    if-gt v15, v14, :cond_11e

    if-lez v12, :cond_11b

    const/4 v14, 0x1

    .line 210
    aput v14, v13, v15

    :cond_11b
    add-int/lit8 v15, v15, 0x1

    goto :goto_112

    .line 213
    :cond_11e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayTune;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 214
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "de: enable = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x3f

    if-lez v12, :cond_13d

    const/4 v12, 0x1

    aput v12, v13, v14

    :cond_13d
    const/4 v12, 0x0

    :goto_13e
    const/16 v15, 0x5a

    if-ge v12, v15, :cond_32c

    .line 219
    aget v15, v13, v12

    if-gtz v12, :cond_151

    move-object/from16 v18, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v13

    move v8, v14

    const/4 v5, 0x1

    :goto_14e
    const/4 v13, 0x0

    goto/16 :goto_31d

    :cond_151
    const/4 v14, 0x1

    if-gt v12, v14, :cond_181

    const/4 v15, 0x0

    .line 225
    invoke-static {v1, v2, v8, v15, v15}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_175

    .line 227
    array-length v15, v14

    move-object/from16 v16, v8

    const/4 v8, 0x1

    if-lt v15, v8, :cond_16e

    const/4 v8, 0x0

    .line 228
    aget-object v14, v14, v8

    .line 229
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v18, v5

    move-object/from16 v17, v13

    goto :goto_1c6

    :cond_16e
    move-object/from16 v18, v5

    move v5, v8

    move-object/from16 v17, v13

    goto/16 :goto_253

    :cond_175
    move-object/from16 v16, v8

    move-object/from16 v18, v5

    move-object/from16 v17, v13

    move v13, v15

    :goto_17c
    const/4 v5, 0x1

    :goto_17d
    const/16 v8, 0x3f

    goto/16 :goto_31d

    :cond_181
    move-object/from16 v16, v8

    const/4 v8, 0x2

    if-gt v12, v8, :cond_1c9

    const/4 v14, 0x0

    .line 236
    invoke-static {v1, v2, v10, v14, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_19b

    .line 238
    array-length v8, v15

    move-object/from16 v17, v13

    const/4 v13, 0x1

    if-lt v8, v13, :cond_19d

    .line 239
    aget-object v8, v15, v14

    .line 240
    iget-object v13, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c4

    :cond_19b
    move-object/from16 v17, v13

    :cond_19d
    const/16 v8, 0xa

    const/4 v13, 0x0

    .line 244
    invoke-static {v1, v2, v10, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c4

    .line 246
    array-length v8, v14

    const/4 v15, 0x1

    if-lt v8, v15, :cond_1c4

    .line 247
    aget-object v8, v14, v13

    .line 248
    iget-object v14, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 250
    invoke-static {v1, v2, v10, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c4

    .line 252
    array-length v8, v14

    const/4 v15, 0x1

    if-lt v8, v15, :cond_1c4

    .line 253
    aget-object v8, v14, v13

    .line 254
    iget-object v13, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {v0, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c4
    :goto_1c4
    move-object/from16 v18, v5

    :cond_1c6
    :goto_1c6
    const/4 v5, 0x1

    goto/16 :goto_253

    :cond_1c9
    move-object/from16 v17, v13

    const/4 v8, 0x3

    if-gt v12, v8, :cond_209

    const/4 v13, 0x0

    .line 262
    invoke-static {v1, v2, v9, v13, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1e1

    .line 264
    array-length v15, v14

    const/4 v8, 0x1

    if-lt v15, v8, :cond_1e1

    .line 265
    aget-object v8, v14, v13

    .line 266
    iget-object v13, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c4

    :cond_1e1
    const/16 v8, 0xa

    const/4 v13, 0x0

    .line 270
    invoke-static {v1, v2, v9, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c4

    .line 272
    array-length v15, v14

    const/4 v8, 0x1

    if-lt v15, v8, :cond_1c4

    .line 273
    aget-object v8, v14, v13

    .line 274
    iget-object v14, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 276
    invoke-static {v1, v2, v9, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c4

    .line 278
    array-length v15, v14

    const/4 v8, 0x1

    if-lt v15, v8, :cond_1c4

    .line 279
    aget-object v8, v14, v13

    .line 280
    iget-object v13, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {v0, v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayTune;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c4

    :cond_209
    const/4 v8, 0x4

    if-gt v12, v8, :cond_228

    const/4 v13, 0x0

    .line 286
    invoke-static {v1, v2, v7, v13, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_224

    .line 288
    array-length v15, v14

    const/4 v8, 0x1

    if-lt v15, v8, :cond_21f

    .line 289
    aget-object v8, v14, v13

    .line 290
    iget-object v13, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1c4

    :cond_21f
    move-object/from16 v18, v5

    move v5, v8

    goto/16 :goto_17d

    :cond_224
    move-object/from16 v18, v5

    goto/16 :goto_17c

    :cond_228
    const/4 v8, 0x5

    if-gt v12, v8, :cond_257

    const/4 v13, 0x1

    if-ne v15, v13, :cond_250

    add-int/lit8 v14, v12, -0x5

    const-string/jumbo v15, "hsc48_lcg"

    const/4 v8, 0x0

    .line 296
    invoke-static {v1, v2, v15, v14, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1c4

    .line 298
    array-length v8, v15

    if-lt v8, v13, :cond_1c4

    .line 299
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    .line 300
    aget-object v14, v15, v13

    .line 301
    iget-object v13, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1c4

    :cond_250
    move-object/from16 v18, v5

    move v5, v13

    :cond_253
    :goto_253
    const/16 v8, 0x3f

    goto/16 :goto_14e

    :cond_257
    const/4 v8, 0x6

    if-gt v12, v8, :cond_279

    const/4 v8, 0x0

    .line 307
    invoke-static {v1, v2, v6, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_274

    .line 309
    array-length v14, v13

    const/4 v15, 0x1

    if-lt v14, v15, :cond_26e

    .line 310
    aget-object v13, v13, v8

    .line 311
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1c4

    :cond_26e
    move-object/from16 v18, v5

    :cond_270
    move v13, v8

    move v5, v15

    goto/16 :goto_17d

    :cond_274
    move-object/from16 v18, v5

    :cond_276
    move v13, v8

    goto/16 :goto_17c

    :cond_279
    const/4 v8, 0x7

    if-gt v12, v8, :cond_290

    const/4 v8, 0x0

    .line 315
    invoke-static {v1, v2, v5, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_274

    .line 317
    array-length v14, v13

    const/4 v15, 0x1

    if-lt v14, v15, :cond_26e

    .line 318
    aget-object v13, v13, v8

    .line 319
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->SCL_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1c4

    :cond_290
    const/16 v8, 0x3c

    if-gt v12, v8, :cond_2db

    const/4 v8, 0x1

    if-ne v15, v8, :cond_2d6

    add-int/lit8 v8, v12, -0xa

    .line 325
    div-int/lit8 v13, v8, 0x11

    .line 326
    rem-int/lit8 v8, v8, 0x11

    const-string v14, "cgc17_enc"

    .line 328
    invoke-static {v1, v2, v14, v13, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c4

    .line 330
    array-length v15, v14

    move-object/from16 v18, v5

    const/4 v5, 0x1

    if-lt v15, v5, :cond_1c6

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 332
    aget-object v13, v14, v8

    .line 334
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v5, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1c6

    :cond_2d6
    move-object/from16 v18, v5

    move v5, v8

    goto/16 :goto_253

    :cond_2db
    move-object/from16 v18, v5

    const/16 v5, 0x3d

    if-gt v12, v5, :cond_2ed

    const/4 v5, 0x1

    if-ne v15, v5, :cond_253

    .line 341
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v8, "7"

    invoke-static {v5, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1c6

    :cond_2ed
    const/16 v5, 0x3e

    if-gt v12, v5, :cond_305

    const/4 v8, 0x0

    .line 345
    invoke-static {v1, v2, v4, v8, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_276

    .line 347
    array-length v14, v13

    const/4 v15, 0x1

    if-lt v14, v15, :cond_270

    .line 348
    aget-object v13, v13, v8

    .line 349
    iget-object v8, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1c6

    :cond_305
    const/16 v8, 0x3f

    if-gt v12, v8, :cond_32c

    const/4 v13, 0x0

    .line 353
    invoke-static {v1, v2, v3, v13, v13}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_31c

    .line 355
    array-length v15, v14

    const/4 v5, 0x1

    if-lt v15, v5, :cond_31d

    .line 356
    aget-object v14, v14, v13

    .line 357
    iget-object v15, v0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v15, v14}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_31b} :catch_328

    goto :goto_31d

    :cond_31c
    const/4 v5, 0x1

    :cond_31d
    :goto_31d
    add-int/lit8 v12, v12, 0x1

    move v14, v8

    move-object/from16 v8, v16

    move-object/from16 v13, v17

    move-object/from16 v5, v18

    goto/16 :goto_13e

    :catch_328
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    :cond_32c
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    .line 369
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    const-string/jumbo v0, "setCalibrationDQE-"

    .line 371
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startTuneTimer()V
    .registers 8

    .line 65
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    if-nez v0, :cond_17

    .line 66
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    .line 67
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplayTune$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplayTune$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V

    iget-wide v3, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    iget-wide v5, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_17
    return-void
.end method

.method public final stopTuneTimer()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mTuneTimer:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method public final sysfsWriteDegamma(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 151
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    return-void
.end method

.method public final sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 144
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    return-void
.end method
