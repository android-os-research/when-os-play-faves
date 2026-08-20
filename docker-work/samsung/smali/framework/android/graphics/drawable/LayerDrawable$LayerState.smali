.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private greylist-max-o mAutoMirrored:Z

.field greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mCheckedOpacity:Z

.field private greylist-max-o mCheckedStateful:Z

.field greylist mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field greylist-max-o mChildrenChangingConfigurations:I

.field greylist-max-o mDensity:I

.field private greylist-max-o mIsStateful:Z

.field greylist-max-o mNumChildren:I

.field private greylist-max-o mOpacity:I

.field greylist-max-o mOpacityOverride:I

.field greylist-max-o mPaddingBottom:I

.field greylist-max-o mPaddingEnd:I

.field greylist-max-o mPaddingLeft:I

.field private greylist-max-o mPaddingMode:I

.field greylist-max-o mPaddingRight:I

.field greylist-max-o mPaddingStart:I

.field greylist-max-o mPaddingTop:I

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPaddingMode(Landroid/graphics/drawable/LayerDrawable$LayerState;I)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 2016
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1994
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1995
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1996
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1997
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1998
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1999
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2000
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 2011
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 2013
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 2017
    if-eqz p1, :cond_1c

    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2019
    if-eqz p1, :cond_8a

    .line 2020
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2021
    .local v0, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2023
    .local v1, "N":I
    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2024
    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2026
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 2027
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 2029
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_48

    .line 2030
    aget-object v3, v0, v2

    .line 2031
    .local v3, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v3, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v2

    .line 2029
    .end local v3    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 2034
    .end local v2    # "i":I
    :cond_48
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2035
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 2036
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2037
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 2038
    iget-boolean v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 2039
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 2040
    iget-object v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    .line 2041
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 2042
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 2043
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 2044
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 2045
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 2046
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2047
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 2049
    iget v2, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v2, v3, :cond_89

    .line 2050
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 2052
    .end local v0    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v1    # "N":I
    :cond_89
    goto :goto_8f

    .line 2053
    :cond_8a
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2054
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2056
    :goto_8f
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .registers 5
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 2072
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    const/4 v1, 0x0

    if-lez v0, :cond_b

    .line 2073
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 2076
    :cond_b
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    if-lez v0, :cond_15

    .line 2077
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 2080
    :cond_15
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    if-lez v0, :cond_1f

    .line 2081
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 2084
    :cond_1f
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    if-lez v0, :cond_29

    .line 2085
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 2088
    :cond_29
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    if-lez v0, :cond_33

    .line 2089
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 2092
    :cond_33
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    if-lez v0, :cond_3d

    .line 2093
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 2096
    :cond_3d
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 7

    .line 2100
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-nez v0, :cond_21

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_21

    .line 2104
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2105
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2106
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_1f

    .line 2107
    aget-object v4, v0, v3

    .line 2108
    .local v4, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2109
    return v1

    .line 2106
    .end local v4    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2113
    .end local v3    # "i":I
    :cond_1f
    const/4 v1, 0x0

    return v1

    .line 2101
    .end local v0    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "N":I
    :cond_21
    :goto_21
    return v1
.end method

.method public final greylist-max-o canConstantState()Z
    .registers 6

    .line 2203
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2204
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2205
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_18

    .line 2206
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2207
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_15

    .line 2208
    const/4 v4, 0x0

    return v4

    .line 2205
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2213
    .end local v2    # "i":I
    :cond_18
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 2128
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final greylist-max-o getOpacity()I
    .registers 8

    .line 2133
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_7

    .line 2134
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    return v0

    .line 2137
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2138
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2141
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, -0x1

    .line 2142
    .local v2, "firstIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1a

    .line 2143
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_17

    .line 2144
    move v2, v3

    .line 2145
    goto :goto_1a

    .line 2142
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2150
    .end local v3    # "i":I
    :cond_1a
    :goto_1a
    if-ltz v2, :cond_25

    .line 2151
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .local v3, "op":I
    goto :goto_26

    .line 2153
    .end local v3    # "op":I
    :cond_25
    const/4 v3, -0x2

    .line 2157
    .restart local v3    # "op":I
    :goto_26
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    :goto_28
    if-ge v4, v0, :cond_3b

    .line 2158
    aget-object v5, v1, v4

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2159
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_38

    .line 2160
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v3, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 2157
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 2164
    .end local v4    # "i":I
    :cond_3b
    iput v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 2165
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2166
    return v3
.end method

.method public final greylist-max-o hasFocusStateSpecified()Z
    .registers 6

    .line 2191
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2192
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2193
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_18

    .line 2194
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2195
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2196
    const/4 v4, 0x1

    return v4

    .line 2193
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2199
    .end local v2    # "i":I
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method greylist-max-o invalidateCache()V
    .registers 2

    .line 2220
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    .line 2221
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2222
    return-void
.end method

.method public final greylist-max-o isStateful()Z
    .registers 7

    .line 2170
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v0, :cond_7

    .line 2171
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    return v0

    .line 2174
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    .line 2175
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 2176
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    const/4 v2, 0x0

    .line 2177
    .local v2, "isStateful":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_20

    .line 2178
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2179
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2180
    const/4 v2, 0x1

    .line 2181
    goto :goto_20

    .line 2177
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2185
    .end local v3    # "i":I
    :cond_20
    :goto_20
    iput-boolean v2, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 2186
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    .line 2187
    return v2
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 2118
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2123
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected greylist-max-o onDensityChanged(II)V
    .registers 3
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 2068
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    .line 2069
    return-void
.end method

.method public final greylist-max-o setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 2059
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v0, p1, :cond_b

    .line 2060
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2061
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    .line 2063
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    .line 2065
    .end local v0    # "sourceDensity":I
    :cond_b
    return-void
.end method
