.class public Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 3

    if-eqz p1, :cond_11

    .line 497
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p1

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p1

    or-int/2addr p0, p1

    :cond_11
    return p0
.end method

.method public static appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5

    .line 483
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v0

    .line 484
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 485
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isFactoryTest()Z

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p0

    or-int/2addr p0, v0

    .line 487
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 2

    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5

    .line 507
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v0

    .line 508
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystemExt()Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 509
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 510
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isOem()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 511
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isVendor()Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 512
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isProduct()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 513
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isOdm()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 514
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSignedWithPlatformKey()Z

    move-result p0

    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result p0

    or-int/2addr p0, v0

    .line 515
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 2

    return p0
.end method

.method public static appInfoPrivateFlagsExt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 2

    .line 532
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result p0

    .line 533
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public static assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 4

    .line 455
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 456
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 457
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 458
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 459
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 460
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method public static assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 4

    .line 467
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object p1

    .line 469
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 470
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    return-void
.end method

.method public static checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .registers 10

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 438
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_1e

    if-eqz p1, :cond_1e

    .line 440
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p1

    if-eqz p1, :cond_1e

    return v1

    .line 446
    :cond_1e
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p1

    if-nez p1, :cond_34

    .line 447
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_35

    const-wide/32 p0, 0x402000

    and-long/2addr p0, p3

    cmp-long p0, p0, v2

    if-nez p0, :cond_34

    if-eqz v0, :cond_35

    :cond_34
    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public static flag(ZI)I
    .registers 2

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_4
    return p1
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/apex/ApexInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 17

    .line 100
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    move v0, p2

    int-to-long v2, v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v11, p1

    move-object/from16 v12, p3

    .line 100
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILandroid/apex/ApexInfo;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            "I",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p11

    .line 90
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILandroid/apex/ApexInfo;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 269
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 281
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p5, :cond_16

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    .line 285
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :cond_16
    if-nez p5, :cond_19

    return-object v0

    .line 292
    :cond_19
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateActivityInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 294
    invoke-static {p0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .registers 14

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 226
    :cond_4
    invoke-static {p0, p5, p3, p1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 227
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_88

    :cond_12
    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    .line 231
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfoUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JLcom/android/server/pm/pkg/PackageUserState;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 234
    invoke-static {p1, p0, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    if-eqz p5, :cond_5a

    .line 238
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    .line 239
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p3

    iput-boolean p3, p1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 240
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p3

    .line 241
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p2

    .line 242
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3a

    move-object p3, v0

    goto :goto_43

    :cond_3a
    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/String;

    .line 243
    invoke-interface {p3, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    :goto_43
    iput-object p3, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 244
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v0, p2

    :goto_4d
    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 245
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_5a

    .line 246
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result p2

    iput p2, p1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 250
    :cond_5a
    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 251
    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 252
    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 254
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p2

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 255
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p2

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 256
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-static {p0, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p2

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    return-object p1

    :cond_88
    :goto_88
    return-object v0
.end method

.method public static generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    .line 370
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;JIZ)Landroid/content/pm/InstrumentationInfo;

    move-result-object p2

    .line 373
    invoke-static {p2, p1, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    if-nez p2, :cond_13

    return-object v0

    .line 379
    :cond_13
    invoke-static {p1, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 380
    invoke-static {p1, p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 381
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 382
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 384
    invoke-static {p2, p0, p5, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p2
.end method

.method public static generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 407
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generatePermissionGroupInfo(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 398
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generatePermissionInfo(Lcom/android/server/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;J)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    .line 418
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2, p1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 419
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 421
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Landroid/content/pm/ProcessInfo;

    .line 422
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 423
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v5

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v6

    .line 424
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;III)V

    .line 421
    invoke-virtual {p2, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_4e
    return-object p2
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 342
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-eqz p5, :cond_19

    .line 345
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 346
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_34

    const-string p5, "(null AppInfo)"

    goto :goto_36

    .line 348
    :cond_34
    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_36
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "PackageParsing"

    .line 346
    invoke-static {v1, p5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    .line 349
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :cond_4b
    if-nez p5, :cond_4e

    return-object v0

    .line 354
    :cond_4e
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateProviderInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    .line 356
    invoke-static {p0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 305
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 317
    :cond_4
    invoke-static {p0, p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p5, :cond_16

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p7

    .line 321
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :cond_16
    if-nez p5, :cond_19

    return-object v0

    .line 327
    :cond_19
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateServiceInfoUnchecked(Lcom/android/server/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 329
    invoke-static {p0, p1, p7, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILandroid/apex/ApexInfo;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IJJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v5, p12

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_12

    return-object v14

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object v12, v13

    .line 118
    invoke-static/range {v0 .. v12}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponentsUnchecked(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;[IJJJLjava/util/Set;Lcom/android/server/pm/pkg/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 122
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v0

    iput-boolean v0, v8, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 123
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isCoreApp()Z

    move-result v0

    iput-boolean v0, v8, Landroid/content/pm/PackageInfo;->coreApp:Z

    const/4 v9, 0x0

    if-eqz p12, :cond_42

    .line 125
    invoke-interface/range {p12 .. p12}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_42

    .line 127
    iput-object v14, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 128
    iput v9, v8, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    :cond_42
    const-wide/16 v0, 0x1

    and-long v0, p2, v0

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_ae

    .line 132
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_ae

    .line 135
    new-array v14, v12, [Landroid/content/pm/ActivityInfo;

    move v7, v9

    move v15, v7

    :goto_5a
    if-ge v15, v12, :cond_a5

    .line 137
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 138
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object v3, v6

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 140
    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 141
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    goto :goto_9f

    :cond_87
    add-int/lit8 v16, v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move v9, v7

    move-object/from16 v7, p12

    .line 144
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v14, v9

    move/from16 v7, v16

    goto :goto_a1

    :cond_9f
    :goto_9f
    move v9, v7

    move v7, v9

    :goto_a1
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_5a

    :cond_a5
    move v9, v7

    .line 148
    invoke-static {v14, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_ae
    const-wide/16 v0, 0x2

    and-long v0, p2, v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_105

    .line 152
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_105

    .line 155
    new-array v12, v9, [Landroid/content/pm/ActivityInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_c4
    if-ge v14, v9, :cond_fd

    .line 157
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 158
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object v3, v6

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_fa

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move-object/from16 v7, p12

    .line 160
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v12, v15

    move/from16 v15, v16

    :cond_fa
    add-int/lit8 v14, v14, 0x1

    goto :goto_c4

    .line 164
    :cond_fd
    invoke-static {v12, v15}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_105
    const-wide/16 v0, 0x4

    and-long v0, p2, v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_15c

    .line 168
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_15c

    .line 171
    new-array v12, v9, [Landroid/content/pm/ServiceInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_11b
    if-ge v14, v9, :cond_154

    .line 173
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 174
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object v3, v6

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_151

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move-object/from16 v7, p12

    .line 176
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aput-object v0, v12, v15

    move/from16 v15, v16

    :cond_151
    add-int/lit8 v14, v14, 0x1

    goto :goto_11b

    .line 180
    :cond_154
    invoke-static {v12, v15}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_15c
    const-wide/16 v0, 0x8

    and-long v0, p2, v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1b3

    .line 184
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1b3

    .line 187
    new-array v12, v9, [Landroid/content/pm/ProviderInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_172
    if-ge v14, v9, :cond_1ab

    .line 189
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 191
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p9

    move-object v3, v6

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z

    move-result v0

    if-eqz v0, :cond_1a8

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, p9

    move-object v5, v13

    move/from16 v6, p10

    move-object/from16 v7, p12

    .line 193
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v12, v15

    move/from16 v15, v16

    :cond_1a8
    add-int/lit8 v14, v14, 0x1

    goto :goto_172

    .line 197
    :cond_1ab
    invoke-static {v12, v15}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_1b3
    const-wide/16 v0, 0x10

    and-long v0, p2, v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1eb

    .line 201
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1eb

    .line 203
    new-array v1, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v9, 0x0

    :goto_1ca
    if-ge v9, v0, :cond_1eb

    .line 205
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 206
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    move-object/from16 p4, v2

    move-object/from16 p5, p0

    move-wide/from16 p6, p2

    move/from16 p8, p10

    move-object/from16 p9, p12

    .line 205
    invoke-static/range {p4 .. p9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;JILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    aput-object v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1ca

    :cond_1eb
    return-object v8
.end method

.method public static initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 8

    .line 548
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 549
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "android"

    .line 552
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 553
    sget-object p1, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_22
    if-nez p2, :cond_4f

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_97

    .line 565
    :cond_4f
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 566
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, -0x2

    add-int/lit8 v2, v2, -0x1

    .line 569
    invoke-virtual {v3, v4, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 570
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 572
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x2

    add-int/lit8 v2, v2, -0x1

    .line 575
    invoke-virtual {v3, v0, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 576
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 580
    :goto_97
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 582
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_a6

    .line 584
    :cond_a2
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_a6
    return-void
.end method

.method public static initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 8

    .line 592
    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 593
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 594
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 595
    sget-object p1, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_14
    if-nez p2, :cond_41

    .line 601
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_89

    .line 607
    :cond_41
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 608
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, -0x2

    add-int/lit8 v2, v2, -0x1

    .line 611
    invoke-virtual {v3, v4, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 614
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x2

    add-int/lit8 v2, v2, -0x1

    .line 617
    invoke-virtual {v3, v0, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 618
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 622
    :goto_89
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_94

    .line 624
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_98

    .line 626
    :cond_94
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    :goto_98
    return-void
.end method
