.class public Lcom/android/server/pm/split/DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "DefaultSplitAssetLoader.java"

# interfaces
.implements Lcom/android/server/pm/split/SplitAssetLoader;


# instance fields
.field public mBaseApkAssets:Landroid/content/res/ApkAssets;

.field public final mBaseApkPath:Ljava/lang/String;

.field public mCachedAssetManager:Landroid/content/res/AssetManager;

.field public final mFlags:I

.field public final mSplitApkPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/parsing/PackageLite;I)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mBaseApkPath:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mFlags:I

    return-void
.end method

.method public static loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_22

    .line 53
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_22

    .line 54
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid package file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_22
    :goto_22
    :try_start_22
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object p0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load APK at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public getBaseApkAssets()Landroid/content/res/ApkAssets;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    return-object p0
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 66
    iget-object v1, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_7

    return-object v1

    .line 70
    :cond_7
    iget-object v1, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 71
    array-length v1, v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 75
    iget-object v4, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mBaseApkPath:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v4, v5}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    aput-object v4, v1, v2

    .line 78
    iget-object v4, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 79
    iget-object v4, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    array-length v5, v4

    move v6, v2

    :goto_2b
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    add-int/lit8 v8, v3, 0x1

    .line 80
    iget v9, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v7, v9}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v7

    aput-object v7, v1, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_2b

    .line 84
    :cond_3d
    new-instance v3, Landroid/content/res/AssetManager;

    move-object v9, v3

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 85
    sget v27, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v9 .. v27}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 87
    invoke-virtual {v3, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 89
    iput-object v3, v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v3
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object p0

    return-object p0
.end method
