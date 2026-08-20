.class public final Lcom/android/server/pm/ScanPackageUtils;
.super Ljava/lang/Object;
.source "ScanPackageUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustScanFlagsWithPackageSetting(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)I
    .registers 6

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_f

    if-nez p2, :cond_f

    if-eqz p1, :cond_f

    .line 526
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p2, p1

    :cond_f
    if-eqz p2, :cond_53

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 532
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/high16 v1, 0x20000

    if-eqz v0, :cond_1f

    or-int/2addr p0, v1

    .line 536
    :cond_1f
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/2addr v0, v1

    const/high16 v1, 0x40000

    if-eqz v0, :cond_29

    or-int/2addr p0, v1

    .line 540
    :cond_29
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/2addr v0, v1

    const/high16 v1, 0x80000

    if-eqz v0, :cond_33

    or-int/2addr p0, v1

    .line 544
    :cond_33
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_3d

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 548
    :cond_3d
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_47

    or-int/2addr p0, v1

    .line 552
    :cond_47
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p2, v0

    if-eqz p2, :cond_53

    const/high16 p2, 0x400000

    or-int/2addr p0, p2

    :cond_53
    if-eqz p1, :cond_6f

    if-nez p3, :cond_59

    const/4 p2, 0x0

    goto :goto_5d

    .line 558
    :cond_59
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 559
    :goto_5d
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p3

    if-eqz p3, :cond_65

    or-int/lit16 p0, p0, 0x2000

    .line 562
    :cond_65
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getVirtualPreload(I)Z

    move-result p1

    if-eqz p1, :cond_6f

    const p1, 0x8000

    or-int/2addr p0, p1

    :cond_6f
    return p0
.end method

.method public static apkHasCode(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 774
    :try_start_2
    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, p0, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_20
    .catchall {:try_start_2 .. :try_end_7} :catchall_19

    :try_start_7
    const-string p0, "classes.dex"

    .line 776
    invoke-virtual {v2, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_17
    .catchall {:try_start_7 .. :try_end_d} :catchall_14

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    .line 781
    :cond_10
    :try_start_10
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    return v0

    :catchall_14
    move-exception p0

    move-object v1, v2

    goto :goto_1a

    :catch_17
    move-object v1, v2

    goto :goto_20

    :catchall_19
    move-exception p0

    :goto_1a
    if-eqz v1, :cond_1f

    :try_start_1c
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f

    .line 785
    :catch_1f
    :cond_1f
    throw p0

    :catch_20
    :goto_20
    if-eqz v1, :cond_25

    .line 781
    :try_start_22
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return v0
.end method

.method public static applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Lcom/android/server/pm/parsing/pkg/ParsedPackage;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 924
    invoke-interface {p1, p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :cond_5
    const/4 v0, 0x0

    .line 928
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    const/4 v1, 0x0

    .line 929
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 930
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_27

    .line 932
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 933
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    goto :goto_56

    .line 937
    :cond_2e
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 938
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 939
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 941
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    .line 940
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    if-nez v0, :cond_4f

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    :cond_4f
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_59
    return-object v0
.end method

.method public static applyPolicy(Lcom/android/server/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 8

    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 860
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 863
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 864
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 866
    :cond_13
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compressedFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 867
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto :goto_38

    .line 872
    :cond_21
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 874
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 876
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 877
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 878
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 880
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :cond_38
    :goto_38
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-nez v0, :cond_40

    .line 884
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :cond_40
    if-eqz v0, :cond_44

    move v0, v1

    goto :goto_45

    :cond_44
    move v0, v2

    .line 887
    :goto_45
    invoke-interface {p0, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_50

    move v3, v1

    goto :goto_51

    :cond_50
    move v3, v2

    .line 888
    :goto_51
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x80000

    and-int/2addr v3, p1

    if-eqz v3, :cond_5c

    move v3, v1

    goto :goto_5d

    :cond_5c
    move v3, v2

    .line 889
    :goto_5d
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x100000

    and-int/2addr v3, p1

    if-eqz v3, :cond_68

    move v3, v1

    goto :goto_69

    :cond_68
    move v3, v2

    .line 890
    :goto_69
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x200000

    and-int/2addr v3, p1

    if-eqz v3, :cond_74

    move v3, v1

    goto :goto_75

    :cond_74
    move v3, v2

    .line 891
    :goto_75
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x400000

    and-int/2addr p1, v3

    if-eqz p1, :cond_80

    move p1, v1

    goto :goto_81

    :cond_80
    move p1, v2

    .line 892
    :goto_81
    invoke-interface {v0, p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 896
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    if-eqz p2, :cond_a9

    .line 898
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 899
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    .line 897
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p1

    if-nez p1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v1, v2

    .line 895
    :cond_aa
    :goto_aa
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 903
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p1

    if-nez p1, :cond_ba

    .line 905
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    .line 906
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 909
    :cond_ba
    invoke-static {p0, p3}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->modifySharedLibraries(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    return-void
.end method

.method public static assertCodePolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 579
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isHasCode()Z

    move-result v0

    const-string v1, " code is missing"

    const-string v2, "Package "

    const/4 v3, -0x2

    if-eqz v0, :cond_32

    .line 580
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_32

    .line 581
    :cond_16
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 585
    :cond_32
    :goto_32
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const/4 v0, 0x0

    move v4, v0

    .line 586
    :goto_3e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_82

    .line 588
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitFlags()[I

    move-result-object v5

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    move v5, v0

    :goto_52
    if-eqz v5, :cond_7f

    .line 589
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    goto :goto_7f

    .line 590
    :cond_61
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v4

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_82
    return-void
.end method

.method public static assertMinSignatureSchemeIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 726
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p1

    .line 725
    invoke-static {p1}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p1

    .line 727
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    if-lt v0, p1, :cond_13

    return-void

    .line 729
    :cond_13
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or newer for package "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 709
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_60

    .line 710
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 711
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 712
    :cond_1e
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x7a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t install because "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'s process attribute "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (in package "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_60
    return-void
.end method

.method public static assertProcessesAreValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 686
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProcesses()Ljava/util/Map;

    move-result-object v0

    .line 687
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 688
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 696
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 697
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 698
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 699
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_6a

    .line 689
    :cond_3c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x7a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t install because application tag\'s process attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    return-void
.end method

.method public static assertStaticSharedLibraryIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 600
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e5

    and-int/lit16 p1, p1, 0x2000

    if-nez p1, :cond_dd

    .line 613
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOriginalPackages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 619
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 625
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c5

    .line 631
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 637
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 643
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 649
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 655
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getPermissionGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 661
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 667
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 673
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 679
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7d

    return-void

    .line 680
    :cond_7d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot be overlay targets"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 674
    :cond_85
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare protected broadcasts"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 668
    :cond_8d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare permissions"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 662
    :cond_95
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare features"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 656
    :cond_9d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare permission groups"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 650
    :cond_a5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare broadcast receivers"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 644
    :cond_ad
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare content providers"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 638
    :cond_b5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare services"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :cond_bd
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Static shared libs cannot declare activities"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 626
    :cond_c5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Packages declaring static-shared libs cannot declare shared users"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 620
    :cond_cd
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Packages declaring static-shared libs cannot declare dynamic libs"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 614
    :cond_d5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Packages declaring static-shared libs cannot be renamed"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 607
    :cond_dd
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Packages declaring static-shared libs cannot be instant apps"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 601
    :cond_e5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Packages declaring static-shared libs must target O SDK or higher"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-eqz p5, :cond_10

    .line 967
    new-instance p5, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_14

    .line 968
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J

    move-result-wide v0

    :goto_14
    const-string p5, "PackageManager"

    if-eqz p0, :cond_86

    if-nez p3, :cond_86

    .line 970
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 971
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_86

    .line 972
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 973
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result p2

    if-nez p2, :cond_86

    .line 975
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    if-eqz p2, :cond_68

    .line 976
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    array-length p2, p2

    if-eqz p2, :cond_68

    .line 977
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p2

    if-eqz p2, :cond_68

    .line 981
    new-instance p2, Landroid/content/pm/SigningDetails;

    .line 982
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 981
    invoke-interface {p1, p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-void

    .line 986
    :cond_68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PackageSetting for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 989
    :cond_86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " changed; collecting certs"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_9c

    const-string p2, " (forced)"

    goto :goto_9e

    :cond_9c
    const-string p2, ""

    .line 990
    :goto_9e
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 989
    invoke-static {p5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    const-wide/32 p2, 0x40000

    :try_start_ab
    const-string p0, "collectCertificates"

    .line 994
    invoke-static {p2, p3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 995
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 996
    invoke-static {p0, p1, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 998
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p4

    if-nez p4, :cond_cb

    .line 1002
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_c7
    .catchall {:try_start_ab .. :try_end_c7} :catchall_dd

    .line 1004
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 999
    :cond_cb
    :try_start_cb
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 1000
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p4

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p4, p5, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_dd
    .catchall {:try_start_cb .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception p0

    .line 1004
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1005
    throw p0
.end method

.method public static configurePackageComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    .line 796
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 797
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getComponentsEnabledStates(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 802
    :cond_f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_19
    if-ltz v1, :cond_3b

    .line 803
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 804
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_38

    .line 806
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 810
    :cond_3b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_45
    if-ltz v1, :cond_67

    .line 811
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 812
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_64

    .line 814
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_64
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    .line 818
    :cond_67
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_71
    if-ltz v1, :cond_93

    .line 819
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 820
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_90

    .line 822
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_90
    add-int/lit8 v1, v1, -0x1

    goto :goto_71

    .line 826
    :cond_93
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9d
    if-ltz v1, :cond_bf

    .line 827
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 828
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_bc

    .line 830
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_bc
    add-int/lit8 v1, v1, -0x1

    goto :goto_9d

    :cond_bf
    return-void
.end method

.method public static ensurePackageRenamed(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .registers 3

    .line 761
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 762
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_18

    .line 765
    :cond_15
    invoke-interface {p0, p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :cond_18
    :goto_18
    return-void
.end method

.method public static getAppLib32InstallDir()Ljava/io/File;
    .registers 3

    .line 1033
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app-lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRealPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 742
    invoke-static {p0, p1}, Lcom/android/server/pm/ScanPackageUtils;->isPackageRenamed(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 743
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVendorPartitionVersion()I
    .registers 2

    const-string/jumbo v0, "ro.vndk.version"

    .line 836
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 839
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 841
    :catch_12
    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x2710

    return v0

    :cond_1d
    const/16 v0, 0x1c

    return v0
.end method

.method public static isPackageRenamed(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 2

    .line 751
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getOriginalPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static scanPackageOnlyLI(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;
    .registers 51
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPm.mInstallLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v0

    .line 129
    iget-object v4, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 130
    iget-object v5, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 131
    iget-object v11, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 132
    iget-object v10, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 134
    iget-object v9, v1, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 136
    iget v8, v1, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 137
    iget v7, v1, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 138
    iget-object v15, v1, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 139
    iget-object v14, v1, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 140
    iget-object v13, v1, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 141
    iget-object v12, v1, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 142
    iget-boolean v6, v1, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    .line 152
    sget-boolean v16, Lcom/samsung/android/rune/PMRune;->PM_LDU:Z

    const-string v2, "PackageManager"

    if-eqz v16, :cond_70

    .line 153
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_70

    .line 154
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This package ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is forbidden to install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is forbidden to install"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 161
    :cond_70
    :goto_70
    new-instance v3, Ljava/io/File;

    move/from16 v16, v6

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    and-int/lit16 v6, v7, 0x1000

    const/16 v30, 0x0

    move-object/from16 v31, v2

    if-eqz v6, :cond_85

    const/4 v6, 0x1

    goto :goto_87

    :cond_85
    move/from16 v6, v30

    :goto_87
    if-nez v6, :cond_af

    if-eqz v5, :cond_ab

    .line 174
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v17

    if-eqz v17, :cond_9c

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isStub()Z

    move-result v17

    if-eqz v17, :cond_9c

    goto :goto_ab

    .line 177
    :cond_9c
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v17

    .line 178
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v18

    move/from16 v32, v6

    move-object/from16 v6, v17

    move-object/from16 v33, v18

    goto :goto_b4

    :cond_ab
    :goto_ab
    const/4 v6, 0x0

    const/16 v32, 0x1

    goto :goto_b2

    :cond_af
    move/from16 v32, v6

    const/4 v6, 0x0

    :goto_b2
    const/16 v33, 0x0

    :goto_b4
    const-string v2, " to "

    move-object/from16 v35, v0

    if-eqz v5, :cond_fb

    if-eq v14, v13, :cond_fb

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shared user changed from "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<nothing>"

    if-eqz v14, :cond_db

    move-object/from16 v17, v0

    .line 190
    iget-object v0, v14, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_dd

    :cond_db
    move-object/from16 v17, v0

    :goto_dd
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_e8

    .line 192
    iget-object v0, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_ea

    :cond_e8
    move-object/from16 v0, v17

    :goto_ea
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; replacing with new"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    .line 187
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const/4 v5, 0x0

    .line 198
    :cond_fb
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_119

    .line 199
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v6

    .line 200
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_11c

    :cond_119
    move-object/from16 v19, v6

    const/4 v0, 0x0

    .line 204
    :goto_11c
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13c

    .line 205
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move/from16 v21, v8

    .line 206
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v26, v6

    goto :goto_140

    :cond_13c
    move/from16 v21, v8

    const/16 v26, 0x0

    .line 209
    :goto_140
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v29

    if-nez v5, :cond_14d

    const/16 v36, 0x1

    goto :goto_14f

    :cond_14d
    move/from16 v36, v30

    :goto_14f
    if-eqz v36, :cond_1c9

    and-int/lit16 v5, v7, 0x2000

    if-eqz v5, :cond_157

    const/4 v5, 0x1

    goto :goto_159

    :cond_157
    move/from16 v5, v30

    :goto_159
    const v6, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_163

    const/4 v8, 0x0

    const/16 v22, 0x1

    goto :goto_166

    :cond_163
    move/from16 v22, v30

    const/4 v8, 0x0

    .line 222
    :goto_166
    invoke-static {v4, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v17

    .line 223
    invoke-static {v4, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v18

    .line 226
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v37, v2

    move/from16 v34, v16

    move-object/from16 v2, v19

    .line 228
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v38, v12

    move-object/from16 v12, v16

    .line 229
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v39, v13

    move-object/from16 v13, v16

    .line 230
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v40, v14

    move-object/from16 v14, v16

    .line 231
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v19

    move-object/from16 v24, v15

    move-wide/from16 v15, v19

    const/16 v20, 0x1

    .line 233
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v23

    .line 234
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v25

    .line 235
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibrariesVersions()[J

    move-result-object v27

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMimeGroups()Ljava/util/Set;

    move-result-object v28

    move-object/from16 v41, v2

    move v2, v7

    move-object v7, v10

    move-object/from16 v43, v8

    move/from16 v42, v21

    move-object v8, v11

    move-object v1, v9

    move-object/from16 v9, v24

    move-object/from16 v44, v10

    move-object/from16 v10, v39

    move-object/from16 v45, v11

    move-object v11, v3

    move-object/from16 v19, v38

    move/from16 v21, v5

    move-object/from16 v24, v0

    .line 226
    invoke-static/range {v6 .. v29}, Lcom/android/server/pm/Settings;->createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object v3, v0

    goto :goto_21e

    :cond_1c9
    move-object/from16 v37, v2

    move v2, v7

    move-object v1, v9

    move-object/from16 v44, v10

    move-object/from16 v45, v11

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    move/from16 v34, v16

    move-object/from16 v41, v19

    move/from16 v42, v21

    const/16 v43, 0x0

    .line 239
    new-instance v10, Lcom/android/server/pm/PackageSetting;

    move-object v6, v10

    invoke-direct {v10, v5}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 240
    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    .line 248
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v11

    .line 249
    invoke-static {v4, v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v12

    .line 250
    invoke-static {v4, v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v13

    .line 251
    invoke-static {v4, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v14

    .line 252
    invoke-static {v4, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v15

    .line 253
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v16

    .line 254
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v18

    .line 255
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesStaticLibrariesVersions()[J

    move-result-object v20

    .line 256
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMimeGroups()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v7, v45

    move-object/from16 v8, v40

    move-object/from16 v9, v39

    move-object v5, v10

    move-object v10, v3

    move-object/from16 v17, v0

    move-object/from16 v19, v26

    move-object/from16 v22, v29

    .line 247
    invoke-static/range {v6 .. v22}, Lcom/android/server/pm/Settings;->updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)V

    move-object v3, v5

    .line 259
    :goto_21e
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-object/from16 v0, v38

    .line 260
    invoke-static {v3, v1, v2, v0, v4}, Lcom/android/server/pm/PersonaServiceHelper;->trimPersonaFromInstallation(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    if-eqz v36, :cond_256

    if-eqz v44, :cond_256

    .line 269
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " renamed to replace old package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    .line 274
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_256
    if-nez v0, :cond_25b

    move/from16 v0, v30

    goto :goto_25f

    .line 277
    :cond_25b
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_25f
    if-nez v36, :cond_277

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_267

    const/4 v1, 0x1

    goto :goto_269

    :cond_267
    move/from16 v1, v30

    :goto_269
    and-int/lit16 v5, v2, 0x4000

    move-object/from16 v6, p1

    if-eqz v5, :cond_271

    const/4 v5, 0x1

    goto :goto_273

    :cond_271
    move/from16 v5, v30

    .line 282
    :goto_273
    invoke-static {v6, v3, v0, v1, v5}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    goto :goto_279

    :cond_277
    move-object/from16 v6, p1

    :goto_279
    if-nez v45, :cond_287

    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_28f

    if-eqz v3, :cond_28f

    .line 287
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_28f

    .line 288
    :cond_287
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 292
    :cond_28f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v1

    move-object/from16 v5, v39

    .line 291
    invoke-static {v4, v5, v1}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 294
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 295
    invoke-static {v4}, Lcom/android/server/pm/ScanPackageUtils;->configurePackageComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_2a5
    move-object/from16 v1, p0

    .line 298
    iget-object v5, v1, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v6

    .line 301
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getAppLib32InstallDir()Ljava/io/File;

    move-result-object v7

    and-int/lit8 v8, v2, 0x4

    if-nez v8, :cond_313

    if-eqz v32, :cond_2fe

    const-wide/32 v9, 0x40000

    const-string v11, "derivePackageAbi"

    .line 304
    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v11, v35

    .line 306
    invoke-interface {v11, v4, v6, v5, v7}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v12

    .line 308
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v13, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 309
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v12, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 310
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 316
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_348

    if-nez v6, :cond_348

    if-nez v9, :cond_348

    .line 319
    invoke-interface {v11, v4}, Lcom/android/server/pm/PackageAbiHelper;->getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v9

    .line 321
    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 322
    invoke-virtual {v9, v3}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/PackageSetting;)V

    .line 324
    invoke-interface {v11, v4, v6, v7}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v6

    .line 326
    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_348

    :cond_2fe
    move-object/from16 v11, v35

    move-object/from16 v9, v41

    .line 332
    invoke-interface {v4, v9}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v9

    move-object/from16 v10, v33

    .line 333
    invoke-interface {v9, v10}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 336
    invoke-interface {v11, v4, v6, v7}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v6

    .line 338
    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_348

    :cond_313
    move-object/from16 v11, v35

    and-int/lit16 v9, v2, 0x100

    if-eqz v9, :cond_329

    .line 353
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v9

    .line 354
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto :goto_341

    .line 355
    :cond_329
    invoke-static {v4}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    if-eqz v9, :cond_341

    .line 359
    invoke-interface {v11, v4, v6, v5, v7}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v9

    .line 361
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 362
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 370
    :cond_341
    :goto_341
    invoke-interface {v11, v4, v6, v7}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v6

    .line 372
    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    :cond_348
    :goto_348
    if-eqz v34, :cond_360

    .line 380
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v6

    if-eqz v6, :cond_359

    .line 381
    sget-object v6, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v6, v6, v30

    goto :goto_35d

    :cond_359
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v6, v6, v30

    .line 380
    :goto_35d
    invoke-interface {v4, v6}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :cond_360
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_383

    if-eqz v8, :cond_383

    if-nez v5, :cond_383

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring persisted ABI override for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v31

    .line 390
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_385

    :cond_383
    move-object/from16 v7, v31

    .line 395
    :goto_385
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 396
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 397
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 408
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_3b4

    move-object/from16 v5, v40

    if-eqz v5, :cond_3b4

    .line 426
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v6

    .line 425
    invoke-interface {v11, v6, v4}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-static {v5, v4, v6}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_3b6

    :cond_3b4
    move-object/from16 v5, v43

    :goto_3b6
    if-eqz p2, :cond_3c6

    .line 429
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    const-string v8, "android.permission.FACTORY_TEST"

    .line 430
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c6

    const/4 v6, 0x1

    goto :goto_3c8

    :cond_3c6
    move/from16 v6, v30

    .line 429
    :goto_3c8
    invoke-interface {v4, v6}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 432
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_3d5

    const/4 v6, 0x1

    .line 433
    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageSetting;->setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;

    .line 437
    :cond_3d5
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J

    move-result-wide v8

    const/4 v6, -0x1

    if-ne v0, v6, :cond_3e5

    .line 439
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v10

    goto :goto_3ed

    .line 440
    :cond_3e5
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v10

    :goto_3ed
    const-wide/16 v12, 0x0

    move-object v14, v7

    move-wide/from16 v6, p3

    cmp-long v15, v6, v12

    if-eqz v15, :cond_40a

    cmp-long v10, v10, v12

    if-nez v10, :cond_402

    .line 443
    invoke-virtual {v3, v6, v7, v0}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_425

    :cond_402
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_425

    .line 446
    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_425

    :cond_40a
    cmp-long v2, v10, v12

    if-nez v2, :cond_416

    .line 450
    invoke-virtual {v3, v8, v9, v0}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 451
    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_425

    :cond_416
    and-int/lit8 v0, v42, 0x10

    if-eqz v0, :cond_425

    .line 453
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v6

    cmp-long v0, v8, v6

    if-eqz v0, :cond_425

    .line 456
    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 459
    :cond_425
    :goto_425
    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    .line 461
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 462
    invoke-static {v4, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    .line 463
    invoke-static {v4, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v6

    .line 462
    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/SettingBase;->setPkgFlags(II)Lcom/android/server/pm/SettingBase;

    .line 464
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_44a

    .line 465
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    .line 468
    :cond_44a
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49a

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_46b

    const-string v6, " system"

    goto :goto_46d

    :cond_46b
    const-string v6, ""

    :goto_46d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " volume from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v37

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 479
    :cond_49a
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4aa

    .line 480
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForSdk(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    move-object v7, v0

    goto :goto_4ac

    :cond_4aa
    move-object/from16 v7, v43

    .line 483
    :goto_4ac
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4bc

    .line 485
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForStatic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    move-object v8, v0

    goto :goto_4be

    :cond_4bc
    move-object/from16 v8, v43

    .line 488
    :goto_4be
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4f3

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 492
    invoke-static {v4, v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForDynamic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v6

    .line 491
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4dd

    :cond_4f1
    move-object v9, v0

    goto :goto_4f5

    :cond_4f3
    move-object/from16 v9, v43

    .line 496
    :goto_4f5
    new-instance v10, Lcom/android/server/pm/ScanResult;

    const/4 v2, 0x1

    const/4 v0, 0x1

    xor-int/lit8 v6, v36, 0x1

    const/4 v11, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v5

    move v5, v6

    move v6, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/ScanResult;-><init>(Lcom/android/server/pm/ScanRequest;ZLcom/android/server/pm/PackageSetting;Ljava/util/List;ZILandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V

    return-object v10
.end method

.method public static setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V
    .registers 10

    if-nez p3, :cond_5

    if-nez p4, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_22

    if-eqz p3, :cond_16

    .line 1015
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-nez p0, :cond_16

    .line 1016
    invoke-virtual {p1, v1, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_4a

    :cond_16
    if-eqz p4, :cond_4a

    .line 1017
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 1018
    invoke-virtual {p1, v2, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_4a

    .line 1021
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    array-length p2, p0

    move v0, v2

    :goto_2c
    if-ge v0, p2, :cond_4a

    aget v3, p0, v0

    if-eqz p3, :cond_3c

    .line 1022
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1023
    invoke-virtual {p1, v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_47

    :cond_3c
    if-eqz p4, :cond_47

    .line 1024
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1025
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    :cond_47
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4a
    :goto_4a
    return-void
.end method
