.class public Lcom/samsung/android/share/SemShareFileProvider;
.super Landroid/content/ContentProvider;
.source "SemShareFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareFileProvider$SimplePathStrategy;,
        Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final blacklist COLUMNS:[Ljava/lang/String;

.field private static final blacklist EXIF_DIR_PATH:Ljava/lang/String; = "/data/semprivateshare"

.field private static final blacklist META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareFileProvider"

.field private static blacklist sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mStrategy:Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 55
    const-string v0, "_display_name"

    const-string v1, "_size"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/share/SemShareFileProvider;->COLUMNS:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/share/SemShareFileProvider;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static varargs blacklist buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .line 497
    move-object v0, p0

    .line 498
    .local v0, "cur":Ljava/io/File;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_12

    aget-object v3, p1, v2

    .line 499
    .local v3, "segment":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 500
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 498
    .end local v3    # "segment":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 503
    :cond_12
    return-object v0
.end method

.method private static blacklist copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I

    .line 513
    new-array v0, p1, [Ljava/lang/Object;

    .line 514
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    return-object v0
.end method

.method private static blacklist copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "original"    # [Ljava/lang/String;
    .param p1, "newLength"    # I

    .line 507
    new-array v0, p1, [Ljava/lang/String;

    .line 508
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    return-object v0
.end method

.method public static blacklist getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 317
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static blacklist getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 307
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 309
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static blacklist getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .line 287
    sget-object v0, Lcom/samsung/android/share/SemShareFileProvider;->sCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 288
    :try_start_3
    sget-object v1, Lcom/samsung/android/share/SemShareFileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2d

    .line 289
    .local v1, "strat":Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
    if-nez v1, :cond_2b

    .line 291
    :try_start_d
    invoke-static {p0, p1}, Lcom/samsung/android/share/SemShareFileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_11} :catch_19
    .catchall {:try_start_d .. :try_end_11} :catchall_2d

    move-object v1, v2

    .line 298
    nop

    .line 299
    :try_start_13
    sget-object v2, Lcom/samsung/android/share/SemShareFileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 295
    :catch_19
    move-exception v2

    .line 296
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "authority":Ljava/lang/String;
    throw v3

    .line 292
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "authority":Ljava/lang/String;
    :catch_22
    move-exception v2

    .line 293
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "authority":Ljava/lang/String;
    throw v3

    .line 301
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "authority":Ljava/lang/String;
    :cond_2b
    :goto_2b
    monitor-exit v0

    .line 302
    return-object v1

    .line 301
    .end local v1    # "strat":Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static blacklist getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 121
    invoke-static {p0, p1}, Lcom/samsung/android/share/SemShareFileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    move-result-object v0

    .line 122
    .local v0, "strategy":Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
    invoke-interface {v0, p2}, Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist modeToMode(Ljava/lang/String;)I
    .registers 4
    .param p0, "mode"    # Ljava/lang/String;

    .line 473
    const-string/jumbo v0, "r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 474
    const/high16 v0, 0x10000000

    .local v0, "modeBits":I
    goto :goto_5e

    .line 475
    .end local v0    # "modeBits":I
    :cond_c
    const-string/jumbo v0, "w"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string/jumbo v0, "wt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_5c

    .line 479
    :cond_1f
    const-string/jumbo v0, "wa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 480
    const/high16 v0, 0x2a000000

    .restart local v0    # "modeBits":I
    goto :goto_5e

    .line 483
    .end local v0    # "modeBits":I
    :cond_2b
    const-string/jumbo v0, "rw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 484
    const/high16 v0, 0x38000000

    .restart local v0    # "modeBits":I
    goto :goto_5e

    .line 486
    .end local v0    # "modeBits":I
    :cond_37
    const-string/jumbo v0, "rwt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 487
    const/high16 v0, 0x3c000000    # 0.0078125f

    .restart local v0    # "modeBits":I
    goto :goto_5e

    .line 491
    .end local v0    # "modeBits":I
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_5c
    :goto_5c
    const/high16 v0, 0x2c000000

    .line 493
    .restart local v0    # "modeBits":I
    :goto_5e
    return v0
.end method

.method private static blacklist parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/samsung/android/share/SemShareFileProvider$SimplePathStrategy;

    invoke-direct {v0, p1}, Lcom/samsung/android/share/SemShareFileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "strat":Lcom/samsung/android/share/SemShareFileProvider$SimplePathStrategy;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/semprivateshare"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "target":Ljava/io/File;
    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareFileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "chooser"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/share/SemShareFileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    .line 333
    return-object v0
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 86
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 92
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_10

    .line 96
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/share/SemShareFileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareFileProvider;->mStrategy:Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    .line 97
    return-void

    .line 93
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_26

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No permissions to delete file calling ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemShareFileProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/share/SemShareFileProvider;->mStrategy:Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    invoke-interface {v0, p1}, Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 249
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 196
    iget-object v0, p0, Lcom/samsung/android/share/SemShareFileProvider;->mStrategy:Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    invoke-interface {v0, p1}, Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 198
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 199
    .local v1, "lastDot":I
    if-ltz v1, :cond_27

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "mime":Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 203
    return-object v3

    .line 207
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "mime":Ljava/lang/String;
    :cond_27
    const-string v2, "application/octet-stream"

    return-object v2
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onCreate()Z
    .registers 2

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/samsung/android/share/SemShareFileProvider;->mStrategy:Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    invoke-interface {v0, p1}, Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 272
    .local v0, "file":Ljava/io/File;
    invoke-static {p2}, Lcom/samsung/android/share/SemShareFileProvider;->modeToMode(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "fileMode":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3e

    const/high16 v2, 0x10000000

    if-eq v1, v2, :cond_3e

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permissions to access openFile in Write mode calling ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemShareFileProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v2, 0x0

    return-object v2

    .line 277
    :cond_3e
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/samsung/android/share/SemShareFileProvider;->mStrategy:Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;

    invoke-interface {v0, p1}, Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 159
    .local v0, "file":Ljava/io/File;
    if-nez p2, :cond_a

    .line 160
    sget-object p2, Lcom/samsung/android/share/SemShareFileProvider;->COLUMNS:[Ljava/lang/String;

    .line 163
    :cond_a
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    .line 164
    .local v1, "cols":[Ljava/lang/String;
    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    .local v2, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 166
    .local v3, "i":I
    array-length v4, p2

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_45

    aget-object v6, p2, v5

    .line 167
    .local v6, "col":Ljava/lang/String;
    const-string v7, "_display_name"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 168
    aput-object v7, v1, v3

    .line 169
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    move v3, v7

    goto :goto_42

    .line 170
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_2b
    const-string v7, "_size"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 171
    aput-object v7, v1, v3

    .line 172
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v3

    move v3, v7

    .line 166
    .end local v6    # "col":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 176
    :cond_45
    invoke-static {v1, v3}, Lcom/samsung/android/share/SemShareFileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v2, v3}, Lcom/samsung/android/share/SemShareFileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 179
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 180
    .local v4, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v4, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 181
    return-object v4
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
