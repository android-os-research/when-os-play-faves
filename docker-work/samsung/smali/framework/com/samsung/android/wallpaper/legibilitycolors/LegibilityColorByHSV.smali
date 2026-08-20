.class public Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;
.super Ljava/lang/Object;
.source "LegibilityColorByHSV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;,
        Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    }
.end annotation


# static fields
.field static final blacklist BLACK_COLOR:I = -0x1000000

.field static final blacklist CONTRAST_BLACK_THRESHOLD:F = 1.34f

.field static final blacklist CONTRAST_WHITE_THRESHOLD:F = 1.24f

.field static final blacklist DIFF_V:F = 0.11f

.field static final blacklist PERCENTAGE_THRESHOLD:F = 0.22f

.field static final blacklist SIMILAR_CONTRAST_THRESHOLD:F = 1.8f

.field static final blacklist SIMILAR_PERCENTAGE_THRESHOLD:F = 0.1f

.field static final blacklist WHITE_COLOR:I = -0x1

.field private static blacklist mLegibilityTable:[[F

.field static blacklist mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 27
    const/16 v0, 0xe

    new-array v0, v0, [[F

    const/16 v1, 0x14

    new-array v2, v1, [F

    fill-array-data v2, :array_88

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_b4

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_e0

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_10c

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_138

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_164

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_190

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1bc

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1e8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_214

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_240

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_26c

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_298

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_2c4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mLegibilityTable:[[F

    .line 58
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult-IA;)V

    sput-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    return-void

    nop

    :array_88
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42aa0000    # 85.0f
        0x42ae0000    # 87.0f
        0x42b20000    # 89.0f
        0x42b80000    # 92.0f
        0x42be0000    # 95.0f
        0x42c40000    # 98.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_b4
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42aa0000    # 85.0f
        0x42ae0000    # 87.0f
        0x42b20000    # 89.0f
        0x42b80000    # 92.0f
        0x42bc0000    # 94.0f
        0x42be0000    # 95.0f
        0x42c40000    # 98.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_e0
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42aa0000    # 85.0f
        0x42ad0000    # 86.5f
        0x42b10000    # 88.5f
        0x42b40000    # 90.0f
        0x42b60000    # 91.0f
        0x42b70000    # 91.5f
        0x42bc0000    # 94.0f
        0x42c00000    # 96.0f
        0x42c30000    # 97.5f
        0x42c40000    # 98.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_10c
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42ac0000    # 86.0f
        0x42b00000    # 88.0f
        0x42b40000    # 90.0f
        0x42b80000    # 92.0f
        0x42b9b333    # 92.85f
        0x42ba6b85    # 93.21f
        0x42bc0000    # 94.0f
        0x42bc0000    # 94.0f
        0x42bc0000    # 94.0f
        0x42bd0000    # 94.5f
        0x42bd0000    # 94.5f
        0x42be0000    # 95.0f
        0x42be0000    # 95.0f
        0x42bf0000    # 95.5f
        0x42bf0000    # 95.5f
        0x42c00000    # 96.0f
        0x42c00000    # 96.0f
        0x42c00000    # 96.0f
    .end array-data

    :array_138
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42ac0000    # 86.0f
        0x42af0000    # 87.5f
        0x42b20000    # 89.0f
        0x42b20000    # 89.0f
        0x42b2999a    # 89.3f
        0x42b40000    # 90.0f
        0x42b46666    # 90.2f
        0x42b56b85    # 90.71f
        0x42b56b85    # 90.71f
        0x42b56b85    # 90.71f
        0x42b56b85    # 90.71f
        0x42b56b85    # 90.71f
        0x42b60000    # 91.0f
        0x42b60000    # 91.0f
        0x42b80000    # 92.0f
        0x42b80000    # 92.0f
        0x42ba0000    # 93.0f
        0x42ba0000    # 93.0f
    .end array-data

    :array_164
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42ac0000    # 86.0f
        0x42ae0000    # 87.0f
        0x42b00000    # 88.0f
        0x42b1d70a    # 88.92f
        0x42b28f5c    # 89.28f
        0x42b40000    # 90.0f
        0x42b46666    # 90.2f
        0x42b4999a    # 90.3f
        0x42b53333    # 90.6f
        0x42b70000    # 91.5f
        0x42b90000    # 92.5f
        0x42ba0000    # 93.0f
        0x42bb0000    # 93.5f
        0x42bb0000    # 93.5f
        0x42bc0000    # 94.0f
        0x42bd0000    # 94.5f
        0x42be0000    # 95.0f
        0x42be0000    # 95.0f
    .end array-data

    :array_190
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42ac0000    # 86.0f
        0x42b20000    # 89.0f
        0x42b50000    # 90.5f
        0x42b70000    # 91.5f
        0x42b83333    # 92.1f
        0x42b8999a    # 92.3f
        0x42b8cccd    # 92.4f
        0x42b90000    # 92.5f
        0x42b93333    # 92.6f
        0x42b93333    # 92.6f
        0x42b96666    # 92.7f
        0x42b9cccd    # 92.9f
        0x42bb0000    # 93.5f
        0x42bb147b    # 93.54f
        0x42bc0000    # 94.0f
        0x42bd0000    # 94.5f
        0x42be0000    # 95.0f
        0x42be0000    # 95.0f
    .end array-data

    :array_1bc
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42aa0000    # 85.0f
        0x42ae0000    # 87.0f
        0x42b20000    # 89.0f
        0x42b4b333    # 90.35f
        0x42b623d7    # 91.07f
        0x42b6d70a    # 91.42f
        0x42b7999a    # 91.8f
        0x42b90000    # 92.5f
        0x42ba0000    # 93.0f
        0x42bb0000    # 93.5f
        0x42bb999a    # 93.8f
        0x42bb999a    # 93.8f
        0x42bbcccd    # 93.9f
        0x42bc0000    # 94.0f
        0x42bc3333    # 94.1f
        0x42bc51ec    # 94.16f
        0x42bc51ec    # 94.16f
        0x42bc51ec    # 94.16f
    .end array-data

    :array_1e8
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42a60000    # 83.0f
        0x42aa0000    # 85.0f
        0x42ac0000    # 86.0f
        0x42ae0000    # 87.0f
        0x42b20000    # 89.0f
        0x42b40000    # 90.0f
        0x42b60000    # 91.0f
        0x42b80000    # 92.0f
        0x42b90000    # 92.5f
        0x42b90000    # 92.5f
        0x42b90000    # 92.5f
        0x42b90000    # 92.5f
        0x42b90000    # 92.5f
        0x42b90000    # 92.5f
        0x42ba0000    # 93.0f
        0x42bb0000    # 93.5f
        0x42bb999a    # 93.8f
        0x42bc0000    # 94.0f
    .end array-data

    :array_214
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42a80000    # 84.0f
        0x42ab0000    # 85.5f
        0x42ac0000    # 86.0f
        0x42ae0000    # 87.0f
        0x42b40000    # 90.0f
        0x42ba0000    # 93.0f
        0x42be0000    # 95.0f
        0x42c00000    # 96.0f
        0x42c20000    # 97.0f
        0x42c40000    # 98.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_240
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42a90000    # 84.5f
        0x42ac0000    # 86.0f
        0x42ae0000    # 87.0f
        0x42b20000    # 89.0f
        0x42ba0000    # 93.0f
        0x42c00000    # 96.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_26c
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42aa0000    # 85.0f
        0x42ae0000    # 87.0f
        0x42b80000    # 92.0f
        0x42c00000    # 96.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_298
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42aa0000    # 85.0f
        0x42ae0000    # 87.0f
        0x42b80000    # 92.0f
        0x42c00000    # 96.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_2c4
    .array-data 4
        0x42980000    # 76.0f
        0x42a40000    # 82.0f
        0x42b00000    # 88.0f
        0x42b80000    # 92.0f
        0x42c00000    # 96.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calcurateIndicatorLegibility([I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .registers 5
    .param p0, "pixels"    # [I

    .line 180
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;-><init>()V

    .line 181
    .local v0, "indicator_hsv":Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;
    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->calcAvgColor([I)V

    .line 182
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgH()F

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgS()F

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->getAvgV()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v1

    .line 184
    .local v1, "colorType":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    invoke-static {}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->makeClusterGroupColorBandBased2()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor;->kMeansHsv([I[I)[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    move-result-object v2

    .line 186
    .local v2, "result":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->checkEdgeCaseForIndicator([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist checkEdgeCaseForIndicator([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .registers 16
    .param p0, "result"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "colorType"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 190
    new-instance v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;-><init>()V

    .line 192
    .local v0, "ret":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    iput-object p1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->initColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 193
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->NONE:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 194
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    .line 195
    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->white_contrast_percent:F

    .line 196
    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->black_contrast_percent:F

    .line 197
    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 199
    const/4 v4, 0x0

    .line 200
    .local v4, "white_contrast_percent":F
    const/4 v5, 0x0

    .line 203
    .local v5, "black_contrast_percent":F
    array-length v6, p0

    move v7, v1

    :goto_1a
    const/high16 v8, -0x1000000

    if-ge v7, v6, :cond_4e

    aget-object v9, p0, v7

    .line 204
    .local v9, "dominantColorResult":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    cmpg-float v10, v10, v2

    if-gtz v10, :cond_27

    .line 205
    goto :goto_4e

    .line 207
    :cond_27
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v3, v10}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    const-wide v12, 0x3ff3d70a40000000L    # 1.2400000095367432

    cmpg-double v10, v10, v12

    if-gez v10, :cond_39

    .line 208
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v4, v10

    .line 211
    :cond_39
    iget v10, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {v8, v10}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    const-wide v12, 0x3ff570a3e0000000L    # 1.340000033378601

    cmpg-double v8, v10, v12

    if-gez v8, :cond_4b

    .line 212
    iget v8, v9, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    add-float/2addr v5, v8

    .line 203
    .end local v9    # "dominantColorResult":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 216
    :cond_4e
    :goto_4e
    iput v4, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->white_contrast_percent:F

    .line 217
    iput v5, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->black_contrast_percent:F

    .line 219
    const v6, 0x3e6147ae    # 0.22f

    cmpl-float v7, v4, v6

    const/4 v9, 0x1

    if-lez v7, :cond_bb

    cmpl-float v7, v5, v6

    if-lez v7, :cond_bb

    .line 220
    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    .line 222
    cmpl-float v3, v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e99999a    # 0.3f

    const/4 v8, 0x2

    const/4 v10, 0x3

    if-ltz v3, :cond_85

    .line 223
    new-array v3, v10, [F

    .line 224
    .local v3, "color":[F
    aput v2, v3, v1

    .line 225
    aput v2, v3, v9

    .line 227
    const v2, 0x3e4ccccd    # 0.2f

    div-float v6, v5, v6

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    aput v6, v3, v8

    .line 228
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 229
    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .end local v3    # "color":[F
    goto :goto_a3

    .line 230
    :cond_85
    cmpg-float v3, v4, v5

    if-gez v3, :cond_a3

    .line 231
    new-array v3, v10, [F

    .line 232
    .restart local v3    # "color":[F
    aput v2, v3, v1

    .line 233
    aput v2, v3, v9

    .line 235
    const v2, 0x3f4ccccd    # 0.8f

    div-float v6, v4, v6

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    aput v2, v3, v8

    .line 236
    invoke-static {v3}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 237
    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_a4

    .line 230
    .end local v3    # "color":[F
    :cond_a3
    :goto_a3
    nop

    .line 241
    :goto_a4
    iget v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    invoke-static {p0, p1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->checkSimilarColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 242
    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    iget v2, v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    iput v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 243
    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    iget-object v2, v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v2, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 244
    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    goto :goto_d9

    .line 246
    :cond_bb
    cmpl-float v2, v4, v6

    if-lez v2, :cond_c8

    .line 247
    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    .line 248
    iput v8, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 249
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_d9

    .line 250
    :cond_c8
    cmpl-float v2, v5, v6

    if-lez v2, :cond_d5

    .line 251
    iput-boolean v9, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    .line 252
    iput v3, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 253
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_d9

    .line 255
    :cond_d5
    iput-boolean v1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->isEdgeCase:Z

    .line 256
    iput-object p1, v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 259
    :cond_d9
    :goto_d9
    return-object v0
.end method

.method private static blacklist checkSimilarColor([Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Z
    .registers 11
    .param p0, "result"    # [Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .param p1, "colorType"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .param p2, "refColor"    # I

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "ret":Z
    const-wide/16 v1, 0x0

    .line 267
    .local v1, "tmpContrast":D
    array-length v3, p0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_46

    aget-object v5, p0, v4

    .line 268
    .local v5, "colorResult":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    invoke-static {p2, v6}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v1

    .line 269
    const-wide v6, 0x3ffcccccc0000000L    # 1.7999999523162842

    cmpg-double v6, v1, v6

    if-gez v6, :cond_43

    iget v6, v5, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const v7, 0x3dcccccd    # 0.1f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_43

    .line 270
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p1, v3, :cond_31

    .line 271
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/4 v4, -0x1

    iput v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    .line 272
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    sget-object v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    goto :goto_41

    .line 273
    :cond_31
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p1, v3, :cond_41

    .line 274
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->color:I

    .line 275
    sget-object v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mSimilarColorResult:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;

    sget-object v4, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    iput-object v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$SimilarColorResult;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 278
    :cond_41
    :goto_41
    const/4 v0, 0x1

    .line 279
    goto :goto_46

    .line 267
    .end local v5    # "colorResult":Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 283
    :cond_46
    :goto_46
    return v0
.end method

.method public static blacklist getLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .registers 4
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .line 61
    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mGetLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .registers 9
    .param p0, "majorColorType"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .param p1, "majorH"    # F
    .param p2, "majorS"    # F
    .param p3, "majorV"    # F
    .param p4, "minorColorType"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .param p5, "minorH"    # F
    .param p6, "minorS"    # F
    .param p7, "minorV"    # F

    .line 153
    invoke-static/range {p0 .. p7}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mGetLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist mGetLegibilityColorType(FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .registers 10
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .line 65
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 67
    .local v0, "ret":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    const/4 v1, 0x0

    .line 68
    .local v1, "hIdx":I
    move v2, p0

    .line 69
    .local v2, "tmpVal":F
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v2, v3

    const/high16 v4, 0x41a00000    # 20.0f

    if-ltz v3, :cond_13

    cmpg-float v3, v2, v4

    if-gez v3, :cond_13

    .line 70
    const/4 v1, 0x1

    goto/16 :goto_ae

    .line 71
    :cond_13
    cmpl-float v3, v2, v4

    const/high16 v4, 0x42200000    # 40.0f

    if-ltz v3, :cond_20

    cmpg-float v3, v2, v4

    if-gez v3, :cond_20

    .line 72
    const/4 v1, 0x2

    goto/16 :goto_ae

    .line 73
    :cond_20
    cmpl-float v3, v2, v4

    const/high16 v4, 0x42480000    # 50.0f

    if-ltz v3, :cond_2d

    cmpg-float v3, v2, v4

    if-gez v3, :cond_2d

    .line 74
    const/4 v1, 0x3

    goto/16 :goto_ae

    .line 75
    :cond_2d
    cmpl-float v3, v2, v4

    const/high16 v4, 0x42740000    # 61.0f

    if-ltz v3, :cond_3a

    cmpg-float v3, v2, v4

    if-gez v3, :cond_3a

    .line 76
    const/4 v1, 0x4

    goto/16 :goto_ae

    .line 77
    :cond_3a
    cmpl-float v3, v2, v4

    const/high16 v4, 0x42a60000    # 83.0f

    if-ltz v3, :cond_47

    cmpg-float v3, v2, v4

    if-gez v3, :cond_47

    .line 78
    const/4 v1, 0x5

    goto/16 :goto_ae

    .line 79
    :cond_47
    cmpl-float v3, v2, v4

    const/high16 v4, 0x430c0000    # 140.0f

    if-ltz v3, :cond_53

    cmpg-float v3, v2, v4

    if-gez v3, :cond_53

    .line 80
    const/4 v1, 0x6

    goto :goto_ae

    .line 81
    :cond_53
    cmpl-float v3, v2, v4

    const/high16 v4, 0x43260000    # 166.0f

    if-ltz v3, :cond_5f

    cmpg-float v3, v2, v4

    if-gez v3, :cond_5f

    .line 82
    const/4 v1, 0x7

    goto :goto_ae

    .line 83
    :cond_5f
    cmpl-float v3, v2, v4

    const/high16 v4, 0x433a0000    # 186.0f

    if-ltz v3, :cond_6c

    cmpg-float v3, v2, v4

    if-gez v3, :cond_6c

    .line 84
    const/16 v1, 0x8

    goto :goto_ae

    .line 85
    :cond_6c
    cmpl-float v3, v2, v4

    const/high16 v4, 0x43530000    # 211.0f

    if-ltz v3, :cond_79

    cmpg-float v3, v2, v4

    if-gez v3, :cond_79

    .line 86
    const/16 v1, 0x9

    goto :goto_ae

    .line 87
    :cond_79
    cmpl-float v3, v2, v4

    const/high16 v4, 0x43710000    # 241.0f

    if-ltz v3, :cond_86

    cmpg-float v3, v2, v4

    if-gez v3, :cond_86

    .line 88
    const/16 v1, 0xa

    goto :goto_ae

    .line 89
    :cond_86
    cmpl-float v3, v2, v4

    const v4, 0x43828000    # 261.0f

    if-ltz v3, :cond_94

    cmpg-float v3, v2, v4

    if-gez v3, :cond_94

    .line 90
    const/16 v1, 0xb

    goto :goto_ae

    .line 91
    :cond_94
    cmpl-float v3, v2, v4

    const/high16 v4, 0x439f0000    # 318.0f

    if-ltz v3, :cond_a1

    cmpg-float v3, v2, v4

    if-gez v3, :cond_a1

    .line 92
    const/16 v1, 0xc

    goto :goto_ae

    .line 93
    :cond_a1
    cmpl-float v3, v2, v4

    if-ltz v3, :cond_ae

    const v3, 0x43a98000    # 339.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_ae

    .line 94
    const/16 v1, 0xd

    .line 97
    :cond_ae
    :goto_ae
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, p1, v3

    .line 98
    float-to-int v4, v2

    .line 99
    .local v4, "tmpValInt":I
    div-int/lit8 v5, v4, 0x5

    div-int/lit8 v6, v4, 0x64

    sub-int/2addr v5, v6

    .line 143
    .local v5, "sIdx":I
    move v2, p2

    .line 144
    mul-float/2addr v3, v2

    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->mLegibilityTable:[[F

    aget-object v6, v6, v1

    aget v6, v6, v5

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c6

    .line 145
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 148
    :cond_c6
    return-object v0
.end method

.method private static blacklist mGetLegibilityColorWeight(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFFLcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;FFF)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    .registers 11
    .param p0, "majorColorType"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .param p1, "majorH"    # F
    .param p2, "majorS"    # F
    .param p3, "majorV"    # F
    .param p4, "minorColorType"    # Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    .param p5, "minorH"    # F
    .param p6, "minorS"    # F
    .param p7, "minorV"    # F

    .line 161
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    .line 165
    .local v0, "ret":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;
    sub-float v1, p3, p7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3de147ae    # 0.11f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    .line 166
    sget-object v1, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne p4, v1, :cond_25

    .line 167
    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p6, v1

    if-gez v1, :cond_23

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p7, v1

    if-lez v1, :cond_23

    .line 168
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->EACH:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    goto :goto_25

    .line 170
    :cond_23
    sget-object v0, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;->UNITY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorWeightType;

    .line 175
    :cond_25
    :goto_25
    return-object v0
.end method
