.class public Lcom/android/server/ssrm/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static CHIP_EXYNOS2100:Z

.field public static CHIP_EXYNOS2200:Z

.field public static CHIP_JOON:Z

.field public static CHIP_JOSHUA:Z

.field public static CHIP_LASSEN:Z

.field public static CHIP_LHOTSE:Z

.field public static CHIP_MSM8917:Z

.field public static CHIP_MSM8998:Z

.field public static CHIP_SDM450:Z

.field public static CHIP_SDM660:Z

.field public static CHIP_SDM8250:Z

.field public static CHIP_SDM8350:Z

.field public static CHIP_SDM845:Z

.field public static CHIP_SDM8450:Z

.field static final DEBUG:Z

.field public static DISABLE_HEAVYUSER:Z

.field public static DVFS_FILENAME:Ljava/lang/String;

.field public static DVFS_FILENAME_DEFAULT:Ljava/lang/String;

.field public static IS_DEBUG_MID:Z

.field public static MODEL_J3TOP:Z

.field public static MODEL_J3Y17_CMCC:Z

.field public static MODEL_J7POPE:Z

.field public static PRODUCT_A10eu:Z

.field public static PRODUCT_A32:Z

.field public static PRODUCT_A32XJPN:Z

.field public static PRODUCT_A3P:Z

.field public static PRODUCT_A3Y17:Z

.field public static PRODUCT_A52xq:Z

.field public static PRODUCT_A5Y17:Z

.field public static PRODUCT_A60q:Z

.field public static PRODUCT_A7Y17:Z

.field public static PRODUCT_A82:Z

.field public static PRODUCT_A8s:Z

.field public static PRODUCT_B2Q:Z

.field public static PRODUCT_B4Q:Z

.field public static PRODUCT_BEYOND:Z

.field public static PRODUCT_BEYOND0L:Z

.field public static PRODUCT_BEYOND0Q:Z

.field public static PRODUCT_BEYOND1L:Z

.field public static PRODUCT_BEYOND1Q:Z

.field public static PRODUCT_BEYOND2L:Z

.field public static PRODUCT_BEYOND2Q:Z

.field public static PRODUCT_BEYONDL:Z

.field public static PRODUCT_BEYONDQ:Z

.field public static PRODUCT_BEYONDXL:Z

.field public static PRODUCT_BEYONDXQ:Z

.field public static PRODUCT_BLOOMQ:Z

.field public static PRODUCT_BLOOMxq:Z

.field public static PRODUCT_C1Q:Z

.field public static PRODUCT_C1S:Z

.field public static PRODUCT_C2Q:Z

.field public static PRODUCT_C2S:Z

.field public static PRODUCT_DAVINCI:Z

.field public static PRODUCT_DAVINCIL:Z

.field public static PRODUCT_DAVINCIQ:Z

.field public static PRODUCT_F62:Z

.field public static PRODUCT_GTACTIVE2:Z

.field public static PRODUCT_J5Y17:Z

.field public static PRODUCT_J7MAX:Z

.field public static PRODUCT_J7Y17:Z

.field public static PRODUCT_JACKPOT:Z

.field public static PRODUCT_M31s:Z

.field public static PRODUCT_M33X:Z

.field public static PRODUCT_O1:Z

.field public static PRODUCT_O1Q:Z

.field public static PRODUCT_O1S:Z

.field public static PRODUCT_P3:Z

.field public static PRODUCT_P3Q:Z

.field public static PRODUCT_P3S:Z

.field public static PRODUCT_PALETTE:Z

.field public static PRODUCT_PALETTEQ:Z

.field public static PRODUCT_PALETTES:Z

.field public static PRODUCT_Q2Q:Z

.field public static PRODUCT_Q4Q:Z

.field public static PRODUCT_R8q:Z

.field public static PRODUCT_R8s:Z

.field public static PRODUCT_R9Q:Z

.field public static PRODUCT_RAINBOW:Z

.field public static PRODUCT_RAINBOWQ:Z

.field public static PRODUCT_RAINBOWS:Z

.field public static PRODUCT_T2:Z

.field public static PRODUCT_T2Q:Z

.field public static PRODUCT_T2S:Z

.field public static PRODUCT_TOP:Z

.field public static PRODUCT_WINNERQ:Z

.field public static PRODUCT_X1Q:Z

.field public static PRODUCT_X1S:Z

.field public static PRODUCT_Y2Q:Z

.field public static PRODUCT_Y2S:Z

.field public static PRODUCT_Z3Q:Z

.field public static PRODUCT_Z3S:Z

.field public static REGION_CMCC:Z

.field public static REGION_CU:Z

.field public static REGION_DCM:Z

.field public static REGION_USCC:Z

.field public static REGION_VZW:Z

.field public static SEC_PRODUCT_FEATURE_COMMON_SUPPORT_WEARABLE_HMT:Z

.field public static SSRM_FILENAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field public static VENDOR_JDM:Z

.field public static VENDOR_LSI:Z

.field public static VENDOR_QUALCOMM:Z

.field private static sSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 32
    const-string v0, "jdm"

    const-class v1, Lcom/android/server/ssrm/Feature;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Feature;->TAG:Ljava/lang/String;

    .line 34
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/android/server/ssrm/Feature;->DEBUG:Z

    .line 36
    const-string v3, ""

    sput-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 38
    sput-object v3, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 40
    const-string v3, "dvfs_policy_default,"

    sput-object v3, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME_DEFAULT:Ljava/lang/String;

    .line 42
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Feature;->sSalesCode:Ljava/lang/String;

    .line 44
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2100:Z

    .line 46
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    .line 48
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_SDM8250:Z

    .line 50
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    .line 52
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    .line 54
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_MSM8917:Z

    .line 56
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_MSM8998:Z

    .line 58
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_SDM660:Z

    .line 60
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_SDM845:Z

    .line 62
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_SDM450:Z

    .line 64
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_LASSEN:Z

    .line 66
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_JOSHUA:Z

    .line 68
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_JOON:Z

    .line 70
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->CHIP_LHOTSE:Z

    .line 72
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_GTACTIVE2:Z

    .line 74
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J3TOP:Z

    .line 76
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J3Y17_CMCC:Z

    .line 78
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_J7POPE:Z

    .line 80
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A3P:Z

    .line 82
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A32XJPN:Z

    .line 84
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A32:Z

    .line 86
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_J5Y17:Z

    .line 88
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_J7Y17:Z

    .line 90
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_J7MAX:Z

    .line 92
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 94
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->REGION_CU:Z

    .line 96
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->REGION_CMCC:Z

    .line 98
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->REGION_DCM:Z

    .line 100
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->REGION_USCC:Z

    .line 102
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->VENDOR_QUALCOMM:Z

    .line 104
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->VENDOR_LSI:Z

    .line 106
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    .line 108
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SEC_PRODUCT_FEATURE_COMMON_SUPPORT_WEARABLE_HMT:Z

    .line 110
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A3Y17:Z

    .line 112
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A5Y17:Z

    .line 114
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A52xq:Z

    .line 116
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A7Y17:Z

    .line 118
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_JACKPOT:Z

    .line 120
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND:Z

    .line 122
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDL:Z

    .line 124
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDQ:Z

    .line 126
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND0L:Z

    .line 128
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND1L:Z

    .line 130
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND2L:Z

    .line 132
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDXL:Z

    .line 134
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND0Q:Z

    .line 136
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND1Q:Z

    .line 138
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND2Q:Z

    .line 140
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDXQ:Z

    .line 142
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_WINNERQ:Z

    .line 144
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCI:Z

    .line 146
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCIL:Z

    .line 148
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCIQ:Z

    .line 150
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    .line 152
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMxq:Z

    .line 154
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_X1Q:Z

    .line 156
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_X1S:Z

    .line 158
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2Q:Z

    .line 160
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2S:Z

    .line 162
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3Q:Z

    .line 164
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3S:Z

    .line 166
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_C1S:Z

    .line 168
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_C1Q:Z

    .line 170
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_C2S:Z

    .line 172
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_C2Q:Z

    .line 174
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_R8q:Z

    .line 176
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_R8s:Z

    .line 178
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_TOP:Z

    .line 180
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A10eu:Z

    .line 182
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A60q:Z

    .line 184
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A8s:Z

    .line 186
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_A82:Z

    .line 188
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->IS_DEBUG_MID:Z

    .line 190
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_M31s:Z

    .line 192
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_M33X:Z

    .line 194
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_F62:Z

    .line 196
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTE:Z

    .line 198
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTEQ:Z

    .line 200
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTES:Z

    .line 202
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOW:Z

    .line 204
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWQ:Z

    .line 206
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWS:Z

    .line 208
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_O1Q:Z

    .line 210
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_O1S:Z

    .line 212
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_O1:Z

    .line 214
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    .line 216
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    .line 218
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_T2:Z

    .line 220
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    .line 222
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_P3S:Z

    .line 224
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_P3:Z

    .line 226
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    .line 228
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    .line 230
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_R9Q:Z

    .line 232
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_B4Q:Z

    .line 234
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->PRODUCT_Q4Q:Z

    .line 236
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->DISABLE_HEAVYUSER:Z

    .line 240
    :try_start_e9
    const-string v4, "ro.debug_level"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x494d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/ssrm/Feature;->IS_DEBUG_MID:Z

    .line 242
    const-string v4, "ro.boot.lassen.apfuse"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "apfuse":Ljava/lang/String;
    const-string v5, "ro.hardware.chipname"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "chipname":Ljava/lang/String;
    const-string v6, "exynos7885"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_130

    const-string v6, "exynos7884"

    .line 245
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_130

    const-string v6, "exynos7884a"

    .line 246
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_130

    const-string v6, "exynos7883"

    .line 247
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_130

    const-string v6, "exynos7904"

    .line 248
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12e

    goto :goto_130

    :cond_12e
    move v6, v3

    goto :goto_131

    :cond_130
    :goto_130
    move v6, v2

    :goto_131
    sput-boolean v6, Lcom/android/server/ssrm/Feature;->CHIP_LASSEN:Z

    .line 250
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/ssrm.disable"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_13e} :catch_5bc

    const-string v8, "ssrm_default"

    if-eqz v7, :cond_14b

    :try_start_142
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v7

    if-eqz v7, :cond_14b

    .line 252
    sput-object v8, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    goto :goto_15f

    .line 254
    :cond_14b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v9, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_SIOP_POLICY_FILENAME"

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 256
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 257
    sput-object v8, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    .line 261
    :cond_15f
    :goto_15f
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/heavyuser.disable"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v7, "file2":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_170

    if-eqz v1, :cond_170

    move v1, v2

    goto :goto_171

    :cond_170
    move v1, v3

    :goto_171
    sput-boolean v1, Lcom/android/server/ssrm/Feature;->DISABLE_HEAVYUSER:Z

    .line 264
    const-string v1, "dvfs_policy_default"

    sput-object v1, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 265
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->CHIP_LASSEN:Z

    if-eqz v1, :cond_187

    const-string v1, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 266
    const-string v1, "dvfs_policy_exynos7884_foroldsample"

    sput-object v1, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 269
    :cond_187
    sget-object v1, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME_DEFAULT:Ljava/lang/String;

    sget-object v8, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Feature;->DVFS_FILENAME:Ljava/lang/String;

    .line 271
    sput-boolean v3, Lcom/android/server/ssrm/Feature;->SEC_PRODUCT_FEATURE_COMMON_SUPPORT_WEARABLE_HMT:Z

    .line 273
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "platform":Ljava/lang/String;
    if-eqz v1, :cond_1cf

    .line 276
    const-string v8, "msm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b6

    const-string v8, "apq"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b6

    const-string v8, "sdm"

    .line 277
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b4

    goto :goto_1b6

    :cond_1b4
    move v8, v3

    goto :goto_1b7

    :cond_1b6
    :goto_1b6
    move v8, v2

    :goto_1b7
    sput-boolean v8, Lcom/android/server/ssrm/Feature;->VENDOR_QUALCOMM:Z

    .line 278
    const-string v8, "exynos"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1cc

    const-string v8, "universal"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    move v8, v3

    goto :goto_1cd

    :cond_1cc
    :goto_1cc
    move v8, v2

    :goto_1cd
    sput-boolean v8, Lcom/android/server/ssrm/Feature;->VENDOR_LSI:Z

    .line 281
    :cond_1cf
    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->VENDOR_JDM:Z

    .line 284
    const-string v0, "msm8917"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_MSM8917:Z

    .line 286
    const-string v0, "msm8998"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_MSM8998:Z

    .line 288
    const-string v0, "sdm660"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM660:Z

    .line 289
    const-string v0, "SDM845"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM845:Z

    .line 290
    const-string v0, "sdm450"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM450:Z

    .line 292
    const-string v0, "exynos7870"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_JOSHUA:Z

    .line 293
    const-string v0, "exynos7880"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_JOON:Z

    .line 294
    const-string v0, "exynos9810"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_LHOTSE:Z

    .line 296
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    if-eqz v0, :cond_5bb

    .line 297
    const-string v8, "_exynos2100"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2100:Z

    .line 298
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_exynos2200"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_EXYNOS2200:Z

    .line 299
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_sm8250"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8250:Z

    .line 300
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_sm8350"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8350:Z

    .line 301
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_sm8450"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->CHIP_SDM8450:Z

    .line 303
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_o1q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_O1Q:Z

    .line 304
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_t2q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    .line 305
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_p3q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    .line 307
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_o1s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_O1S:Z

    .line 308
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_t2s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    .line 309
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_p3s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_P3S:Z

    .line 311
    sget-boolean v8, Lcom/android/server/ssrm/Feature;->PRODUCT_O1S:Z

    if-nez v8, :cond_292

    sget-boolean v9, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    if-nez v9, :cond_292

    if-eqz v0, :cond_290

    goto :goto_292

    :cond_290
    move v9, v3

    goto :goto_293

    :cond_292
    :goto_292
    move v9, v2

    :goto_293
    sput-boolean v9, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTES:Z

    .line 312
    sget-boolean v10, Lcom/android/server/ssrm/Feature;->PRODUCT_O1Q:Z

    if-nez v10, :cond_2a4

    sget-boolean v11, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    if-nez v11, :cond_2a4

    sget-boolean v11, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    if-eqz v11, :cond_2a2

    goto :goto_2a4

    :cond_2a2
    move v11, v3

    goto :goto_2a5

    :cond_2a4
    :goto_2a4
    move v11, v2

    :goto_2a5
    sput-boolean v11, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTEQ:Z

    .line 314
    if-nez v10, :cond_2ae

    if-eqz v8, :cond_2ac

    goto :goto_2ae

    :cond_2ac
    move v8, v3

    goto :goto_2af

    :cond_2ae
    :goto_2ae
    move v8, v2

    :goto_2af
    sput-boolean v8, Lcom/android/server/ssrm/Feature;->PRODUCT_O1:Z

    .line 315
    sget-boolean v8, Lcom/android/server/ssrm/Feature;->PRODUCT_T2Q:Z

    if-nez v8, :cond_2bc

    sget-boolean v8, Lcom/android/server/ssrm/Feature;->PRODUCT_T2S:Z

    if-eqz v8, :cond_2ba

    goto :goto_2bc

    :cond_2ba
    move v8, v3

    goto :goto_2bd

    :cond_2bc
    :goto_2bc
    move v8, v2

    :goto_2bd
    sput-boolean v8, Lcom/android/server/ssrm/Feature;->PRODUCT_T2:Z

    .line 316
    sget-boolean v8, Lcom/android/server/ssrm/Feature;->PRODUCT_P3Q:Z

    if-nez v8, :cond_2c8

    if-eqz v0, :cond_2c6

    goto :goto_2c8

    :cond_2c6
    move v0, v3

    goto :goto_2c9

    :cond_2c8
    :goto_2c8
    move v0, v2

    :goto_2c9
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_P3:Z

    .line 318
    if-nez v11, :cond_2d2

    if-eqz v9, :cond_2d0

    goto :goto_2d2

    :cond_2d0
    move v0, v3

    goto :goto_2d3

    :cond_2d2
    :goto_2d2
    move v0, v2

    :goto_2d3
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_PALETTE:Z

    .line 320
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_r0q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f6

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_g0q_"

    .line 321
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f6

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_b0q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f4

    goto :goto_2f6

    :cond_2f4
    move v0, v3

    goto :goto_2f7

    :cond_2f6
    :goto_2f6
    move v0, v2

    :goto_2f7
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWQ:Z

    .line 322
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_r0s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31a

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_g0s_"

    .line 323
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31a

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_b0s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_318

    goto :goto_31a

    :cond_318
    move v0, v3

    goto :goto_31b

    :cond_31a
    :goto_31a
    move v0, v2

    :goto_31b
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWS:Z

    .line 325
    sget-boolean v8, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOWQ:Z

    if-nez v8, :cond_326

    if-eqz v0, :cond_324

    goto :goto_326

    :cond_324
    move v0, v3

    goto :goto_327

    :cond_326
    :goto_326
    move v0, v2

    :goto_327
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_RAINBOW:Z

    .line 327
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_b2q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B2Q:Z

    .line 328
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_q2q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Q2Q:Z

    .line 330
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_b4q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_B4Q:Z

    .line 331
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_q4q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Q4Q:Z

    .line 333
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_r9q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R9Q:Z

    .line 335
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_x1q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1Q:Z

    .line 336
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_x1s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_X1S:Z

    .line 338
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_y2q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2Q:Z

    .line 339
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_y2s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Y2S:Z

    .line 341
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_z3q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3Q:Z

    .line 342
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_z3s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_Z3S:Z

    .line 344
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_c1s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1S:Z

    .line 345
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_c2s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2S:Z

    .line 347
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_c1q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C1Q:Z

    .line 348
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_c2q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_C2Q:Z

    .line 350
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_r8q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8q:Z

    .line 351
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_r8s_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_R8s:Z

    .line 353
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_f2q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_TOP:Z

    .line 355
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_a10eu_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A10eu:Z

    .line 357
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_bloomq_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMQ:Z

    .line 358
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_bloomxq_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BLOOMxq:Z

    .line 360
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_jackpotlte_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_412

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_jackpot2lte_"

    .line 361
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_410

    goto :goto_412

    :cond_410
    move v0, v3

    goto :goto_413

    :cond_412
    :goto_412
    move v0, v2

    :goto_413
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_JACKPOT:Z

    .line 363
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyond0_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND0L:Z

    .line 364
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyond0q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND0Q:Z

    .line 365
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyond1_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND1L:Z

    .line 366
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyond1q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND1Q:Z

    .line 367
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyond2_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND2L:Z

    .line 368
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyond2q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND2Q:Z

    .line 369
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyondx_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDXL:Z

    .line 370
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_beyondxq_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDXQ:Z

    .line 371
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_winnerlte_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_WINNERQ:Z

    .line 372
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_a60q_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A60q:Z

    .line 373
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "davinci"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCI:Z

    .line 374
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_davincil_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCIL:Z

    .line 375
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v8, "_davinciq_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_DAVINCIQ:Z

    .line 377
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND0L:Z

    if-nez v0, :cond_4aa

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND1L:Z

    if-nez v0, :cond_4aa

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND2L:Z

    if-nez v0, :cond_4aa

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDXL:Z

    if-eqz v0, :cond_4a8

    goto :goto_4aa

    :cond_4a8
    move v0, v3

    goto :goto_4ab

    :cond_4aa
    :goto_4aa
    move v0, v2

    :goto_4ab
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDL:Z

    .line 379
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND0Q:Z

    if-nez v0, :cond_4bf

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND1Q:Z

    if-nez v0, :cond_4bf

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND2Q:Z

    if-nez v0, :cond_4bf

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDXQ:Z

    if-eqz v0, :cond_4be

    goto :goto_4bf

    :cond_4be
    move v2, v3

    :cond_4bf
    :goto_4bf
    sput-boolean v2, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYONDQ:Z

    .line 381
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_beyond"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_BEYOND:Z

    .line 383
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a3y17_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A3Y17:Z

    .line 384
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a32xjpn_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32XJPN:Z

    .line 385
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a32_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A32:Z

    .line 386
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a5y17_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A5Y17:Z

    .line 387
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a7y17_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A7Y17:Z

    .line 389
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a52xq_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A52xq:Z

    .line 391
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_j5y17lte_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_J5Y17:Z

    .line 392
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_j7y17lte_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_J7Y17:Z

    .line 393
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_j7max_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_J7MAX:Z

    .line 394
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a3xpremium_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A3P:Z

    .line 396
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a8sqlte_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A8s:Z

    .line 397
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_a82xq_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_A82:Z

    .line 398
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_gtactive2_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_GTACTIVE2:Z

    .line 400
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_j3toplte_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J3TOP:Z

    .line 402
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_j3y17qlte_chn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J3Y17_CMCC:Z

    .line 404
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_j7popelte_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J7POPE:Z

    .line 406
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_m31s_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_M31s:Z

    .line 408
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_m33x_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_M33X:Z

    .line 410
    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v2, "_f62_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->PRODUCT_F62:Z

    .line 412
    const-string v0, "VZW"

    sget-object v2, Lcom/android/server/ssrm/Feature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->REGION_VZW:Z

    .line 413
    const-string v0, "CHU"

    sget-object v2, Lcom/android/server/ssrm/Feature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->REGION_CU:Z

    .line 414
    const-string v0, "CHM"

    sget-object v2, Lcom/android/server/ssrm/Feature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->REGION_CMCC:Z

    .line 415
    const-string v0, "DCM"

    sget-object v2, Lcom/android/server/ssrm/Feature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->REGION_DCM:Z

    .line 416
    const-string v0, "USC"

    sget-object v2, Lcom/android/server/ssrm/Feature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Feature;->REGION_USCC:Z
    :try_end_5bb
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_5bb} :catch_5bc

    .line 421
    .end local v1    # "platform":Ljava/lang/String;
    .end local v4    # "apfuse":Ljava/lang/String;
    .end local v5    # "chipname":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "file2":Ljava/io/File;
    :cond_5bb
    goto :goto_5dc

    .line 418
    :catch_5bc
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/Feature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5dc
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
