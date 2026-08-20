.class public final Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# static fields
.field public static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field public final mConfigSignaturePackage:Ljava/lang/String;

.field public final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field public final mPackageManager:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    .line 67
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_15

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    move v1, v0

    .line 76
    :catch_15
    :goto_15
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/PackageManagerHelper;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 92
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 93
    invoke-interface {p2}, Lcom/android/server/om/PackageManagerHelper;->getConfigSignaturePackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I
    .registers 7

    .line 254
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-interface {v0, v1, v2, p3}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x11

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    .line 260
    :goto_14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->matchesActorSignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    or-int/lit16 v0, v0, 0x80

    .line 267
    :cond_1c
    iget-object p1, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    .line 269
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-interface {p1, p0, v1, p3}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_34

    or-int/lit16 v0, v0, 0x100

    .line 275
    :cond_34
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isVendor()Z

    move-result p0

    if-eqz p0, :cond_3d

    or-int/lit8 p0, v0, 0x4

    return p0

    .line 280
    :cond_3d
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isProduct()Z

    move-result p0

    if-eqz p0, :cond_46

    or-int/lit8 p0, v0, 0x8

    return p0

    .line 285
    :cond_46
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isOdm()Z

    move-result p0

    if-eqz p0, :cond_4f

    or-int/lit8 p0, v0, 0x20

    return p0

    .line 290
    :cond_4f
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isOem()Z

    move-result p0

    if-eqz p0, :cond_58

    or-int/lit8 p0, v0, 0x40

    return p0

    .line 296
    :cond_58
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p0

    if-nez p0, :cond_66

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystemExt()Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_66

    :cond_65
    return v0

    :cond_66
    :goto_66
    or-int/lit8 p0, v0, 0x2

    return p0
.end method

.method public final checkForResourceMapping(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_42

    .line 327
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 328
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "resource-map"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 329
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/overlays/remaps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    const-string v2, "."

    .line 330
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".map"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3f

    return-void

    .line 339
    :cond_3f
    invoke-static {p1}, Lcom/android/server/om/ResourceMapParser;->parseResourceMap(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_42
    return-void
.end method

.method public createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;
    .registers 2

    .line 201
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public createIdmap(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    const-string v13, ". Trying to recreate!"

    const-string v14, ". res = "

    const-string v15, "Locale overlay idmap not up-to-date for "

    const-string v10, ": "

    const-string v9, "Idmap generation retry failed for "

    const/4 v8, 0x0

    const-string v7, "OverlayManager"

    if-eqz v2, :cond_5bb

    if-eqz v3, :cond_5bb

    .line 106
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5bb

    .line 107
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    goto/16 :goto_5bb

    .line 114
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create idmap for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v1, v2, v5}, Lcom/android/server/om/IdmapManager;->checkForResourceMapping(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 125
    :try_start_56
    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v0

    .line 126
    invoke-virtual {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v17

    .line 127
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result v4
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_62} :catch_357
    .catchall {:try_start_56 .. :try_end_62} :catchall_344

    if-nez v4, :cond_1e0

    .line 128
    :try_start_64
    invoke-static/range {p2 .. p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-nez v4, :cond_1e0

    iget-object v4, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6c} :catch_1d5
    .catchall {:try_start_64 .. :try_end_6c} :catchall_1c6

    move-object/from16 v18, v5

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, p3

    move-object/from16 v20, v7

    move-object/from16 v7, p4

    move v8, v0

    move-object/from16 v21, v9

    move/from16 v9, v17

    move-object/from16 v22, v10

    move/from16 v10, p5

    .line 129
    :try_start_80
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v4
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_1b9
    .catchall {:try_start_80 .. :try_end_84} :catchall_1ad

    if-eqz v4, :cond_1a1

    .line 144
    :try_start_86
    invoke-static/range {p2 .. p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_152

    if-eqz v0, :cond_118

    .line 145
    :try_start_8c
    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v0

    .line 146
    invoke-virtual {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    .line 147
    iget-object v2, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v0

    move v7, v9

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v2

    if-nez v2, :cond_118

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ae} :catch_10f

    move-object/from16 v10, v18

    :try_start_b0
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bc} :catch_10d

    const/4 v8, 0x0

    :try_start_bd
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c9} :catch_109

    move-object/from16 v6, v20

    :try_start_cb
    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    .line 153
    iget-object v1, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_f1} :catch_106

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v0

    move-object v14, v6

    move v6, v9

    move/from16 v7, p5

    :try_start_fb
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_ff} :catch_104

    if-eqz v0, :cond_11d

    move/from16 v8, v16

    goto :goto_11d

    :catch_104
    move-exception v0

    goto :goto_115

    :catch_106
    move-exception v0

    move-object v14, v6

    goto :goto_115

    :catch_109
    move-exception v0

    move-object/from16 v14, v20

    goto :goto_115

    :catch_10d
    move-exception v0

    goto :goto_112

    :catch_10f
    move-exception v0

    move-object/from16 v10, v18

    :goto_112
    move-object/from16 v14, v20

    const/4 v8, 0x0

    :goto_115
    move-object/from16 v9, v21

    goto :goto_15a

    :cond_118
    move-object/from16 v10, v18

    move-object/from16 v14, v20

    const/4 v8, 0x0

    :cond_11d
    :goto_11d
    if-nez v8, :cond_151

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    :cond_151
    return v8

    :catch_152
    move-exception v0

    move-object/from16 v10, v18

    move-object/from16 v14, v20

    move-object/from16 v9, v21

    const/4 v8, 0x0

    .line 158
    :goto_15a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    return v8

    :cond_1a1
    move-object/from16 v10, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    move-object/from16 v6, v22

    const/4 v8, 0x0

    goto :goto_1e8

    :catchall_1ad
    move-object/from16 v12, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v7, v22

    goto/16 :goto_323

    :catch_1b9
    move-exception v0

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v6, v22

    goto/16 :goto_331

    :catchall_1c6
    move-object/from16 v32, v10

    move-object v10, v5

    move-object v5, v7

    move-object v7, v13

    move-object v13, v6

    move-object/from16 v6, v32

    move v4, v8

    move-object v12, v10

    move-object v8, v7

    move-object v10, v9

    move-object v9, v5

    goto/16 :goto_354

    :catch_1d5
    move-exception v0

    move-object/from16 v32, v10

    move-object v10, v5

    move-object v5, v7

    move-object v7, v13

    move-object v13, v6

    move-object/from16 v6, v32

    goto/16 :goto_33c

    :cond_1e0
    move-object/from16 v32, v10

    move-object v10, v5

    move-object v5, v7

    move-object v7, v13

    move-object v13, v6

    move-object/from16 v6, v32

    .line 133
    :goto_1e8
    :try_start_1e8
    iget-object v4, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1ea} :catch_33b
    .catchall {:try_start_1e8 .. :try_end_1ea} :catchall_333

    move-object/from16 v23, v5

    move-object v5, v10

    move-object/from16 v24, v6

    move-object/from16 v6, p3

    move-object/from16 v25, v7

    move-object/from16 v7, p4

    move v8, v0

    move-object/from16 v27, v9

    move/from16 v9, v17

    move-object/from16 v18, v10

    move/from16 v10, p5

    :try_start_1fe
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_202} :catch_326
    .catchall {:try_start_1fe .. :try_end_202} :catchall_319

    if-eqz v0, :cond_207

    move/from16 v0, v16

    goto :goto_208

    :cond_207
    const/4 v0, 0x0

    .line 144
    :goto_208
    :try_start_208
    invoke-static/range {p2 .. p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_291

    .line 145
    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v9

    .line 146
    invoke-virtual {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v10

    .line 147
    iget-object v2, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object/from16 v3, v18

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v9

    move v7, v10

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v2

    if-nez v2, :cond_291

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_230} :catch_2ca

    move-object/from16 v8, v18

    :try_start_232
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v7, v25

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_24a} :catch_28f

    move-object/from16 v6, v23

    :try_start_24c
    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    .line 153
    iget-object v1, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_272} :catch_28c

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v9

    move-object v9, v6

    move v6, v10

    move/from16 v7, p5

    :try_start_27c
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_27c .. :try_end_280} :catch_28a

    if-eqz v0, :cond_285

    move/from16 v26, v16

    goto :goto_287

    :cond_285
    const/16 v26, 0x0

    :goto_287
    move/from16 v0, v26

    goto :goto_295

    :catch_28a
    move-exception v0

    goto :goto_2cf

    :catch_28c
    move-exception v0

    move-object v9, v6

    goto :goto_2cf

    :catch_28f
    move-exception v0

    goto :goto_2cd

    :cond_291
    move-object/from16 v8, v18

    move-object/from16 v9, v23

    :goto_295
    if-nez v0, :cond_2c9

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v27

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    :cond_2c9
    return v0

    :catch_2ca
    move-exception v0

    move-object/from16 v8, v18

    :goto_2cd
    move-object/from16 v9, v23

    :goto_2cf
    move-object/from16 v10, v27

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    const/4 v5, 0x0

    return v5

    :catchall_319
    move-object/from16 v9, v23

    move-object/from16 v10, v27

    move-object/from16 v12, v18

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    :goto_323
    const/4 v4, 0x0

    goto/16 :goto_4a6

    :catch_326
    move-exception v0

    move-object/from16 v8, v18

    move-object/from16 v9, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v10, v27

    :goto_331
    const/4 v5, 0x0

    goto :goto_365

    :catchall_333
    move-object/from16 v32, v9

    move-object v9, v5

    move v5, v8

    move-object v8, v10

    move-object/from16 v10, v32

    goto :goto_351

    :catch_33b
    move-exception v0

    :goto_33c
    move-object/from16 v32, v9

    move-object v9, v5

    move v5, v8

    move-object v8, v10

    move-object/from16 v10, v32

    goto :goto_365

    :catchall_344
    move/from16 v32, v8

    move-object v8, v5

    move/from16 v5, v32

    move-object/from16 v33, v13

    move-object v13, v6

    move-object v6, v10

    move-object v10, v9

    move-object v9, v7

    move-object/from16 v7, v33

    :catchall_351
    :goto_351
    move v4, v5

    move-object v12, v8

    :goto_353
    move-object v8, v7

    :goto_354
    move-object v7, v6

    goto/16 :goto_4a6

    :catch_357
    move-exception v0

    move/from16 v32, v8

    move-object v8, v5

    move/from16 v5, v32

    move-object/from16 v33, v13

    move-object v13, v6

    move-object v6, v10

    move-object v10, v9

    move-object v9, v7

    move-object/from16 v7, v33

    .line 136
    :goto_365
    :try_start_365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_36a
    .catchall {:try_start_365 .. :try_end_36a} :catchall_351

    :try_start_36a
    const-string v5, "failed to generate idmap for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: Failed to generate idmap for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V
    :try_end_39c
    .catchall {:try_start_36a .. :try_end_39c} :catchall_4a2

    .line 144
    :try_start_39c
    invoke-static/range {p2 .. p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_421

    .line 145
    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v0

    .line 146
    invoke-virtual {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v17

    .line 147
    iget-object v2, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_3ac
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_3ac} :catch_456

    move-object v3, v8

    move-object/from16 v4, p3

    const/4 v12, 0x0

    move-object/from16 v5, p4

    move-object/from16 v28, v6

    move v6, v0

    move-object/from16 v29, v7

    move/from16 v7, v17

    move-object v12, v8

    move/from16 v8, p5

    :try_start_3bc
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v2

    if-nez v2, :cond_41d

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v8, v29

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    .line 153
    iget-object v1, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v0

    move/from16 v6, v17

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_418
    .catch Ljava/lang/Exception; {:try_start_3bc .. :try_end_418} :catch_41f

    if-eqz v0, :cond_41d

    move/from16 v8, v16

    goto :goto_423

    :cond_41d
    :goto_41d
    const/4 v8, 0x0

    goto :goto_423

    :catch_41f
    move-exception v0

    goto :goto_45a

    :cond_421
    move-object v12, v8

    goto :goto_41d

    :goto_423
    if-nez v8, :cond_455

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    :cond_455
    return v8

    :catch_456
    move-exception v0

    move-object/from16 v28, v6

    move-object v12, v8

    .line 158
    :goto_45a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v28

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4

    :catchall_4a2
    move-object v12, v8

    const/4 v4, 0x0

    goto/16 :goto_353

    .line 144
    :goto_4a6
    :try_start_4a6
    invoke-static/range {p2 .. p2}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0
    :try_end_4aa
    .catch Ljava/lang/Exception; {:try_start_4a6 .. :try_end_4aa} :catch_56f

    if-eqz v0, :cond_536

    move/from16 v6, p5

    move v5, v4

    .line 145
    :try_start_4af
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)I

    move-result v0

    .line 146
    invoke-virtual {v1, v3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v17

    .line 147
    iget-object v2, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_4b9
    .catch Ljava/lang/Exception; {:try_start_4af .. :try_end_4b9} :catch_52d

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v21, v10

    move v10, v5

    move-object/from16 v5, p4

    move v6, v0

    move-object/from16 v30, v7

    move/from16 v7, v17

    move-object/from16 v31, v8

    move/from16 v8, p5

    :try_start_4ca
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v2

    if-nez v2, :cond_529

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    .line 153
    iget-object v1, v1, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v0

    move/from16 v6, v17

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object v0
    :try_end_524
    .catch Ljava/lang/Exception; {:try_start_4ca .. :try_end_524} :catch_52b

    if-eqz v0, :cond_529

    move/from16 v8, v16

    goto :goto_53a

    :cond_529
    :goto_529
    move v8, v10

    goto :goto_53a

    :catch_52b
    move-exception v0

    goto :goto_533

    :catch_52d
    move-exception v0

    move-object/from16 v30, v7

    move-object/from16 v21, v10

    move v10, v5

    :goto_533
    move-object/from16 v1, v21

    goto :goto_574

    :cond_536
    move-object/from16 v21, v10

    move v10, v4

    goto :goto_529

    :goto_53a
    if-nez v8, :cond_56e

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    :cond_56e
    return v8

    :catch_56f
    move-exception v0

    move-object/from16 v30, v7

    move-object v1, v10

    move v10, v4

    .line 158
    :goto_574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->logCriticalInfo(Ljava/lang/String;)V

    return v10

    :cond_5bb
    :goto_5bb
    move-object v9, v7

    move v10, v8

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create idmap for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public deleteFabricatedOverlay(Ljava/lang/String;)Z
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dumpIdmap(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOverlayable(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4

    .line 225
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x1d

    if-lt p0, v1, :cond_16

    .line 226
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result p0

    if-nez p0, :cond_16

    .line 227
    invoke-static {p1}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_16

    return v0

    .line 232
    :cond_16
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isVendor()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 236
    sget-boolean p0, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return p0

    .line 241
    :cond_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p0

    if-nez p0, :cond_38

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSignedWithPlatformKey()Z

    move-result p0

    if-nez p0, :cond_38

    .line 242
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isSamsungThemeOverlay()Z

    move-result p0

    if-nez p0, :cond_38

    .line 243
    invoke-static {p1}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    return v0
.end method

.method public getFabricatedOverlayInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public idmapExists(Landroid/content/om/OverlayInfo;)Z
    .registers 3

    .line 186
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget p1, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/om/IdmapDaemon;->idmapExists(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final matchesActorSignature(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 6

    .line 305
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 308
    :try_start_6
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 309
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-interface {v1, p1, v0, p3}, Lcom/android/server/om/PackageManagerHelper;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 310
    iget-object p1, p1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    if-eqz p1, :cond_32

    .line 311
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 312
    invoke-interface {v0}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    .line 311
    invoke-static {p1, v0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 313
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 314
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 313
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2e} :catch_32

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    return p0

    :catch_32
    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .registers 5

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove idmap for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_19
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to remove idmap for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
