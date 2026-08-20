.class public final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 62
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 63
    :cond_15
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 64
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 65
    :cond_25
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 66
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 67
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 68
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 69
    :cond_45
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 70
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 71
    :cond_55
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 72
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 73
    :cond_65
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_75

    .line 74
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 75
    :cond_75
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    const-string v1, "Can\'t canonicalize code path "

    const-string v2, "PackageManager"

    if-eqz p0, :cond_c6

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 77
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 78
    array-length v4, p0

    const/4 v5, 0x2

    if-le v4, v5, :cond_af

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_f3

    .line 81
    :cond_af
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_f3

    .line 88
    :cond_c6
    :try_start_c6
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 91
    :goto_ce
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_d7

    move-object p0, v3

    move-object v3, v4

    goto :goto_ce

    .line 96
    :cond_d7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized code path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_f3} :catch_f8

    .line 104
    :goto_f3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :catch_f8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 114
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v2

    :cond_14
    const-string v1, ".apk"

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, ".tmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_41

    .line 122
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t look like an APK"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PackageManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_41
    :goto_41
    const/16 p0, 0x2e

    .line 119
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, 0x0

    .line 120
    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 13

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_d

    if-nez p5, :cond_d

    move p4, v1

    goto :goto_e

    :cond_d
    move p4, v2

    .line 158
    :goto_e
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result p5

    const/4 v3, 0x0

    const-string/jumbo v4, "lib"

    if-eqz p5, :cond_72

    if-eqz p4, :cond_62

    .line 163
    invoke-static {p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object p3

    .line 164
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p3

    .line 170
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p4, "lib64"

    if-eqz p3, :cond_31

    move-object p5, p4

    goto :goto_32

    :cond_31
    move-object p5, v4

    .line 172
    :goto_32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    aput-object p5, v6, v2

    aput-object p2, v6, v1

    invoke-static {v0, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    .line 173
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    .line 175
    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz p0, :cond_6f

    if-eqz p3, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v4, p4

    .line 177
    :goto_4e
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array p1, v5, [Ljava/lang/String;

    aput-object v4, p1, v2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_6f

    .line 183
    :cond_62
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    :cond_6f
    :goto_6f
    move-object p1, p5

    move v1, v2

    goto :goto_9b

    .line 193
    :cond_72
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    .line 196
    new-instance p1, Ljava/io/File;

    .line 197
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object p2, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz p2, :cond_9b

    .line 200
    new-instance p2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 201
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 206
    :cond_9b
    :goto_9b
    new-instance p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {p0, p5, v1, p1, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-gez p1, :cond_11

    const/16 v0, -0x72

    if-eq p1, v0, :cond_11

    const/16 v0, -0x71

    if-ne p1, v0, :cond_b

    goto :goto_11

    .line 132
    :cond_b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 10

    .line 142
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v4

    move-object v1, p3

    move v5, p2

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object p0

    return-object p0
.end method

.method public derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 307
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v6

    move-object/from16 v3, p4

    move/from16 v7, p2

    .line 309
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    .line 315
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->shouldExtractLibs(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v1

    .line 317
    iget-object v2, v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 318
    iget-boolean v0, v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 319
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    .line 326
    :try_start_31
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v5
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_153
    .catchall {:try_start_31 .. :try_end_35} :catchall_150

    .line 333
    :try_start_35
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isMultiArch()Z

    move-result v2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_14d
    .catchall {:try_start_35 .. :try_end_3e} :catchall_14a

    const-string v7, "copyNativeBinaries"

    const-string v8, "findSupportedAbi"

    const/16 v9, -0x6e

    const/16 v10, -0x72

    const-wide/32 v11, 0x40000

    if-eqz v2, :cond_cc

    .line 341
    :try_start_4b
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v13, v2

    if-lez v13, :cond_65

    if-eqz v1, :cond_5a

    .line 343
    invoke-static {v11, v12, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 344
    invoke-static {v5, v6, v2, v0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v13

    goto :goto_61

    .line 348
    :cond_5a
    invoke-static {v11, v12, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 349
    invoke-static {v5, v2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v13

    .line 352
    :goto_61
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_64} :catch_14d
    .catchall {:try_start_4b .. :try_end_64} :catchall_14a

    goto :goto_66

    :cond_65
    move v13, v10

    :goto_66
    const-string v14, "Shared library native lib extraction not supported"

    if-ltz v13, :cond_79

    .line 356
    :try_start_6a
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15

    if-eqz v15, :cond_79

    if-nez v1, :cond_73

    goto :goto_79

    .line 357
    :cond_73
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, v9, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_79
    :goto_79
    const-string v15, "Error unpackaging 32 bit native libs for multiarch app."

    .line 361
    invoke-static {v15, v13}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    .line 364
    sget-object v15, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v15

    if-lez v4, :cond_98

    if-eqz v1, :cond_8d

    .line 366
    invoke-static {v11, v12, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 367
    invoke-static {v5, v6, v15, v0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v0

    goto :goto_94

    .line 371
    :cond_8d
    invoke-static {v11, v12, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 372
    invoke-static {v5, v15}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    :goto_94
    move v10, v0

    .line 375
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    :cond_98
    const-string v0, "Error unpackaging 64 bit native libs for multiarch app."

    .line 378
    invoke-static {v0, v10}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    if-ltz v10, :cond_b2

    if-eqz v1, :cond_ae

    .line 383
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto :goto_ae

    .line 384
    :cond_a8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, v9, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 387
    :cond_ae
    :goto_ae
    aget-object v0, v15, v10
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_b0} :catch_14d
    .catchall {:try_start_6a .. :try_end_b0} :catchall_14a

    move-object v1, v0

    goto :goto_b3

    :cond_b2
    const/4 v1, 0x0

    :goto_b3
    if-ltz v13, :cond_c9

    .line 391
    :try_start_b5
    aget-object v0, v2, v13

    if-ltz v10, :cond_145

    .line 393
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isUse32BitAbi()Z

    move-result v2
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_bd} :catch_c6
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_14a

    if-eqz v2, :cond_c2

    move-object v4, v1

    goto/16 :goto_146

    :cond_c2
    move-object v4, v0

    move-object v0, v1

    goto/16 :goto_146

    :catch_c6
    move-exception v0

    goto/16 :goto_156

    :cond_c9
    move-object v0, v1

    goto/16 :goto_145

    :cond_cc
    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_d5

    :try_start_d0
    new-array v13, v2, [Ljava/lang/String;

    aput-object p3, v13, v4

    goto :goto_d7

    .line 405
    :cond_d5
    sget-object v13, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 417
    :goto_d7
    sget-object v14, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_f4

    if-nez p3, :cond_f4

    .line 418
    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v14

    if-eqz v14, :cond_f4

    .line 419
    sget-object v13, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v13

    if-lez v14, :cond_ea

    goto :goto_f5

    .line 423
    :cond_ea
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x10

    const-string v2, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f4
    move v2, v4

    :goto_f5
    if-eqz v1, :cond_ff

    .line 432
    invoke-static {v11, v12, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 433
    invoke-static {v5, v6, v13, v0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v0

    goto :goto_106

    .line 436
    :cond_ff
    invoke-static {v11, v12, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 437
    invoke-static {v5, v13}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 439
    :goto_106
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    if-gez v0, :cond_125

    if-ne v0, v10, :cond_10e

    goto :goto_125

    .line 442
    :cond_10e
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_125
    :goto_125
    if-ltz v0, :cond_138

    .line 448
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_130

    .line 452
    aget-object v0, v13, v0

    goto :goto_145

    .line 449
    :cond_130
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Shared library with native libs must be multiarch"

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_138
    if-ne v0, v10, :cond_13f

    if-eqz p3, :cond_13f

    move-object/from16 v0, p3

    goto :goto_145

    :cond_13f
    if-eqz v2, :cond_144

    .line 457
    aget-object v0, v13, v4
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_143} :catch_14d
    .catchall {:try_start_d0 .. :try_end_143} :catchall_14a

    goto :goto_145

    :cond_144
    const/4 v0, 0x0

    :cond_145
    :goto_145
    const/4 v4, 0x0

    .line 463
    :goto_146
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_175

    :catchall_14a
    move-exception v0

    move-object v4, v5

    goto :goto_195

    :catch_14d
    move-exception v0

    const/4 v1, 0x0

    goto :goto_156

    :catchall_150
    move-exception v0

    const/4 v4, 0x0

    goto :goto_195

    :catch_153
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_156
    :try_start_156
    const-string v2, "PackageManager"

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get canonical file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catchall {:try_start_156 .. :try_end_170} :catchall_14a

    .line 463
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    const/4 v4, 0x0

    .line 469
    :goto_175
    new-instance v1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v0, Landroid/util/Pair;

    .line 472
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v9

    move-object v5, v1

    move-object/from16 v6, p4

    move/from16 v10, p2

    .line 471
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 463
    :goto_195
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 464
    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_e

    .line 510
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 512
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    .line 517
    :goto_f
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p0

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p2, :cond_31

    .line 522
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_14

    .line 526
    :cond_31
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    goto :goto_14

    .line 531
    :cond_38
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_7a

    .line 532
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instruction set mismatch, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_57

    const-string v5, "[caller]"

    goto :goto_58

    :cond_57
    move-object v5, v1

    .line 536
    :goto_58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " whereas "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    .line 539
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    if-nez v0, :cond_14

    move-object v1, v2

    move-object v0, v3

    goto :goto_14

    :cond_7f
    if-nez v0, :cond_82

    return-object p0

    :cond_82
    if-eqz v1, :cond_89

    .line 557
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    .line 561
    :cond_89
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    :goto_8d
    return-object p0
.end method

.method public final getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 9

    .line 230
    new-instance p0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v0

    const-string/jumbo v1, "lib"

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 239
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "lib64"

    invoke-direct {v0, v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    .line 241
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    goto :goto_82

    .line 244
    :cond_3b
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_60

    aget-object p3, p0, v2

    .line 246
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_60

    .line 247
    aget-object p0, p0, v2

    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    goto :goto_61

    :cond_60
    move p0, v2

    .line 252
    :goto_61
    sget-object p3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    aget-object v0, p3, v2

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 254
    aget-object p3, p3, v2

    invoke-static {p3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    goto :goto_82

    :cond_81
    move p2, v2

    :goto_82
    const/4 p3, 0x0

    if-eqz p0, :cond_8f

    if-nez p2, :cond_8f

    .line 266
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    :goto_8b
    move-object v4, p3

    move-object p3, p0

    move-object p0, v4

    goto :goto_da

    :cond_8f
    if-eqz p2, :cond_98

    if-nez p0, :cond_98

    .line 272
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    goto :goto_8b

    :cond_98
    if-eqz p2, :cond_d9

    if-eqz p0, :cond_d9

    .line 282
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isMultiArch()Z

    move-result p0

    if-nez p0, :cond_bd

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_bd
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d0

    .line 288
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p3, p0, v2

    .line 289
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    goto :goto_da

    .line 291
    :cond_d0
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p3, p0, v2

    .line 292
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    goto :goto_da

    :cond_d9
    move-object p0, p3

    .line 298
    :goto_da
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {p1, p3, p0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 4

    .line 212
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object p0

    return-object p0
.end method

.method public final shouldExtractLibs(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z
    .registers 5

    .line 478
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExtractNativeLibs()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    move p0, v0

    .line 480
    :goto_10
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p2, :cond_19

    move p0, v0

    .line 484
    :cond_19
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, p0

    :goto_2b
    return v0
.end method
