.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public blacklist hasInvalidOverlayPath:Z

.field public final greylist-max-o mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field public greylist-max-o mDisplayId:I

.field public blacklist mDisplayId2:I

.field private final greylist-max-o mHash:I

.field public final greylist-max-o mLibDirs:[Ljava/lang/String;

.field public final blacklist mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field public final blacklist mOverlayPaths:[Ljava/lang/String;

.field public final greylist-max-o mOverrideConfiguration:Landroid/content/res/Configuration;

.field public final blacklist mPackageName:Ljava/lang/String;

.field public final greylist mResDir:Ljava/lang/String;

.field public final greylist mSplitResDirs:[Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .registers 17
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 220
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 222
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V
    .registers 20
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;

    .line 107
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;I)V
    .registers 21
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;
    .param p9, "displayId2"    # I

    .line 133
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;)V
    .registers 21
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;
    .param p9, "packageName"    # Ljava/lang/String;

    .line 120
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;Ljava/lang/String;I)V
    .registers 25
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayPaths"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "overrideDisplayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "loader"    # [Landroid/content/res/loader/ResourcesLoader;
    .param p9, "packageName"    # Ljava/lang/String;
    .param p10, "displayId2"    # I

    .line 146
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/content/res/ResourcesKey;->hasInvalidOverlayPath:Z

    .line 95
    iput v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId2:I

    .line 148
    move-object v4, p1

    iput-object v4, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 149
    move-object/from16 v5, p2

    iput-object v5, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 151
    if-lez p10, :cond_44

    .line 152
    if-eqz v1, :cond_41

    array-length v6, v1

    if-lez v6, :cond_41

    .line 153
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v6, "overlayDirsExceptSamsungTheme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v7, v1

    move v8, v3

    :goto_22
    if-ge v8, v7, :cond_36

    aget-object v9, v1, v8

    .line 155
    .local v9, "overlay":Ljava/lang/String;
    if-eqz v9, :cond_33

    const-string v10, "/data/overlays/currentstyle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_33

    .line 157
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v9    # "overlay":Ljava/lang/String;
    :cond_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 160
    :cond_36
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    .line 161
    .end local v6    # "overlayDirsExceptSamsungTheme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_46

    .line 162
    :cond_41
    iput-object v1, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    goto :goto_46

    .line 165
    :cond_44
    iput-object v1, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    .line 168
    :goto_46
    move-object/from16 v3, p4

    iput-object v3, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 169
    if-eqz v2, :cond_51

    array-length v6, v2

    if-nez v6, :cond_51

    const/4 v6, 0x0

    goto :goto_52

    :cond_51
    move-object v6, v2

    :goto_52
    iput-object v6, v0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 170
    move/from16 v7, p5

    iput v7, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 171
    new-instance v8, Landroid/content/res/Configuration;

    if-eqz p6, :cond_5f

    .line 172
    move-object/from16 v9, p6

    goto :goto_61

    :cond_5f
    sget-object v9, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_61
    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v8, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 173
    if-eqz p7, :cond_6b

    move-object/from16 v9, p7

    goto :goto_6d

    :cond_6b
    sget-object v9, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    :goto_6d
    iput-object v9, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 176
    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    .line 188
    const/16 v11, 0x11

    .line 189
    .local v11, "hash":I
    mul-int/lit8 v12, v11, 0x1f

    iget-object v13, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v12, v13

    .line 190
    .end local v11    # "hash":I
    .local v12, "hash":I
    mul-int/lit8 v11, v12, 0x1f

    iget-object v13, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v11, v13

    .line 191
    .end local v12    # "hash":I
    .restart local v11    # "hash":I
    mul-int/lit8 v12, v11, 0x1f

    iget-object v13, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v12, v13

    .line 192
    .end local v11    # "hash":I
    .restart local v12    # "hash":I
    mul-int/lit8 v11, v12, 0x1f

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v11, v13

    .line 193
    .end local v12    # "hash":I
    .restart local v11    # "hash":I
    mul-int/lit8 v12, v11, 0x1f

    iget v13, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v12, v13

    .line 194
    .end local v11    # "hash":I
    .restart local v12    # "hash":I
    mul-int/lit8 v11, v12, 0x1f

    invoke-static {v8}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v11, v8

    .line 195
    .end local v12    # "hash":I
    .restart local v11    # "hash":I
    mul-int/lit8 v8, v11, 0x1f

    invoke-static {v9}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v8, v9

    .line 196
    .end local v11    # "hash":I
    .local v8, "hash":I
    mul-int/lit8 v9, v8, 0x1f

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v9, v6

    .line 199
    .end local v8    # "hash":I
    .local v9, "hash":I
    mul-int/lit8 v6, v9, 0x1f

    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v6, v8

    .line 209
    .end local v9    # "hash":I
    .local v6, "hash":I
    iput v6, v0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 210
    return-void
.end method

.method private static greylist-max-o anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 239
    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 240
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_13

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 241
    const/4 v0, 0x1

    return v0

    .line 239
    .end local v3    # "s":Ljava/lang/String;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 245
    :cond_16
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 255
    instance-of v0, p1, Landroid/content/res/ResourcesKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 256
    return v1

    .line 259
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 260
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mHash:I

    if-eq v2, v3, :cond_10

    .line 262
    return v1

    .line 265
    :cond_10
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 266
    return v1

    .line 268
    :cond_1b
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 269
    return v1

    .line 271
    :cond_26
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 272
    return v1

    .line 274
    :cond_31
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 275
    return v1

    .line 277
    :cond_3c
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v2, v3, :cond_43

    .line 278
    return v1

    .line 280
    :cond_43
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 281
    return v1

    .line 283
    :cond_4e
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 284
    return v1

    .line 286
    :cond_59
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 287
    return v1

    .line 291
    :cond_64
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 292
    return v1

    .line 296
    :cond_6f
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o hasOverrideConfiguration()Z
    .registers 3

    .line 225
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public greylist-max-o isPathReferenced(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 230
    return v1

    .line 232
    :cond_c
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 233
    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    nop

    .line 232
    :goto_28
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourcesKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " mHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, " mResDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, " mSplitDirs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    const-string v2, ","

    if-eqz v1, :cond_37

    .line 306
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_37
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v3, " mOverlayDirs=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v3, :cond_4c

    .line 311
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v3, " mLibDirs=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v3, :cond_5f

    .line 316
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v3, " mDisplayId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    const-string v3, " mOverrideConfig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v3, " mCompatInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    const-string v3, " mLoaders=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz v3, :cond_97

    .line 325
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, " mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
