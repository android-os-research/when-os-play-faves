.class public final Lcom/android/server/pm/dex/DexoptUtils;
.super Ljava/lang/Object;
.source "DexoptUtils.java"


# static fields
.field public static final SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "DexoptUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 37
    invoke-static {}, Lcom/android/internal/os/ClassLoaderFactory;->getPathClassLoaderName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "PCL"

    goto :goto_2b

    .line 303
    :cond_c
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p1, "DLC"

    goto :goto_2b

    .line 306
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported classLoaderName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexoptUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 327
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p0

    .line 328
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1b

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1b
    return-object p1
.end method

.method public static encodeClasspath([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_27

    .line 271
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_27

    .line 274
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, ":"

    .line 277
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 281
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    :goto_27
    const-string p0, ""

    return-object p0
.end method

.method public static encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 254
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string/jumbo v0, "{"

    const/4 v1, 0x1

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    if-nez v1, :cond_27

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    const/4 v1, 0x0

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 261
    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .registers 3

    .line 241
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    .line 242
    invoke-static {v0, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_37
    return-object v0
.end method

.method public static getClassLoaderContext(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .registers 3

    .line 187
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_11

    .line 188
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, v1

    .line 190
    :goto_12
    sget-object v0, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClassLoaderContexts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[Z)[Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;[Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_9

    .line 76
    invoke-static {p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_9
    move-object p1, v0

    .line 80
    :goto_a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getClassLoaderName()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1, p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    new-array p0, v4, [Ljava/lang/String;

    aput-object v1, p0, v3

    return-object p0

    .line 89
    :cond_23
    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptUtils;->getSplitRelativeCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)[Ljava/lang/String;

    move-result-object v2

    .line 93
    new-instance v5, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 99
    array-length v6, v2

    add-int/2addr v6, v4

    new-array v7, v6, [Ljava/lang/String;

    .line 100
    aget-boolean v8, p2, v3

    const/4 v9, 0x0

    if-eqz v8, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v1, v9

    :goto_3f
    aput-object v1, v7, v3

    .line 102
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v1

    .line 104
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isIsolatedSplitLoading()Z

    move-result v8

    if-eqz v8, :cond_bc

    if-eqz v1, :cond_bc

    .line 106
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-nez v8, :cond_54

    goto :goto_bc

    .line 138
    :cond_54
    array-length v8, v2

    new-array v8, v8, [Ljava/lang/String;

    .line 139
    :goto_57
    array-length v10, v2

    if-ge v3, v10, :cond_6b

    .line 140
    aget-object v10, v2, v3

    .line 141
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitClassLoaderNames()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    .line 140
    invoke-static {v10, v11}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 144
    :cond_6b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getClassLoaderName()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v5, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v3, v4

    .line 149
    :goto_74
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_88

    .line 150
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 151
    aget-boolean v10, p2, v5

    if-eqz v10, :cond_85

    .line 153
    invoke-static {v5, v8, v1, v7, v2}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_88
    :goto_88
    if-ge v4, v6, :cond_da

    .line 163
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitClassLoaderNames()[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v4, -0x1

    aget-object v1, v1, v2

    .line 162
    invoke-static {v0, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    aget-boolean v2, p2, v4

    if-eqz v2, :cond_b7

    .line 167
    aget-object v2, v7, v4

    if-nez v2, :cond_9f

    goto :goto_b4

    .line 170
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v7, v4

    .line 169
    invoke-static {v1, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b4
    aput-object v1, v7, v4

    goto :goto_b9

    .line 174
    :cond_b7
    aput-object v9, v7, v4

    :goto_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    :cond_bc
    :goto_bc
    if-ge v4, v6, :cond_da

    .line 112
    aget-boolean v0, p2, v4

    if-eqz v0, :cond_cd

    .line 114
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getClassLoaderName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v5, v0, p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    goto :goto_cf

    .line 116
    :cond_cd
    aput-object v9, v7, v4

    :goto_cf
    add-int/lit8 v0, v4, -0x1

    .line 125
    aget-object v0, v2, v0

    invoke-static {v5, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    :cond_da
    return-object v7
.end method

.method public static getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p4

    .line 224
    :cond_3
    aget-object v0, p3, p0

    if-eqz v0, :cond_8

    return-object v0

    .line 228
    :cond_8
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 229
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_18

    goto :goto_20

    :cond_18
    add-int/lit8 v0, v0, -0x1

    .line 235
    aget-object p1, p1, v0

    invoke-static {p1, p2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 236
    :goto_20
    aput-object p2, p3, p0

    return-object p2
.end method

.method public static getSplitRelativeCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)[Ljava/lang/String;
    .registers 8

    .line 404
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_52

    .line 408
    new-instance v4, Ljava/io/File;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 411
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split paths have different base paths: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DexoptUtils"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_52
    return-object v2
.end method

.method public static processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 358
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8c

    .line 362
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, ""

    const/4 v1, 0x1

    move-object v2, v0

    .line 371
    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_50

    .line 372
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 373
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_4f

    .line 376
    :cond_2e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v2, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4f
    :goto_4f
    return-object v4

    :cond_50
    const/4 v1, 0x0

    .line 382
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 383
    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    return-object v4

    .line 386
    :cond_5e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 387
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 389
    :goto_6d
    array-length v4, p1

    if-ge v1, v4, :cond_83

    .line 390
    aget-object v4, p1, v1

    .line 391
    invoke-static {v0, p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    invoke-static {v5, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 394
    invoke-static {v0, v4}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_83
    return-object v3

    .line 363
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty classLoadersNames"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 359
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The size of the class loader names and the dex paths do not match."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
