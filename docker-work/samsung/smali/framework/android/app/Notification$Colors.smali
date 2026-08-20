.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mContrastColor:I

.field private blacklist mErrorColor:I

.field private blacklist mOnAccentTextColor:I

.field private blacklist mPaletteIsForColorized:Z

.field private blacklist mPaletteIsForNightMode:Z

.field private blacklist mPaletteIsForRawColor:I

.field private blacklist mPrimaryAccentColor:I

.field private blacklist mPrimaryTextColor:I

.field private blacklist mProtectionColor:I

.field private blacklist mRippleAlpha:I

.field private blacklist mSecondaryAccentColor:I

.field private blacklist mSecondaryTextColor:I

.field private blacklist mTertiaryAccentColor:I

.field private blacklist mThirdTextColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smflattenAlpha(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 12859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12860
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 12861
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 12862
    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 12864
    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12865
    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12866
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12867
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12869
    iput v0, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    .line 12870
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12871
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12872
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12873
    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12874
    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12875
    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 12876
    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static blacklist calculateContrastColor(Landroid/content/Context;IIIZ)I
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rawColor"    # I
    .param p2, "accentColor"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "nightMode"    # Z

    .line 13028
    if-nez p1, :cond_b

    .line 13029
    move v0, p2

    .line 13030
    .local v0, "color":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 13031
    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_f

    .line 13034
    .end local v0    # "color":I
    :cond_b
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    .line 13037
    .restart local v0    # "color":I
    :cond_f
    :goto_f
    invoke-static {v0, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    return v1
.end method

.method private static blacklist flattenAlpha(II)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "background"    # I

    .line 13042
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    move v0, p0

    goto :goto_e

    .line 13043
    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v0

    .line 13042
    :goto_e
    return v0
.end method

.method private static blacklist getColor(Landroid/content/res/TypedArray;II)I
    .registers 4
    .param p0, "ta"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 12903
    if-nez p0, :cond_4

    move v0, p2

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_8
    return v0
.end method

.method private static blacklist obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrs"    # [I

    .line 12892
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_8

    .line 12893
    const/4 v0, 0x0

    return-object v0

    .line 12895
    :cond_8
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12896
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 12897
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getBackgroundColor()I
    .registers 2

    .line 13048
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getContrastColor()I
    .registers 2

    .line 13100
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public blacklist getErrorColor()I
    .registers 2

    .line 13105
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public blacklist getOnAccentTextColor()I
    .registers 2

    .line 13092
    iget v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    return v0
.end method

.method public blacklist getPrimaryAccentColor()I
    .registers 2

    .line 13077
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public blacklist getPrimaryTextColor()I
    .registers 2

    .line 13061
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public blacklist getProtectionColor()I
    .registers 2

    .line 13056
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public blacklist getRippleAlpha()I
    .registers 2

    .line 13110
    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public blacklist getSecondaryAccentColor()I
    .registers 2

    .line 13082
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public blacklist getSecondaryTextColor()I
    .registers 2

    .line 13066
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public blacklist getTertiaryAccentColor()I
    .registers 2

    .line 13087
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public blacklist getThirdTextColor()I
    .registers 2

    .line 13072
    iget v0, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    return v0
.end method

.method public blacklist resolvePalette(Landroid/content/Context;IZZ)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rawColor"    # I
    .param p3, "isColorized"    # Z
    .param p4, "nightMode"    # Z

    .line 12920
    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_d

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_d

    .line 12923
    return-void

    .line 12925
    :cond_d
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 12926
    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 12927
    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 12929
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_7d

    .line 12930
    if-nez p2, :cond_3d

    .line 12931
    new-array v3, v2, [I

    const v4, 0x1120039

    aput v4, v3, v1

    .line 12932
    .local v3, "attrs":[I
    invoke-static {p1, v3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 12933
    .local v4, "ta":Landroid/content/res/TypedArray;
    :try_start_25
    invoke-static {v4, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_31

    .line 12934
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 12935
    .end local v3    # "attrs":[I
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_30
    goto :goto_3f

    .line 12932
    .restart local v3    # "attrs":[I
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    :catchall_31
    move-exception v0

    if-eqz v4, :cond_3c

    :try_start_34
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw v0

    .line 12936
    .end local v3    # "attrs":[I
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_3d
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12938
    :goto_3f
    iput v2, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12939
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12940
    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12939
    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v3, v4}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12942
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12943
    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12942
    invoke-static {v0, v1, v3, v4}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12945
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 12946
    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12947
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12948
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12949
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12950
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12951
    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_120

    .line 12953
    :cond_7d
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_13e

    .line 12965
    .restart local v3    # "attrs":[I
    invoke-static {p1, v3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 12966
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    if-eqz p4, :cond_8c

    const/high16 v0, -0x1000000

    :cond_8c
    :try_start_8c
    invoke-static {v4, v1, v0}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 12967
    invoke-static {v4, v2, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 12968
    const/4 v0, 0x2

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 12969
    const/4 v0, 0x3

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 12970
    const/4 v0, 0x4

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12971
    const/4 v0, 0x5

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12972
    const/4 v0, 0x6

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 12973
    const/4 v0, 0x7

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 12974
    const/16 v0, 0x8

    invoke-static {v4, v0, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 12975
    const/16 v0, 0x9

    const v5, 0x33ffffff

    invoke-static {v4, v0, v5}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_d9
    .catchall {:try_start_8c .. :try_end_d9} :catchall_132

    .line 12976
    if-eqz v4, :cond_de

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 12977
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_de
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v0, v4, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 12991
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 12993
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 12995
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveThirdColor(Landroid/content/Context;IZ)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    .line 13005
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne v0, v2, :cond_106

    .line 13006
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 13008
    :cond_106
    iget v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    if-ne v0, v2, :cond_118

    .line 13009
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 13010
    invoke-static {p1, v0, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v0

    const/16 v1, 0xff

    .line 13009
    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mOnAccentTextColor:I

    .line 13014
    :cond_118
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne v0, v2, :cond_120

    .line 13015
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 13019
    .end local v3    # "attrs":[I
    :cond_120
    :goto_120
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    if-ne v0, v2, :cond_131

    .line 13020
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 13022
    :cond_131
    return-void

    .line 12965
    .restart local v3    # "attrs":[I
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    :catchall_132
    move-exception v0

    if-eqz v4, :cond_13d

    :try_start_135
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_139

    goto :goto_13d

    :catchall_139
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13d
    :goto_13d
    throw v0

    :array_13e
    .array-data 4
        0x1120040
        0x10104e2
        0x1010036
        0x1010038
        0x1010435
        0x1120039
        0x112003b
        0x112014f
        0x1010543
        0x101042c
    .end array-data
.end method
