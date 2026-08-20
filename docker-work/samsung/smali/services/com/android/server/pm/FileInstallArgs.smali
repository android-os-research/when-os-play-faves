.class public Lcom/android/server/pm/FileInstallArgs;
.super Lcom/android/server/pm/InstallArgs;
.source "FileInstallArgs.java"


# instance fields
.field public mCodeFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallParams;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 27

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v22, p3

    .line 80
    invoke-static {}, Lcom/android/server/pm/OriginInfo;->fromNothing()Lcom/android/server/pm/OriginInfo;

    move-result-object v2

    sget-object v6, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    sget-object v16, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V

    if-eqz v0, :cond_30

    .line 86
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final cleanUp()Z
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_14

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstallArgs;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public cleanUpResourcesLI()V
    .registers 5

    .line 231
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 232
    iget-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 233
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    const/4 v3, 0x0

    .line 234
    invoke-static {v1, v2, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 236
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 238
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v0

    .line 242
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    .line 243
    iget-object v1, p0, Lcom/android/server/pm/InstallArgs;->mInstructionSets:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/FileInstallArgs;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method

.method public copyApk()I
    .registers 4

    const-wide/32 v0, 0x40000

    const-string v2, "copyApk"

    .line 90
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 92
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->doCopyApk()I

    move-result p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 94
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    throw p0
.end method

.method public final doCopyApk()I
    .registers 6

    const-string v0, "PackageManager"

    .line 99
    iget-object v1, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v2, v1, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 101
    iget-object v0, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    return v3

    .line 106
    :cond_e
    :try_start_e
    iget v1, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_16

    move v1, v3

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 107
    :goto_17
    iget-object v2, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, p0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_23} :catch_6e

    .line 115
    iget-object v1, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 115
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result v1

    if-eq v1, v3, :cond_39

    const-string p0, "Failed to copy package"

    .line 118
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 122
    :cond_39
    iget-object v1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    .line 123
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    const-string/jumbo v4, "lib"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 126
    :try_start_4e
    iget-object v4, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v3

    .line 127
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    invoke-static {v3, v2, p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_60
    .catchall {:try_start_4e .. :try_end_5a} :catchall_5e

    .line 133
    :goto_5a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_69

    :catchall_5e
    move-exception p0

    goto :goto_6a

    :catch_60
    move-exception p0

    :try_start_61
    const-string v1, "Copying native libraries failed"

    .line 130
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    const/16 p0, -0x6e

    goto :goto_5a

    :goto_69
    return p0

    .line 133
    :goto_6a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    throw p0

    :catch_6e
    move-exception p0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create copy file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0
.end method

.method public doPostDeleteLI(Z)Z
    .registers 2

    .line 265
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUpResourcesLI()V

    const/4 p0, 0x1

    return p0
.end method

.method public doPostInstall(II)I
    .registers 3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    :cond_6
    return p1
.end method

.method public doPreInstall(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    :cond_6
    return p1
.end method

.method public doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .registers 10

    const-string v0, "PackageManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    .line 149
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->cleanUp()Z

    return v2

    .line 153
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/FileInstallArgs;->resolveTargetDir()Ljava/io/File;

    move-result-object p1

    .line 154
    iget-object v3, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 156
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 159
    iget-object v4, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v4, :cond_2a

    .line 160
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v4, v1

    goto :goto_2b

    :cond_2a
    move v4, v2

    .line 162
    :goto_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/16 v6, 0x1fd

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    if-eqz v4, :cond_3e

    .line 166
    iget-object v5, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v5, v3, p1}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    goto :goto_49

    .line 168
    :cond_3e
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_49} :catch_8d
    .catch Landroid/system/ErrnoException; {:try_start_2b .. :try_end_49} :catch_8d

    :goto_49
    if-nez v4, :cond_57

    .line 175
    invoke-static {p1}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string p0, "Failed to restorecon"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 181
    :cond_57
    iput-object p1, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    .line 185
    :try_start_59
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_60} :catch_77

    .line 191
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {v3, p1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 193
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {v3, p1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return v1

    :catch_77
    move-exception p0

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_8d
    move-exception p0

    const-string p1, "Failed to rename"

    .line 171
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 247
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p2, :cond_2c

    .line 251
    invoke-static {p2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_10

    aget-object v3, p2, v2

    .line 255
    :try_start_22
    iget-object v4, p0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_22 .. :try_end_29} :catch_29

    :catch_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 249
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "instructionSet == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    return-void
.end method

.method public final resolveTargetDir()Ljava/io/File;
    .registers 3

    .line 201
    iget v0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_12

    const/4 p0, 0x0

    .line 203
    invoke-static {p0}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 205
    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/FileInstallArgs;->mCodeFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
