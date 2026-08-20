.class public final Lcom/android/server/pm/ReconcilePackageUtils;
.super Ljava/lang/Object;
.source "ReconcilePackageUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .registers 2

    .line 299
    iget p0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .registers 2

    .line 303
    iget p0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static reconcilePackages(Lcom/android/server/pm/ReconcileRequest;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;)Ljava/util/Map;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ReconcileRequest;",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            "Lcom/android/server/pm/KeySetManagerService;",
            "Lcom/android/server/pm/Settings;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ReconcileFailure;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 46
    iget-object v12, v13, Lcom/android/server/pm/ReconcileRequest;->mScannedPackages:Ljava/util/Map;

    .line 48
    new-instance v11, Landroid/util/ArrayMap;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v11, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 51
    new-instance v10, Landroid/util/ArrayMap;

    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mAllPackages:Ljava/util/Map;

    .line 52
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v10, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 54
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mAllPackages:Ljava/util/Map;

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 56
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 59
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_33
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 60
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/pm/ScanResult;

    .line 63
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v10, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v14, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/ScanResult;)Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_91

    .line 70
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 71
    invoke-static {v9, v1}, Lcom/android/server/pm/SharedLibraryUtils;->addSharedLibraryToPackageVersionMap(Ljava/util/Map;Landroid/content/pm/SharedLibraryInfo;)Z

    move-result v2

    if-eqz v2, :cond_71

    goto :goto_5e

    .line 73
    :cond_71
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shared Library "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is being installed twice in this set!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_91
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mInstallArgs:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/InstallArgs;

    .line 81
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mInstallResults:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/PackageInstalledInfo;

    .line 82
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mPreparedPackages:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PrepareResult;

    const/4 v1, 0x1

    if-eqz v3, :cond_b0

    move v4, v1

    goto :goto_b1

    :cond_b0
    const/4 v4, 0x0

    :goto_b1
    if-eqz v4, :cond_d4

    if-eqz v5, :cond_b8

    if-eqz v0, :cond_b8

    goto :goto_d4

    .line 85
    :cond_b8
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconcile arguments are not balanced for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    :goto_d4
    const/4 v6, 0x0

    if-eqz v4, :cond_11f

    .line 91
    iget-boolean v4, v0, Lcom/android/server/pm/PrepareResult;->mReplace:Z

    if-eqz v4, :cond_11f

    iget-boolean v4, v0, Lcom/android/server/pm/PrepareResult;->mSystem:Z

    if-nez v4, :cond_11f

    .line 92
    iget-object v4, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v4, v4, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_e9

    move v4, v1

    goto :goto_ea

    :cond_e9
    const/4 v4, 0x0

    :goto_ea
    if-eqz v4, :cond_ee

    const/4 v4, 0x0

    goto :goto_f0

    :cond_ee
    const/16 v4, 0x8

    :goto_f0
    or-int/2addr v4, v1

    .line 95
    iget-object v1, v5, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v2, v0, Lcom/android/server/pm/PrepareResult;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    move-object/from16 v18, v9

    iget-object v9, v0, Lcom/android/server/pm/PrepareResult;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    invoke-static {v1, v2, v9, v4, v6}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v1

    if-eqz v1, :cond_101

    move-object v9, v1

    goto :goto_122

    .line 99
    :cond_101
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    const/16 v1, -0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "May not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to replace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_11f
    move-object/from16 v18, v9

    move-object v9, v6

    .line 107
    :goto_122
    iget-object v1, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v2, v1, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 108
    iget v4, v1, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 109
    iget-object v6, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 111
    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    move-object/from16 v27, v10

    .line 113
    iget-object v10, v7, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-nez v10, :cond_135

    const/16 v19, 0x0

    goto :goto_13b

    .line 114
    :cond_135
    invoke-virtual {v14, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/ScanResult;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    move-object/from16 v19, v10

    :goto_13b
    if-eqz v0, :cond_144

    if-eqz v19, :cond_144

    move-object/from16 v10, p3

    move-object/from16 v0, v19

    goto :goto_148

    .line 118
    :cond_144
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    move-object/from16 v10, p3

    :goto_148
    move-object/from16 v19, v11

    .line 122
    invoke-virtual {v10, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    .line 124
    invoke-virtual {v15, v0, v11, v2}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v2

    const-string v10, " signature changed; retaining data."

    move-object/from16 v28, v12

    const-string v12, "System package "

    const/4 v14, 0x5

    if-eqz v2, :cond_1a9

    .line 126
    invoke-virtual {v15, v0, v6}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_162

    goto :goto_17f

    :cond_162
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_188

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v14, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 141
    :goto_17f
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_2e6

    .line 131
    :cond_188
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    const/4 v1, -0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " upgrade keys do not match the previously installed version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 145
    :cond_1a9
    :try_start_1a9
    iget-object v2, v13, Lcom/android/server/pm/ReconcileRequest;->mVersionInfos:Ljava/util/Map;

    .line 146
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 147
    invoke-static {v2}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v24

    .line 148
    invoke-static {v2}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v25

    if-eqz v3, :cond_1c2

    .line 149
    iget v2, v3, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    if-ne v2, v14, :cond_1c2

    const/16 v26, 0x1

    goto :goto_1c4

    :cond_1c2
    const/16 v26, 0x0

    .line 154
    :goto_1c4
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v23

    move-object/from16 v20, v0

    move-object/from16 v21, v11

    move-object/from16 v22, v1

    .line 152
    invoke-static/range {v20 .. v26}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v1
    :try_end_1d2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1a9 .. :try_end_1d2} :catch_254
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a9 .. :try_end_1d2} :catch_24b

    .line 162
    :try_start_1d2
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-eqz v11, :cond_23c

    .line 173
    iget-object v2, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 175
    invoke-virtual {v2, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v14

    if-eq v14, v2, :cond_22b

    .line 182
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_222

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 183
    invoke-interface/range {v21 .. v21}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_219

    move-object/from16 v22, v0

    .line 184
    invoke-interface/range {v21 .. v21}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_202
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1d2 .. :try_end_202} :catch_247
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d2 .. :try_end_202} :catch_24b

    move/from16 v23, v1

    .line 185
    :try_start_204
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21d

    .line 187
    invoke-interface/range {v21 .. v21}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v1, 0x2

    .line 186
    invoke-virtual {v14, v0, v1}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object v14, v0

    goto :goto_21d

    :cond_219
    move-object/from16 v22, v0

    move/from16 v23, v1

    :cond_21d
    :goto_21d
    move-object/from16 v0, v22

    move/from16 v1, v23

    goto :goto_1ea

    :cond_222
    move-object/from16 v22, v0

    move/from16 v23, v1

    .line 191
    iget-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v14, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_22f

    :cond_22b
    move-object/from16 v22, v0

    move/from16 v23, v1

    .line 194
    :goto_22f
    iget-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_240

    .line 195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;
    :try_end_237
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_204 .. :try_end_237} :catch_238
    .catch Ljava/lang/IllegalArgumentException; {:try_start_204 .. :try_end_237} :catch_24b

    goto :goto_240

    :catch_238
    move-exception v0

    move/from16 v1, v23

    goto :goto_256

    :cond_23c
    move-object/from16 v22, v0

    move/from16 v23, v1

    :cond_240
    :goto_240
    move-object/from16 v10, v22

    move/from16 v12, v23

    const/4 v11, 0x0

    goto/16 :goto_2e6

    :catch_247
    move-exception v0

    move/from16 v23, v1

    goto :goto_256

    :catch_24b
    move-exception v0

    .line 253
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Signing certificates comparison made on incomparable signing details but somehow passed verifySignatures!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_254
    move-exception v0

    const/4 v1, 0x0

    :goto_256
    and-int/lit8 v2, v4, 0x10

    if-eqz v2, :cond_316

    .line 202
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-eqz v11, :cond_2c8

    .line 213
    iget-object v2, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-eqz v2, :cond_2ba

    .line 215
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 216
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 214
    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v2

    if-nez v2, :cond_2ba

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v2, 0x0

    .line 217
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_297

    .line 224
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    const/16 v1, -0x68

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature mismatch for shared user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 233
    :cond_297
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature mismatch on system package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for shared user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2ba
    iget-object v2, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 243
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 244
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    const/4 v2, 0x1

    goto :goto_2c9

    :cond_2c8
    const/4 v2, 0x0

    .line 247
    :goto_2c9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    .line 249
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object v10, v0

    move v12, v1

    move v11, v2

    .line 259
    :goto_2e6
    new-instance v0, Lcom/android/server/pm/ReconciledPackage;

    iget-object v4, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v1, v13, Lcom/android/server/pm/ReconcileRequest;->mPreparedPackages:Ljava/util/Map;

    .line 261
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/PrepareResult;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v14, v8

    move-object v8, v9

    move-object/from16 v13, v18

    move-object/from16 v9, v17

    move-object/from16 v15, v27

    move-object/from16 v13, v19

    move-object/from16 v17, v28

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/ReconciledPackage;-><init>(Lcom/android/server/pm/ReconcileRequest;Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PrepareResult;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V

    .line 259
    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, p1

    move-object v11, v13

    move-object v10, v15

    move-object/from16 v12, v17

    move-object/from16 v9, v18

    move-object/from16 v13, p0

    move-object/from16 v15, p2

    goto/16 :goto_33

    .line 200
    :cond_316
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1

    :cond_31c
    move-object/from16 v18, v9

    move-object v15, v10

    move-object v13, v11

    move-object/from16 v17, v12

    .line 266
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_378

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, v17

    .line 274
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ScanResult;

    .line 275
    iget-object v4, v3, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v5, v4, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_373

    iget v4, v4, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_34d

    goto :goto_375

    .line 281
    :cond_34d
    :try_start_34d
    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ReconciledPackage;

    iget-object v3, v3, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v3, v3, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-object/from16 v4, p1

    move-object/from16 v5, v18

    .line 282
    invoke-virtual {v4, v3, v15, v5}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    :try_end_361
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_34d .. :try_end_361} :catch_366

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    goto :goto_32a

    :catch_366
    move-exception v0

    .line 286
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_373
    move-object/from16 v4, p1

    :goto_375
    move-object/from16 v17, v2

    goto :goto_32a

    :cond_378
    return-object v13
.end method
