.class public Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;
.super Ljava/lang/Object;
.source "AndroidPackageUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z
    .registers 4

    .line 171
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    return v1

    .line 174
    :cond_a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public static createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isMultiArch()Z

    move-result v1

    .line 162
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExtractNativeLibs()Z

    move-result v2

    .line 163
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result p0

    .line 159
    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0

    return-object p0
.end method

.method public static createSharedLibraryForDynamic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;
    .registers 15

    .line 117
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 120
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-direct {v8, v0, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v4, p1

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    return-object v12
.end method

.method public static createSharedLibraryForSdk(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .registers 14

    .line 95
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    .line 97
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v5, v0

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 100
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v9

    invoke-direct {v8, v0, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    return-object v12
.end method

.method public static createSharedLibraryForStatic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .registers 14

    .line 106
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    .line 108
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibVersion()J

    move-result-wide v5

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 111
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v9

    invoke-direct {v8, v0, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    return-object v12
.end method

.method public static generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    check-cast p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 89
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1b
    return-object v0
.end method

.method public static getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    check-cast p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isHasCode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 66
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x0

    .line 70
    :goto_1f
    array-length v3, v1

    if-ge v2, v3, :cond_34

    .line 71
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getSplitFlags()[I

    move-result-object v3

    aget v3, v3, v2

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_31

    .line 72
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_34
    return-object v0
.end method

.method public static getCompilerFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-static {p0, p1}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHiddenApiEnforcementPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5

    .line 243
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSignedWithPlatformKey()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 245
    :cond_9
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1c

    :cond_1a
    move v1, v2

    goto :goto_34

    .line 246
    :cond_1c
    :goto_1c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isUsesNonSdkApi()Z

    move-result p1

    if-nez p1, :cond_34

    .line 247
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object p1

    .line 248
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_34
    :goto_34
    if-eqz v1, :cond_37

    return v2

    :cond_37
    const/4 p0, 0x2

    return p0
.end method

.method public static getIcon(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 2

    .line 267
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v0, :cond_f

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getRoundIconRes()I

    move-result v0

    if-eqz v0, :cond_f

    .line 268
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getRoundIconRes()I

    move-result p0

    goto :goto_13

    :cond_f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getIconRes()I

    move-result p0

    :goto_13
    return p0
.end method

.method public static getPackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->buildPackageApkToDexMetadataMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_12

    .line 284
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 288
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_12
    :goto_12
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 1

    .line 305
    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 1

    .line 314
    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealPackageOrNull(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2

    .line 339
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 343
    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_11

    .line 319
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getOverrideSeInfo()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    return-object p1

    .line 324
    :cond_11
    check-cast p0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->getSeInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_12

    .line 293
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 297
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 294
    :cond_12
    :goto_12
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasComponentClassName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 8

    .line 181
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const/4 v4, 0x1

    if-ge v3, v1, :cond_21

    .line 184
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 189
    :cond_21
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_2a
    if-ge v3, v1, :cond_40

    .line 192
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    return v4

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 197
    :cond_40
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_49
    if-ge v3, v1, :cond_5f

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    return v4

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 205
    :cond_5f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_68
    if-ge v3, v1, :cond_7e

    .line 208
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    return v4

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 213
    :cond_7e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_87
    if-ge v3, v1, :cond_9d

    .line 216
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    return v4

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 221
    :cond_9d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBackupAgentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 222
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBackupAgentName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ae

    return v4

    :cond_ae
    return v2
.end method

.method public static isEncryptionAware(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 231
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isPartiallyDirectBootAware()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 236
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 237
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z
    .registers 5

    const-wide/32 v0, 0x100000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_f

    .line 277
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static validatePackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 143
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 144
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 146
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 147
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v5

    .line 148
    invoke-static {v5, v4, v1, v2, v3}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 150
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_18

    .line 151
    :cond_33
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 152
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_45
    return-void
.end method
