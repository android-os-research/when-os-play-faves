.class public Lcom/android/server/display/exynos/ExynosDisplayColor;
.super Ljava/lang/Object;
.source "ExynosDisplayColor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExynosDisplayColor"


# instance fields
.field public BYPASS_XML_FILE_PATH:Ljava/lang/String;

.field public CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public CGC_SYSFS_PATH:Ljava/lang/String;

.field public COLORMODE_XML_FILE_PATH:Ljava/lang/String;

.field public COLORTEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

.field public COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public DEGAMMA_SYSFS_PATH:Ljava/lang/String;

.field public DE_SYSFS_PATH:Ljava/lang/String;

.field public EXTENSION_OFF:Ljava/lang/String;

.field public EXTENSION_ON:Ljava/lang/String;

.field public EYETEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

.field public EYETEMP_XML_FILE_PATH:Ljava/lang/String;

.field public GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public HSC_SYSFS_PATH:Ljava/lang/String;

.field public HW_VER_SYSFS_PATH:Ljava/lang/String;

.field public RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

.field public RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

.field public SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

.field public SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

.field public WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

.field public bgain_array:[Ljava/lang/String;

.field public bgain_ext_array:[Ljava/lang/String;

.field public cgc_dither_array:[Ljava/lang/String;

.field public colortemp_array:[Ljava/lang/String;

.field public colortemp_ext_array:[Ljava/lang/String;

.field public eyetemp_array:[Ljava/lang/String;

.field public eyetemp_ext_array:[Ljava/lang/String;

.field public gamma_bypass_array:[Ljava/lang/String;

.field public gamma_ext_bypass_array:[Ljava/lang/String;

.field public ggain_array:[Ljava/lang/String;

.field public ggain_ext_array:[Ljava/lang/String;

.field public hsc_bypass_array:[Ljava/lang/String;

.field public hw_ver:Ljava/lang/String;

.field public mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public rgain_array:[Ljava/lang/String;

.field public rgain_ext_array:[Ljava/lang/String;

.field public rgb_gain:[F

.field public sharpness_array:[Ljava/lang/String;

.field public skincolor_array:[Ljava/lang/String;

.field public whitepoint_array:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$g26nmJTVvsY82aOhhuStG77-NmI(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->lambda$setRgbGain$0(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEBUG:Z

    const-string v0, "/sys/class/dqe/dqe/dqe_ver"

    .line 31
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma_ext"

    .line 33
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma"

    .line 34
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma_ext"

    .line 35
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/degamma"

    .line 36
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc"

    .line 37
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc"

    .line 39
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_idx"

    .line 40
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_enc"

    .line 41
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_dec"

    .line 42
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc17_con"

    .line 43
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/gamma_matrix"

    .line 45
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/cgc_dither"

    .line 46
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_idx"

    .line 48
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 49
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/dqe/dqe/de"

    .line 51
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_colortemp.xml"

    .line 53
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_colortemp_ext.xml"

    .line 54
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_eyetemp.xml"

    .line 55
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_eyetemp_ext.xml"

    .line 56
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_bypass.xml"

    .line 57
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_rgbgain.xml"

    .line 58
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_rgbgain_ext.xml"

    .line 59
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_skincolor.xml"

    .line 60
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_whitepoint.xml"

    .line 61
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_sharpness.xml"

    .line 62
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "/vendor/etc/dqe/calib_data_colormode0.xml"

    .line 64
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "0"

    .line 66
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    const-string v0, "1"

    .line 67
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 88
    fill-array-data v1, :array_b4

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgb_gain:[F

    .line 90
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->checkHWVersion()V

    return-void

    :array_b4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$setRgbGain$0(I)Z
    .registers 3

    const-string v0, ","

    const/4 v1, 0x0

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne p0, v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method


# virtual methods
.method public final checkHWVersion()V
    .registers 3

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_SYSFS_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 124
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 125
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hw_ver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExynosDisplayColor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public final existFile(Ljava/lang/String;)Z
    .registers 3

    .line 104
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    return v0

    .line 111
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public getColorEnhancementMode()Ljava/lang/String;
    .registers 1

    const-string p0, "Off,NATIVE,DISPLAY_P3,SRGB"

    return-object p0
.end method

.method public final getColorModeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "bypass"

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    .line 529
    :cond_9
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "subxml"

    .line 530
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 531
    array-length p0, p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1e

    goto :goto_22

    :cond_1e
    const-string/jumbo p0, "tune"
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    return-object p0

    :cond_22
    :goto_22
    return-object p1

    :catch_23
    move-exception p0

    .line 537
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public final getColorModePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ".xml"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "bypass"

    .line 502
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 503
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    return-object p0

    .line 505
    :cond_e
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_53

    :try_start_14
    const-string/jumbo v3, "subxml"

    .line 506
    invoke-static {v2, p1, v1, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 507
    array-length v1, p1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_22

    goto :goto_4f

    .line 510
    :cond_22
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 511
    aget-object p1, p1, v3

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4e} :catch_50

    goto :goto_58

    :cond_4f
    :goto_4f
    return-object v2

    :catch_50
    move-exception p0

    move-object v1, v2

    goto :goto_54

    :catch_53
    move-exception p0

    .line 515
    :goto_54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v1

    :goto_58
    return-object p0
.end method

.method public final getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    .line 790
    :try_start_1
    invoke-static {p1, p2, p3, p0, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    return p0

    .line 795
    :cond_8
    array-length p2, p1

    const/4 p3, 0x1

    if-ge p2, p3, :cond_d

    return p0

    .line 798
    :cond_d
    aget-object p1, p1, p0

    const-string p2, "\\s*,\\s*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 799
    aget-object p1, p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 802
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return p0
.end method

.method public getRgbGain()[F
    .registers 1

    .line 759
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgb_gain:[F

    return-object p0
.end method

.method public final getXMLVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    :try_start_1
    const-string/jumbo v0, "version"

    .line 767
    invoke-static {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_31

    const-string v0, "ExynosDisplayColor"

    if-eqz p1, :cond_2a

    .line 769
    :try_start_c
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_11

    goto :goto_2a

    :cond_11
    const/4 v1, 0x0

    .line 774
    aget-object p0, p1, v1

    .line 775
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

    .line 770
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p1

    .line 778
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    return-object p0
.end method

.method public setColorEnhancement(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    :try_start_9
    const-string p1, "bypass"

    goto :goto_16

    :catch_c
    move-exception p0

    goto :goto_1a

    :cond_e
    const-string p1, "SRGB"

    goto :goto_16

    :cond_11
    const-string p1, "DISPLAY_P3"

    goto :goto_16

    :cond_14
    const-string p1, "NATIVE"

    .line 563
    :goto_16
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_c

    goto :goto_1d

    .line 566
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public setColorMode(I)V
    .registers 2

    return-void
.end method

.method public setColorTempOn(I)V
    .registers 5

    const-string v0, "gamma"

    const-string v1, "colortemp"

    if-eqz p1, :cond_17

    .line 146
    :try_start_6
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    goto :goto_1c

    :cond_17
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    .line 152
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaOn(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    return-void
.end method

.method public setColorTempValue(I)V
    .registers 4

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_array:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_ext_array:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaValue([Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public setDisplayColorFeature(IILjava/lang/String;)V
    .registers 6

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayColorFeature(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayColor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2e

    if-nez p2, :cond_2e

    if-eqz p3, :cond_2e

    .line 835
    invoke-virtual {p0, p3}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setProductXMLColorModes(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public setEdgeSharpnessOn(I)V
    .registers 4

    const-string v0, "de"

    if-eqz p1, :cond_10

    .line 471
    :try_start_4
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "sharpness"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    goto :goto_1a

    .line 473
    :cond_10
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "bypass"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 475
    :goto_1a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    if-eqz p1, :cond_26

    array-length v0, p1

    if-nez v0, :cond_22

    goto :goto_26

    :cond_22
    const/4 v0, 0x0

    .line 478
    aget-object p1, p1, v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_27

    goto :goto_2c

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception p1

    .line 482
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2c
    if-eqz p1, :cond_3b

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setEdgeSharpnessOn()"

    .line 486
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3b
    return-void
.end method

.method public setEdgeSharpnessValue(I)V
    .registers 4

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_f

    .line 450
    :cond_8
    array-length v1, v0

    if-lt p1, v1, :cond_c

    return-void

    .line 453
    :cond_c
    aget-object p1, v0, p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    goto :goto_15

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception p1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_15
    if-eqz p1, :cond_24

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setEdgeSharpnessValue()"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_24
    return-void
.end method

.method public setExynosDisplayTune(Lcom/android/server/display/exynos/ExynosDisplayTune;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    return-void
.end method

.method public setEyeTempOn(I)V
    .registers 5

    const-string v0, "gamma"

    const-string v1, "eyetemp"

    if-eqz p1, :cond_17

    .line 269
    :try_start_6
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 270
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    goto :goto_1c

    :cond_17
    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 275
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaOn(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    return-void
.end method

.method public setEyeTempValue(I)V
    .registers 4

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_ext_array:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaValue([Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public final setGammaOn(I)V
    .registers 8

    const-string p1, "gamma"

    const/4 v0, 0x0

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_64

    const-string v2, "bypass"

    const/4 v3, 0x0

    if-nez v1, :cond_2a

    .line 219
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    if-nez v1, :cond_2a

    .line 222
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v1, v2, p1, v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-static {v1, v2, p1, v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 226
    :cond_2a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    if-eqz p1, :cond_63

    array-length p1, p1

    if-nez p1, :cond_32

    goto :goto_63

    .line 229
    :cond_32
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez p1, :cond_40

    .line 230
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "cgc_dither"

    invoke-static {p1, v2, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 232
    :cond_40
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    aget-object p1, p1, v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_44} :catch_64

    .line 233
    :try_start_44
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 234
    aget-object v1, v1, v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_5d

    goto :goto_4c

    :cond_4b
    move-object v1, v0

    .line 236
    :goto_4c
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-eqz v2, :cond_6c

    array-length v4, v2

    if-nez v4, :cond_54

    goto :goto_6c

    .line 239
    :cond_54
    aget-object v0, v2, v3
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_56} :catch_57

    goto :goto_6c

    :catch_57
    move-exception v2

    move-object v5, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v5

    goto :goto_67

    :catch_5d
    move-exception v1

    move-object v2, v0

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_67

    :cond_63
    :goto_63
    return-void

    :catch_64
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 243
    :goto_67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    move-object v1, v2

    :cond_6c
    :goto_6c
    if-eqz p1, :cond_87

    const-string v2, "ExynosDisplayColor"

    const-string/jumbo v3, "setGammaOn()"

    .line 247
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7d

    .line 249
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    :cond_7d
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    return-void
.end method

.method public final setGammaValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_6

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setGammaValue()"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setGammaValue([Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 6

    if-eqz p1, :cond_2e

    const/4 v0, 0x0

    .line 170
    :try_start_3
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_2e

    .line 172
    :cond_7
    array-length v1, p1

    if-lt p3, v1, :cond_b

    return-void

    .line 175
    :cond_b
    aget-object p1, p1, p3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_15

    if-eqz p2, :cond_1a

    .line 177
    :try_start_f
    aget-object p2, p2, p3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_11} :catch_13

    move-object v0, p2

    goto :goto_1a

    :catch_13
    move-exception p2

    goto :goto_17

    :catch_15
    move-exception p2

    move-object p1, v0

    .line 181
    :goto_17
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_1a
    if-eqz p1, :cond_2e

    const-string p2, "ExynosDisplayColor"

    const-string/jumbo p3, "setGammaValue()"

    .line 185
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setHsvGainOn(I)V
    .registers 4

    .line 425
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-nez p1, :cond_11

    .line 426
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v0, "bypass"

    const-string/jumbo v1, "hsc"

    invoke-static {p1, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    .line 428
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-eqz p1, :cond_1d

    array-length v0, p1

    if-nez v0, :cond_19

    goto :goto_1d

    :cond_19
    const/4 v0, 0x0

    .line 431
    aget-object p1, p1, v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    goto :goto_23

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception p1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_23
    if-eqz p1, :cond_32

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setHsvGainOn()"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_32
    return-void
.end method

.method public setHsvGainValue(III)V
    .registers 19

    move-object v1, p0

    const-string v0, ","

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 366
    :try_start_9
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    if-eqz v4, :cond_10d

    array-length v5, v4

    if-nez v5, :cond_12

    goto/16 :goto_10d

    :cond_12
    const/4 v5, 0x0

    .line 369
    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 371
    iget-object v6, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0xff

    const/4 v13, 0x1

    if-nez v6, :cond_97

    .line 372
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    .line 373
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    .line 374
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    add-int/lit8 v6, p2, -0x7f

    .line 375
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v6, p1, -0x7f

    .line 376
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/16 v6, 0xe

    add-int/lit8 v7, p3, -0x7f

    .line 377
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x92

    .line 379
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x93

    .line 380
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x94

    .line 381
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x95

    .line 382
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x96

    .line 383
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x97

    .line 384
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x98

    .line 385
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x99

    .line 386
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    goto :goto_e1

    :cond_97
    const/16 v6, 0x8

    .line 388
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v6

    add-int/lit8 v6, p1, -0x7f

    .line 389
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    .line 390
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    add-int/lit8 v6, p2, -0x7f

    .line 391
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    .line 392
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v6, p3, -0x7f

    .line 393
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/16 v6, 0x39

    move v7, v6

    :goto_c6
    const/16 v8, 0x4a

    if-gt v7, v8, :cond_d3

    .line 396
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c6

    .line 398
    :cond_d3
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x42

    .line 399
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 402
    :goto_e1
    array-length v6, v4

    if-ge v5, v6, :cond_102

    .line 403
    array-length v6, v4

    sub-int/2addr v6, v13

    if-ge v5, v6, :cond_fa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_fc

    :cond_fa
    aget-object v6, v4, v5

    .line 404
    :goto_fc
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 407
    :cond_102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_112

    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10c} :catch_10e

    goto :goto_112

    :cond_10d
    :goto_10d
    return-void

    :catch_10e
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_112
    :goto_112
    if-eqz v3, :cond_121

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v2, "setHsvGainValue()"

    .line 416
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_121
    return-void
.end method

.method public final setProductXMLColorModes(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 828
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setXMLColorModesImpl(Ljava/lang/String;)V

    return-void
.end method

.method public setRgbGain(FFF)V
    .registers 22

    move-object/from16 v1, p0

    const-string v2, "ExynosDisplayColor"

    .line 684
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgb_gain:[F

    const/4 v3, 0x0

    aput p1, v0, v3

    const/4 v4, 0x1

    .line 685
    aput p2, v0, v4

    const/4 v4, 0x2

    .line 686
    aput p3, v0, v4

    const/high16 v4, 0x437f0000    # 255.0f

    .line 692
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    iget-object v6, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v7, "rgbgain"

    const-string/jumbo v8, "red"

    invoke-static {v6, v7, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    const/16 v7, 0x41

    if-eqz v6, :cond_5c

    .line 696
    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5c

    .line 697
    iget-object v6, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v6

    new-instance v8, Lcom/android/server/display/exynos/ExynosDisplayColor$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/display/exynos/ExynosDisplayColor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v8}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v8

    long-to-int v6, v8

    .line 698
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setRgbGain(): size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :cond_5c
    move v6, v7

    :goto_5d
    const/16 v8, 0x42

    if-eq v6, v8, :cond_64

    if-eq v6, v7, :cond_64

    goto :goto_65

    :cond_64
    move v7, v6

    :goto_65
    mul-int/lit8 v6, v7, 0x3

    .line 707
    new-array v9, v6, [I

    .line 708
    new-array v10, v6, [Ljava/lang/String;

    if-ne v7, v8, :cond_c7

    move v7, v3

    :goto_6e
    const/16 v8, 0x21

    if-ge v7, v8, :cond_b2

    mul-int/lit8 v8, v7, 0x8

    .line 712
    aput v8, v9, v7

    add-int/lit8 v11, v7, 0x21

    mul-float v12, p1, v4

    float-to-double v12, v12

    const-wide/high16 v14, 0x4040000000000000L    # 32.0

    div-double/2addr v12, v14

    move/from16 v16, v6

    int-to-double v5, v7

    mul-double/2addr v12, v5

    .line 713
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    aput v12, v9, v11

    add-int/lit8 v11, v7, 0x42

    .line 714
    aput v8, v9, v11

    add-int/lit8 v11, v7, 0x63

    mul-float v12, p2, v4

    float-to-double v12, v12

    div-double/2addr v12, v14

    mul-double/2addr v12, v5

    .line 715
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    aput v12, v9, v11

    add-int/lit16 v11, v7, 0x84

    .line 716
    aput v8, v9, v11

    add-int/lit16 v8, v7, 0xa5

    mul-float v11, p3, v4

    float-to-double v11, v11

    div-double/2addr v11, v14

    mul-double/2addr v11, v5

    .line 717
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v9, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v16

    goto :goto_6e

    :cond_b2
    move/from16 v16, v6

    const/16 v5, 0x20

    move v7, v3

    :goto_b7
    if-ge v7, v6, :cond_fc

    add-int v8, v5, v7

    .line 721
    aget v11, v9, v8

    add-int/lit8 v12, v8, -0x1

    aget v12, v9, v12

    sub-int/2addr v11, v12

    aput v11, v9, v8

    add-int/lit8 v7, v7, 0x21

    goto :goto_b7

    :cond_c7
    move v5, v3

    :goto_c8
    if-ge v5, v7, :cond_fc

    mul-float v8, p1, v4

    float-to-double v11, v8

    const-wide/high16 v13, 0x4050000000000000L    # 64.0

    div-double/2addr v11, v13

    int-to-double v13, v5

    mul-double/2addr v11, v13

    .line 725
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v8, v11

    aput v8, v9, v5

    add-int/lit8 v8, v5, 0x41

    mul-float v11, p2, v4

    float-to-double v11, v11

    const-wide/high16 v16, 0x4050000000000000L    # 64.0

    div-double v11, v11, v16

    mul-double/2addr v11, v13

    .line 726
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    aput v11, v9, v8

    add-int/lit16 v8, v5, 0x82

    mul-float v11, p3, v4

    float-to-double v11, v11

    div-double v11, v11, v16

    mul-double/2addr v11, v13

    .line 727
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    aput v11, v9, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    :cond_fc
    move v5, v3

    :goto_fd
    if-ge v5, v6, :cond_10c

    .line 732
    aget v7, v9, v5

    mul-int/lit8 v7, v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_fd

    .line 734
    :cond_10c
    iget-object v5, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    if-eqz v5, :cond_115

    const-string v5, "1,"

    .line 735
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_115
    :goto_115
    if-ge v3, v6, :cond_137

    add-int/lit8 v5, v6, -0x1

    if-ge v3, v5, :cond_12f

    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v10, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_131

    :cond_12f
    aget-object v5, v10, v3

    .line 740
    :goto_131
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_115

    .line 743
    :cond_137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_146

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_141} :catch_142

    goto :goto_147

    :catch_142
    move-exception v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_146
    const/4 v5, 0x0

    :goto_147
    if-eqz v5, :cond_179

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRgbGain(): r="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", g="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v3, p2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", b="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v3, p3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    :cond_179
    return-void
.end method

.method public setRgbGainOn(I)V
    .registers 7

    const-string v0, "blue"

    const-string/jumbo v1, "green"

    const-string/jumbo v2, "red"

    const-string/jumbo v3, "rgbgain"

    if-eqz p1, :cond_3e

    .line 318
    :try_start_d
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 319
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 320
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 321
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_EXT_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    goto :goto_4b

    :cond_3e
    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 326
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    .line 329
    :goto_4b
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaOn(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_53
    return-void
.end method

.method public setRgbGainValue(III)V
    .registers 9

    const-string v0, ","

    .line 286
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    if-eqz v1, :cond_8b

    array-length v2, v1

    if-nez v2, :cond_b

    goto/16 :goto_8b

    .line 288
    :cond_b
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    if-eqz v2, :cond_8b

    array-length v3, v2

    if-nez v3, :cond_14

    goto/16 :goto_8b

    .line 290
    :cond_14
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    if-eqz v3, :cond_8b

    array-length v4, v3

    if-nez v4, :cond_1c

    goto :goto_8b

    .line 293
    :cond_1c
    array-length v1, v1

    if-lt p1, v1, :cond_20

    return-void

    .line 295
    :cond_20
    array-length v1, v2

    if-lt p2, v1, :cond_24

    return-void

    .line 297
    :cond_24
    array-length v1, v3

    if-lt p3, v1, :cond_28

    return-void

    .line 300
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    if-eqz v2, :cond_86

    array-length v2, v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    if-eqz v2, :cond_86

    array-length v2, v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    if-eqz v2, :cond_86

    array-length v2, v2

    if-eqz v2, :cond_86

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_ext_array:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_ext_array:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_ext_array:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_87

    :cond_86
    const/4 p1, 0x0

    .line 306
    :goto_87
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8a} :catch_8c

    goto :goto_90

    :cond_8b
    :goto_8b
    return-void

    :catch_8c
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_90
    return-void
.end method

.method public setSkinColorOn(I)V
    .registers 4

    const-string/jumbo v0, "hsc"

    if-eqz p1, :cond_11

    .line 341
    :try_start_5
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "skincolor"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    goto :goto_1b

    .line 343
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v1, "bypass"

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 345
    :goto_1b
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    if-eqz p1, :cond_27

    array-length v0, p1

    if-nez v0, :cond_23

    goto :goto_27

    :cond_23
    const/4 v0, 0x0

    .line 348
    aget-object p1, p1, v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_28

    goto :goto_2d

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2d
    if-eqz p1, :cond_3c

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setSkinColorOn()"

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3c
    return-void
.end method

.method public setWhitePointColorOn(I)V
    .registers 6

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 673
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setWhitePointColorOnCGC(I)V

    goto :goto_f

    .line 676
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setWhitePointColorOnCGC17(I)V

    .line 678
    :goto_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "elaspedTime: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExynosDisplayColor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setWhitePointColorOnCGC(I)V
    .registers 8

    const-string v0, "cgc"

    const-string v1, "bypass"

    const/4 v2, 0x0

    if-eqz p1, :cond_13

    .line 640
    :try_start_7
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v3, "whitepoint"

    invoke-static {p1, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    goto :goto_1b

    .line 642
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 644
    :goto_1b
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    if-eqz p1, :cond_45

    array-length v0, p1

    if-nez v0, :cond_23

    goto :goto_45

    :cond_23
    const/4 v0, 0x0

    .line 647
    aget-object p1, p1, v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_46

    .line 649
    :try_start_26
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez v3, :cond_34

    .line 650
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v4, "cgc_dither"

    invoke-static {v3, v1, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 652
    :cond_34
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-eqz v1, :cond_4c

    array-length v3, v1

    if-nez v3, :cond_3c

    goto :goto_4c

    .line 655
    :cond_3c
    aget-object v0, v1, v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3e} :catch_40

    move-object v2, v0

    goto :goto_4c

    :catch_40
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_48

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception p1

    move-object v0, v2

    .line 659
    :goto_48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :cond_4c
    :goto_4c
    if-eqz p1, :cond_62

    const-string v0, "ExynosDisplayColor"

    const-string/jumbo v1, "setWhitePointColorOn()"

    .line 663
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5d

    .line 665
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 666
    :cond_5d
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_62
    return-void
.end method

.method public final setWhitePointColorOnCGC17(I)V
    .registers 11

    const-string v0, "bypass"

    if-eqz p1, :cond_a

    .line 577
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "whitepoint"

    goto :goto_d

    .line 581
    :cond_a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    move-object v1, v0

    .line 586
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 587
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    const-string v3, "cgc_dither"

    invoke-static {v2, v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 589
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    array-length v3, v0

    if-nez v3, :cond_24

    goto :goto_27

    .line 592
    :cond_24
    aget-object v0, v0, v2

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2f

    .line 595
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_9e

    :cond_2f
    move v0, v2

    :goto_30
    const/4 v3, 0x3

    const-string v4, "ExynosDisplayColor"

    const/4 v5, 0x1

    if-ge v0, v3, :cond_7c

    move v3, v2

    :goto_37
    const/16 v6, 0x11

    if-ge v3, v6, :cond_79

    :try_start_3b
    const-string v6, "cgc17_enc"

    .line 600
    invoke-static {p1, v1, v6, v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_72

    .line 602
    array-length v7, v6

    if-ge v7, v5, :cond_47

    goto :goto_72

    .line 607
    :cond_47
    aget-object v6, v6, v2

    .line 610
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 612
    iget-object v8, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 613
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_72
    :goto_72
    const-string/jumbo p0, "xml cgc17_enc not found"

    .line 603
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 617
    :cond_7c
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    const-string v3, "7"

    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "cgc17_con"

    .line 619
    invoke-static {p1, v1, v0, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 621
    array-length v0, p1

    if-ge v0, v5, :cond_8f

    goto :goto_97

    .line 626
    :cond_8f
    aget-object p1, p1, v2

    .line 628
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a2

    :cond_97
    :goto_97
    const-string/jumbo p0, "xml cgc17_con not found"

    .line 622
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_9d} :catch_9e

    return-void

    :catch_9e
    move-exception p0

    .line 631
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a2
    return-void
.end method

.method public final setXMLColorModesImpl(Ljava/lang/String;)V
    .registers 6

    .line 812
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorModePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExynosDisplayColor"

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setXMLColorModesImpl: xml_path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    if-eqz p0, :cond_33

    .line 817
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 820
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    return-void
.end method

.method public final sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 161
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    return-void
.end method
