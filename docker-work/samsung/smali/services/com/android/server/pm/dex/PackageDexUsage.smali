.class public Lcom/android/server/pm/dex/PackageDexUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;,
        Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final CODE_PATH_LINE_CHAR:Ljava/lang/String; = "+"

.field public static final DEX_LINE_CHAR:Ljava/lang/String; = "#"

.field public static final LOADING_PACKAGE_CHAR:Ljava/lang/String; = "@"

.field public static final MAX_SECONDARY_FILES_PER_OWNER:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PACKAGE_DEX_USAGE_VERSION:I = 0x2

.field public static final PACKAGE_DEX_USAGE_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

.field public static final SPLIT_CHAR:Ljava/lang/String; = ","

.field public static final TAG:Ljava/lang/String; = "PackageDexUsage"

.field public static final UNSUPPORTED_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnsupportedClassLoaderContext="

.field public static final VARIABLE_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=VariableClassLoaderContext="


# instance fields
.field public final mPackageUseInfoMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageUseInfoMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string/jumbo v0, "package-dex-usage.list"

    const-string v1, "PackageDexUsage_DiskWriter"

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 657
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 658
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 659
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public clearUsedByOtherApps(Ljava/lang/String;)Z
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 549
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 551
    monitor-exit v0

    return p0

    .line 553
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->clearCodePathUsedByOtherApps()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 554
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final clonePackageUseInfoMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 665
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 666
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 667
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo-IA;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 669
    :cond_34
    monitor-exit v1

    return-object v0

    :catchall_36
    move-exception p0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public dump()Ljava/lang/String;
    .registers 2

    .line 684
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 685
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 686
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 646
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 647
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 648
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 649
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 652
    :cond_38
    monitor-exit v1

    return-object v0

    :catchall_3a
    move-exception p0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 p1, 0x0

    if-nez p0, :cond_f

    goto :goto_15

    .line 637
    :cond_f
    new-instance v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo-IA;)V

    move-object p1, v1

    :goto_15
    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p0

    .line 638
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final isSupportedVersion(I)Z
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public final maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 464
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public maybeWriteAsync()V
    .registers 2

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    return-void
.end method

.method public read()V
    .registers 2

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    return-void
.end method

.method public read(Ljava/io/Reader;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 323
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 324
    new-instance v2, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 326
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17b

    const-string v4, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_164

    const/16 v4, 0x24

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 337
    invoke-virtual {v0, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->isSupportedVersion(I)Z

    move-result v4

    if-nez v4, :cond_48

    const-string v0, "PackageDexUsage"

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected package-dex-use version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Not reading from it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_48
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 349
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_52
    if-ge v8, v6, :cond_60

    aget-object v9, v5, v8

    .line 350
    invoke-static {v9}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_60
    const/4 v5, 0x0

    move-object v6, v5

    move-object v8, v6

    .line 352
    :goto_63
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_152

    const-string v10, "#"

    .line 353
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_12e

    if-eqz v6, :cond_126

    .line 366
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 369
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11e

    const-string v12, ","

    .line 373
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 374
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_107

    .line 378
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v10

    .line 379
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->readClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "=UnsupportedClassLoaderContext="

    .line 381
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9a

    goto/16 :goto_14f

    .line 387
    :cond_9a
    aget-object v14, v12, v7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 388
    aget-object v11, v12, v11

    invoke-virtual {v0, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 389
    new-instance v15, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v15, v11, v14, v13, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v10, 0x2

    .line 392
    :goto_b3
    array-length v11, v12

    if-ge v10, v11, :cond_e2

    .line 393
    aget-object v11, v12, v10

    .line 394
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 395
    invoke-static {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoaderIsas(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v11

    aget-object v13, v12, v10

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_de

    :cond_c8
    const-string v13, "PackageDexUsage"

    .line 400
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported ISA when parsing PackageDexUsage: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_de
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_b3

    .line 403
    :cond_e2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_ff

    const-string v5, "PackageDexUsage"

    .line 404
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore dexPath when parsing PackageDexUsage because of unsupported isas. dexPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f

    .line 408
    :cond_ff
    invoke-static {v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14f

    .line 375
    :cond_107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PackageDexUsage line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_11e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find dexUseInfo line"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Malformed PackageDexUsage file. Expected package line before dex line."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12e
    const-string v5, "+"

    .line 409
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_146

    .line 413
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v9

    .line 415
    invoke-static {v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmPrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14f

    .line 419
    :cond_146
    new-instance v8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v8, v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v9

    :goto_14f
    const/4 v5, 0x0

    goto/16 :goto_63

    .line 424
    :cond_152
    iget-object v2, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v2

    .line 425
    :try_start_155
    iget-object v3, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 426
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 427
    monitor-exit v2

    return-void

    :catchall_161
    move-exception v0

    monitor-exit v2
    :try_end_163
    .catchall {:try_start_155 .. :try_end_163} :catchall_161

    throw v0

    .line 333
    :cond_164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_17b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No version line found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readBoolean(Ljava/lang/String;)Z
    .registers 4

    const-string p0, "0"

    .line 678
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const-string p0, "1"

    .line 679
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 680
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bool encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 436
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find the classLoaderContext line."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 55
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public readInternal(Ljava/lang/Void;)V
    .registers 5

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    const/4 v0, 0x0

    .line 311
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_13} :catch_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_24
    .catchall {:try_start_5 .. :try_end_13} :catchall_22

    .line 312
    :try_start_13
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_20
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1d
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 318
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_34

    :catchall_1a
    move-exception p0

    move-object v0, v1

    goto :goto_2d

    :catch_1d
    move-exception p0

    move-object v0, v1

    goto :goto_25

    :catch_20
    move-object v0, v1

    goto :goto_31

    :catchall_22
    move-exception p0

    goto :goto_2d

    :catch_24
    move-exception p0

    :goto_25
    :try_start_25
    const-string p1, "PackageDexUsage"

    const-string v1, "Failed to parse package dex usage."

    .line 316
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    goto :goto_31

    .line 318
    :goto_2d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 319
    throw p0

    .line 318
    :catch_31
    :goto_31
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_34
    return-void
.end method

.method public final readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 450
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1f

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1f
    return-object p1

    .line 448
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find the loadingPackages line."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 14

    .line 126
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    if-eqz p7, :cond_c8

    const-string v0, "=UnsupportedClassLoaderContext="

    .line 132
    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const-string p0, "PackageDexUsage"

    const-string p1, "Unsupported context?"

    .line 133
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 137
    :cond_19
    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 139
    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v3

    .line 140
    :try_start_22
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    if-nez v4, :cond_51

    .line 143
    new-instance p8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {p8, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_37

    .line 148
    invoke-static {p8, p2, p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$mmergePrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4a

    .line 152
    :cond_37
    new-instance p5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {p5, v0, p3, p7, p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, p6, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    .line 158
    :goto_4a
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    monitor-exit v3

    return v2

    :cond_51
    if-eqz p5, :cond_59

    .line 165
    invoke-static {v4, p2, p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$mmergePrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v3

    return p0

    .line 167
    :cond_59
    new-instance p5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {p5, v0, p3, p7, p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object p4

    invoke-virtual {p0, p1, p6, p4}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    .line 172
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    if-nez p1, :cond_89

    .line 175
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 p3, 0x64

    if-ge p1, p3, :cond_87

    .line 176
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v3

    return v2

    .line 179
    :cond_87
    monitor-exit v3

    return p0

    .line 182
    :cond_89
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result p4

    if-ne p3, p4, :cond_9a

    .line 197
    invoke-static {p1, p5, p8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$mmerge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Z)Z

    move-result p1

    if-nez p1, :cond_97

    if-eqz p0, :cond_98

    :cond_97
    move v1, v2

    :cond_98
    monitor-exit v3

    return v1

    .line 191
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Trying to change ownerUserId for  dex path "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_c5
    move-exception p0

    .line 201
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_22 .. :try_end_c7} :catchall_c5

    throw p0

    .line 130
    :cond_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null classLoaderContext"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_d0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "loaderIsa "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is unsupported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z
    .registers 5

    .line 618
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return v0

    .line 622
    :cond_e
    invoke-static {p0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result p0

    if-ne p0, p3, :cond_1d

    .line 623
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method public removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 608
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    if-nez p1, :cond_10

    const/4 p0, 0x0

    .line 611
    monitor-exit v0

    return p0

    .line 613
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 614
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public removePackage(Ljava/lang/String;)Z
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 563
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 564
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public removeUserPackage(Ljava/lang/String;I)Z
    .registers 9

    .line 575
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 578
    monitor-exit v0

    return v2

    .line 581
    :cond_10
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    .line 582
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 583
    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3a

    .line 584
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 585
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v4

    if-ne v4, p2, :cond_1c

    .line 586
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v2, v5

    goto :goto_1c

    .line 592
    :cond_3a
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 593
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result p2

    if-nez p2, :cond_50

    .line 594
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    .line 597
    :cond_50
    monitor-exit v0

    return v2

    :catchall_52
    move-exception p0

    .line 598
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public syncData(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 478
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 479
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 480
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 481
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_d

    .line 488
    :cond_26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 489
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_38

    .line 492
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 496
    :cond_38
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    .line 497
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 498
    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 499
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 500
    invoke-static {v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 502
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_44

    .line 507
    :cond_68
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 509
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmPrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    .line 510
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 511
    :cond_7a
    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 512
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 513
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 514
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 516
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_7a

    .line 519
    :cond_96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 521
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 522
    :cond_a0
    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 523
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 524
    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 525
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 526
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_a0

    .line 532
    :cond_bc
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v1

    .line 533
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 536
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_d

    .line 540
    :cond_d1
    monitor-exit v0

    return-void

    :catchall_d3
    move-exception p0

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_3 .. :try_end_d5} :catchall_d3

    throw p0
.end method

.method public write(Ljava/io/Writer;)V
    .registers 12

    .line 264
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->clonePackageUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    .line 269
    invoke-virtual {v1, p1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 270
    invoke-virtual {v1, p1}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 276
    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmPrimaryCodePaths(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "@"

    const-string v6, ","

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 282
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    .line 288
    :cond_88
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->-$$Nest$fgetmDexUseInfoMap(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    new-array v4, p1, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    .line 292
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmIsUsedByOtherApps(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v8

    .line 293
    invoke-virtual {p0, v8}, Lcom/android/server/pm/dex/PackageDexUsage;->writeBoolean(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 292
    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoaderIsas(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_106

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e7

    .line 297
    :cond_106
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v7

    .line 299
    invoke-static {v6, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v1, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_94

    .line 303
    :cond_12c
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    return-void
.end method

.method public final writeBoolean(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    :goto_7
    return-object p0
.end method

.method public bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 55
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public writeInternal(Ljava/lang/Void;)V
    .registers 4

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 230
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_19

    .line 231
    :try_start_8
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 234
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_27

    :catch_17
    move-exception p0

    goto :goto_1b

    :catch_19
    move-exception p0

    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_20

    .line 237
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_20
    const-string p1, "PackageDexUsage"

    const-string v0, "Failed to write usage for dex files"

    .line 239
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public writeNow()V
    .registers 2

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method
