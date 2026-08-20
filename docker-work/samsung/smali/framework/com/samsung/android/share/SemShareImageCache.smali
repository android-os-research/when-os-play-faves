.class public Lcom/samsung/android/share/SemShareImageCache;
.super Ljava/lang/Object;
.source "SemShareImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;,
        Lcom/samsung/android/share/SemShareImageCache$RetainFragment;,
        Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_DISK_CACHE_ENABLED:Z = true

.field public static final blacklist DEFAULT_DISK_CACHE_SIZE:I = 0x1e00000

.field private static final blacklist DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final blacklist DEFAULT_MEM_CACHE_ENABLED:Z = true

.field public static final blacklist DEFAULT_MEM_CACHE_SIZE:I = 0x7800

.field public static final blacklist ENHANCE_IMAGE_CACHE_DIR:Ljava/lang/String; = "cache"

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareImageCache"


# instance fields
.field private blacklist mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

.field private final blacklist mDiskCacheLock:Ljava/lang/Object;

.field private blacklist mDiskCacheStarting:Z

.field private blacklist mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDiskCacheLock(Lcom/samsung/android/share/SemShareImageCache;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReusableBitmaps(Lcom/samsung/android/share/SemShareImageCache;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/share/SemShareImageCache;->mReusableBitmaps:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemShareDiskLruCache(Lcom/samsung/android/share/SemShareImageCache;)Lcom/samsung/android/share/SemShareDiskLruCache;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteBitmapToCache(Lcom/samsung/android/share/SemShareImageCache;Landroid/graphics/Bitmap;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareImageCache;->writeBitmapToCache(Landroid/graphics/Bitmap;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V
    .registers 3
    .param p1, "cacheParams"    # Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareImageCache;->init(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V

    .line 75
    return-void
.end method

.method private static blacklist bytesToHexString([B)Ljava/lang/String;
    .registers 8
    .param p0, "bytes"    # [B

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_23

    aget-byte v3, p0, v2

    .line 443
    .local v3, "aByte":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "hex":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d

    .line 445
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    :cond_1d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .end local v3    # "aByte":B
    .end local v4    # "hex":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 449
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/samsung/android/share/SemShareImageCache$RetainFragment;
    .registers 4
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .line 523
    const-string v0, "SemShareImageCache"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;

    .line 526
    .local v1, "mRetainFragment":Lcom/samsung/android/share/SemShareImageCache$RetainFragment;
    if-nez v1, :cond_1b

    .line 527
    new-instance v2, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;

    invoke-direct {v2}, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;-><init>()V

    move-object v1, v2

    .line 528
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 531
    :cond_1b
    return-object v1
.end method

.method public static blacklist getBitmapSize(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 465
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    .line 468
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_16

    .line 469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    .line 473
    :cond_16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static blacklist getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .line 417
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 418
    invoke-static {}, Lcom/samsung/android/share/SemShareImageCache;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 419
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 418
    :cond_1c
    :goto_1c
    invoke-static {p0}, Lcom/samsung/android/share/SemShareImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_24
    nop

    .line 421
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_b

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 500
    :cond_b
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/app/FragmentManager;Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)Lcom/samsung/android/share/SemShareImageCache;
    .registers 5
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "cacheParams"    # Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 80
    invoke-static {p0}, Lcom/samsung/android/share/SemShareImageCache;->findOrCreateRetainFragment(Landroid/app/FragmentManager;)Lcom/samsung/android/share/SemShareImageCache$RetainFragment;

    move-result-object v0

    .line 82
    .local v0, "mRetainFragment":Lcom/samsung/android/share/SemShareImageCache$RetainFragment;
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareImageCache;

    .line 84
    .local v1, "imageCache":Lcom/samsung/android/share/SemShareImageCache;
    if-nez v1, :cond_15

    .line 85
    new-instance v2, Lcom/samsung/android/share/SemShareImageCache;

    invoke-direct {v2, p1}, Lcom/samsung/android/share/SemShareImageCache;-><init>(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V

    move-object v1, v2

    .line 86
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    .line 89
    :cond_15
    return-object v1
.end method

.method public static blacklist getUsableSpace(Ljava/io/File;)J
    .registers 6
    .param p0, "path"    # Ljava/io/File;

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 505
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0

    .line 507
    :cond_b
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static blacklist hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 431
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 432
    .local v0, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 433
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/share/SemShareImageCache;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_17

    move-object v0, v1

    .line 436
    .local v0, "cacheKey":Ljava/lang/String;
    goto :goto_21

    .line 434
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 435
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 437
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_21
    return-object v0
.end method

.method private blacklist init(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V
    .registers 4
    .param p1, "cacheParams"    # Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    .line 96
    iget-boolean v0, p1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_1c

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mReusableBitmaps:Ljava/util/Set;

    .line 113
    new-instance v0, Lcom/samsung/android/share/SemShareImageCache$1;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget v1, v1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/share/SemShareImageCache$1;-><init>(Lcom/samsung/android/share/SemShareImageCache;I)V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    .line 149
    :cond_1c
    iget-boolean v0, p1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_23

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareImageCache;->initDiskCache()V

    .line 153
    :cond_23
    return-void
.end method

.method public static blacklist isExternalStorageRemovable()Z
    .registers 2

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 484
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0

    .line 486
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist writeBitmapToCache(Landroid/graphics/Bitmap;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Z
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "editor"    # Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p2, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    move-object v0, v2

    .line 229
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v0, v2

    .line 230
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_27
    .catchall {:try_start_2 .. :try_end_15} :catchall_1c

    .line 235
    nop

    .line 236
    :try_start_16
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 240
    goto :goto_1b

    .line 238
    :catch_1a
    move-exception v2

    .line 230
    :goto_1b
    return v1

    .line 234
    :catchall_1c
    move-exception v1

    .line 235
    if-eqz v0, :cond_25

    .line 236
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_25

    .line 238
    :catch_23
    move-exception v2

    goto :goto_26

    .line 240
    :cond_25
    :goto_25
    nop

    .line 241
    :goto_26
    throw v1

    .line 231
    :catch_27
    move-exception v2

    .line 235
    if-eqz v0, :cond_30

    .line 236
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_30

    .line 238
    :catch_2e
    move-exception v2

    .line 241
    goto :goto_31

    .line 240
    :cond_30
    :goto_30
    nop

    .line 242
    :goto_31
    return v1
.end method


# virtual methods
.method public blacklist addBitmapToCache(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .line 198
    if-eqz p2, :cond_64

    if-nez p3, :cond_5

    goto :goto_64

    .line 202
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 204
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1e

    .line 208
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_15
    new-instance v0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 212
    .restart local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1e
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_58

    .line 213
    instance-of v1, v0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    if-eqz v1, :cond_2d

    .line 216
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->setIsCached(Z)V

    .line 218
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added bitmap to mem cache Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemShareImageCache"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_58
    new-instance v1, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;-><init>(Lcom/samsung/android/share/SemShareImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 222
    .local v1, "bitmapCacheTask":Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    return-void

    .line 199
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bitmapCacheTask":Lcom/samsung/android/share/SemShareImageCache$SemShareBitmapCacheTask;
    :cond_64
    :goto_64
    return-void
.end method

.method public blacklist clearCache()V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_7

    .line 274
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z

    .line 282
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_5a

    if-nez v1, :cond_58

    .line 284
    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->delete()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1c} :catch_1d
    .catchall {:try_start_17 .. :try_end_1c} :catchall_5a

    .line 292
    goto :goto_55

    .line 290
    :catch_1d
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1e
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException occured:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 288
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3b
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    nop

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :goto_55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    .line 295
    :cond_58
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_1e .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public blacklist close()V
    .registers 6

    .line 322
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_31

    if-eqz v1, :cond_2f

    .line 325
    :try_start_7
    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_15

    .line 326
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->close()V

    .line 327
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16
    .catchall {:try_start_7 .. :try_end_15} :catchall_31

    .line 334
    :cond_15
    goto :goto_2f

    .line 332
    :catch_16
    move-exception v1

    .line 333
    .local v1, "e":Ljava/io/IOException;
    :try_start_17
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist flush()V
    .registers 6

    .line 303
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v1, :cond_24

    .line 306
    :try_start_7
    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_26

    .line 312
    goto :goto_24

    .line 310
    :catch_b
    move-exception v1

    .line 311
    .local v1, "e":Ljava/io/IOException;
    :try_start_c
    const-string v2, "SemShareImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v1    # "e":Ljava/io/IOException;
    :cond_24
    :goto_24
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v1
.end method

.method public blacklist getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "data"    # Ljava/lang/String;

    .line 347
    invoke-static {p1}, Lcom/samsung/android/share/SemShareImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "key":Ljava/lang/String;
    const-string v1, "SemShareImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmapFromDiskCache for key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :goto_1f
    :try_start_1f
    iget-boolean v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_89

    if-eqz v2, :cond_2e

    .line 352
    :try_start_23
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29
    .catchall {:try_start_23 .. :try_end_28} :catchall_89

    .line 355
    :goto_28
    goto :goto_1f

    .line 353
    :catch_29
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_28

    .line 357
    :cond_2e
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_89

    const/4 v3, 0x0

    if-eqz v2, :cond_87

    .line 358
    const/4 v4, 0x0

    .line 360
    .local v4, "snapshot":Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    :try_start_34
    invoke-virtual {v2, v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->get(Ljava/lang/String;)Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;

    move-result-object v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_64
    .catchall {:try_start_34 .. :try_end_38} :catchall_62

    move-object v4, v2

    .line 361
    if-nez v4, :cond_43

    .line 362
    nop

    .line 372
    if-eqz v4, :cond_41

    .line 373
    :try_start_3e
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V

    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_89

    .line 362
    return-object v3

    .line 364
    :cond_43
    const/4 v2, 0x0

    :try_start_44
    invoke-virtual {v4, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 365
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_5c

    .line 366
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v5, v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 367
    .local v5, "bufferedInputStream":Ljava/io/BufferedInputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_55} :catch_64
    .catchall {:try_start_44 .. :try_end_55} :catchall_62

    .line 372
    if-eqz v4, :cond_5a

    .line 373
    :try_start_57
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V

    :cond_5a
    monitor-exit v1

    .line 367
    return-object v3

    .line 372
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :cond_5c
    if-eqz v4, :cond_87

    .line 373
    :goto_5e
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_89

    goto :goto_87

    .line 372
    :catchall_62
    move-exception v2

    goto :goto_80

    .line 369
    :catch_64
    move-exception v2

    .line 370
    .local v2, "e":Ljava/io/IOException;
    :try_start_65
    const-string v5, "SemShareImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBitmapFromDiskCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_62

    .line 372
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_87

    .line 373
    goto :goto_5e

    .line 372
    :goto_80
    if-eqz v4, :cond_85

    .line 373
    :try_start_82
    invoke-virtual {v4}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;->close()V

    .line 375
    :cond_85
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareImageCache;
    .end local p1    # "data":Ljava/lang/String;
    throw v2

    .line 377
    .end local v4    # "snapshot":Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareImageCache;
    .restart local p1    # "data":Ljava/lang/String;
    :cond_87
    :goto_87
    monitor-exit v1

    return-object v3

    .line 378
    :catchall_89
    move-exception v2

    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_89

    throw v2
.end method

.method public blacklist getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "memValue":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_c

    .line 257
    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 263
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist initDiskCache()V
    .registers 7

    .line 163
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 165
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget-object v1, v1, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 166
    .local v1, "diskCacheDir":Ljava/io/File;
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget-boolean v2, v2, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_5a

    if-eqz v1, :cond_5a

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 170
    :cond_22
    invoke-static {v1}, Lcom/samsung/android/share/SemShareImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget v4, v4, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheSize:I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_64

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5a

    .line 172
    :try_start_2f
    iget-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    iget v2, v2, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheSize:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v4, v4, v2, v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->open(Ljava/io/File;IIJ)Lcom/samsung/android/share/SemShareDiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/share/SemShareImageCache;->mSemShareDiskLruCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_3c
    .catchall {:try_start_2f .. :try_end_3b} :catchall_64

    .line 180
    goto :goto_5a

    .line 177
    :catch_3c
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    :try_start_3d
    iget-object v3, p0, Lcom/samsung/android/share/SemShareImageCache;->mCacheParams:Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 179
    const-string v3, "SemShareImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "diskCacheDir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5a
    :goto_5a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheStarting:Z

    .line 185
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3d .. :try_end_66} :catchall_64

    throw v1
.end method
