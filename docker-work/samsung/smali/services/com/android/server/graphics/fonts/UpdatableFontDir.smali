.class public final Lcom/android/server/graphics/fonts/UpdatableFontDir;
.super Ljava/lang/Object;
.source "UpdatableFontDir.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    }
.end annotation


# static fields
.field public static final RANDOM_DIR_PREFIX:Ljava/lang/String; = "~~"

.field public static final TAG:Ljava/lang/String; = "UpdatableFontDir"


# instance fields
.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mConfigSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mConfigVersion:I

.field public final mCurrentTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mFilesDir:Ljava/io/File;

.field public final mFontFileInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

.field public mLastModifiedMillis:J

.field public final mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;


# direct methods
.method public static synthetic $r8$lambda$iYVxOYBBE_Bpnm1W_1x0Bsd0uVU(Ljava/util/Map;)Landroid/text/FontConfig;
    .registers 1

    invoke-static {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->lambda$new$0(Ljava/util/Map;)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V
    .registers 12

    .line 142
    new-instance v5, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 152
    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 153
    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    .line 154
    iput-object p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    .line 155
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 156
    iput-object p5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    .line 157
    iput-object p6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    return-void
.end method

.method public static deleteAllFiles(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    const-string v0, "Failed to delete "

    const-string v1, "UpdatableFontDir"

    .line 612
    :try_start_4
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_d

    goto :goto_1f

    .line 614
    :catchall_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_1f
    :try_start_1f
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_35

    .line 619
    :catchall_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method public static getRandomDir(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 395
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 399
    :cond_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 401
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    return-object v3
.end method

.method public static synthetic lambda$new$0(Ljava/util/Map;)Landroid/text/FontConfig;
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z
    .registers 11

    .line 422
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J

    move-result-wide v3

    .line 429
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_19

    goto :goto_27

    :cond_19
    move v1, v2

    goto :goto_27

    .line 431
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gtz p2, :cond_19

    :goto_27
    if-eqz v1, :cond_38

    if-eqz p3, :cond_34

    if-eqz v0, :cond_34

    .line 435
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 437
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V

    goto :goto_41

    :cond_38
    if-eqz p3, :cond_41

    .line 440
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_41
    :goto_41
    return v1
.end method

.method public getConfigVersion()I
    .registers 1

    .line 592
    iget p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    return p0
.end method

.method public getFontFamilyMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v0

    .line 597
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 598
    :goto_a
    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 599
    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 600
    invoke-virtual {p0, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 602
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return-object v1
.end method

.method public final getFontRevision(Ljava/io/File;)J
    .registers 3

    .line 506
    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getRevision(Ljava/io/File;)J

    move-result-wide p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p0

    :catch_7
    move-exception p0

    const-string p1, "UpdatableFontDir"

    const-string v0, "Failed to read font file"

    .line 508
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getPostScriptMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 532
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 533
    :goto_6
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 534
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 535
    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    return-object v0
.end method

.method public final getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J
    .registers 10

    .line 447
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 449
    :goto_7
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 450
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    move v4, v0

    .line 451
    :goto_1c
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 452
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$Font;

    .line 453
    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    move-object v1, v5

    goto :goto_3f

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_42
    const-wide/16 p1, -0x1

    if-nez v1, :cond_47

    return-wide p1

    .line 463
    :cond_47
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 464
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    goto :goto_56

    :cond_52
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v0

    .line 465
    :goto_56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5d

    return-wide p1

    .line 468
    :cond_5d
    invoke-virtual {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_6c

    const-string p0, "UpdatableFontDir"

    const-string p1, "Invalid preinstalled font file"

    .line 470
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return-wide v0
.end method

.method public getSystemFontConfig()Landroid/text/FontConfig;
    .registers 9

    .line 541
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig;

    .line 542
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 543
    iget-object v1, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 545
    new-instance v3, Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 553
    :goto_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_44

    .line 554
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p0, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 556
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 560
    :cond_44
    new-instance v1, Landroid/text/FontConfig;

    .line 561
    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    return-object v1
.end method

.method public final installFontFile(Ljava/io/FileDescriptor;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    const-string v0, "Failed to read PostScript name from font file"

    const-string v1, "Failed to change mode to 711"

    .line 303
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getRandomDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_c9

    .line 311
    :try_start_11
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1c9

    invoke-static {v3, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_1a} :catch_c2

    .line 319
    :try_start_1a
    new-instance v3, Ljava/io/File;

    const-string v5, "font.ttf"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_bd

    .line 320
    :try_start_21
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_b4
    .catchall {:try_start_21 .. :try_end_26} :catchall_bd

    .line 321
    :try_start_26
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_aa

    .line 322
    :try_start_2d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_b4
    .catchall {:try_start_2d .. :try_end_30} :catchall_bd

    .line 330
    :try_start_30
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->setUpFsverity(Ljava/lang/String;[B)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_a0
    .catchall {:try_start_30 .. :try_end_39} :catchall_bd

    const/4 p1, -0x3

    .line 339
    :try_start_3a
    iget-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {p2, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->buildFontFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_40} :catch_99
    .catchall {:try_start_3a .. :try_end_40} :catchall_bd

    if-eqz p2, :cond_92

    .line 350
    :try_start_42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    iget-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-interface {p2, v3, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result p2
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_bd

    if-eqz p2, :cond_8a

    .line 358
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x1a4

    invoke-static {p2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_58
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_58} :catch_83
    .catchall {:try_start_4f .. :try_end_58} :catchall_bd

    .line 364
    :try_start_58
    invoke-virtual {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object p2
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_bd

    .line 368
    :try_start_5c
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-virtual {p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->tryToCreateTypeface(Ljava/io/File;)V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_7a

    .line 375
    :try_start_65
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p1

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    move-result p0

    if-eqz p0, :cond_71

    return-void

    .line 377
    :cond_71
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 p1, -0x5

    const-string p2, "Downgrading font file is forbidden."

    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_7a
    move-exception p0

    .line 370
    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v0, "Failed to create Typeface from file"

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_83
    move-exception p0

    .line 360
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {p1, v4, v1, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 352
    :cond_8a
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Failed to move verified font file."

    invoke-direct {p0, v4, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 346
    :cond_92
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 p1, -0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_99
    move-exception p0

    .line 341
    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_a0
    move-exception p0

    .line 333
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 p2, -0x2

    const-string v0, "Failed to setup fs-verity."

    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_aa
    .catchall {:try_start_65 .. :try_end_aa} :catchall_bd

    :catchall_aa
    move-exception p0

    .line 320
    :try_start_ab
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b3

    :catchall_af
    move-exception p1

    :try_start_b0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b3
    throw p0
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b4} :catch_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_bd

    :catch_b4
    move-exception p0

    .line 323
    :try_start_b5
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to write font file to storage."

    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_bd
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_bd

    :catchall_bd
    move-exception p0

    .line 384
    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 386
    throw p0

    :catch_c2
    move-exception p0

    .line 313
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {p1, v4, v1, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 305
    :cond_c9
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Failed to create font directory."

    invoke-direct {p0, v4, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public loadFontFileMap()V
    .registers 14

    const-string v0, "UpdatableFontDir"

    .line 166
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v1, 0x0

    .line 167
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    const/4 v3, 0x1

    .line 168
    iput v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 171
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v4

    .line 172
    iget-wide v5, v4, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iput-wide v5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 174
    iget-object v5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_41

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_d8

    .line 210
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    return-void

    :cond_41
    const/4 v6, 0x0

    .line 181
    :try_start_42
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_45
    if-ge v9, v7, :cond_ea

    aget-object v10, v5, v9

    .line 182
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "~~"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_77

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dir found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_42 .. :try_end_6a} :catchall_d8

    .line 210
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    return-void

    .line 186
    :cond_77
    :try_start_77
    iget-object v11, v4, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9b

    .line 187
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleting obsolete dir: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {v10}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    goto :goto_b4

    .line 191
    :cond_9b
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_b7

    .line 192
    array-length v12, v11

    if-eq v12, v3, :cond_a5

    goto :goto_b7

    .line 196
    :cond_a5
    aget-object v10, v11, v8

    invoke-virtual {p0, v10}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v10

    if-nez v6, :cond_b1

    .line 198
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v6

    .line 200
    :cond_b1
    invoke-virtual {p0, v10, v6, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    :goto_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 193
    :cond_b7
    :goto_b7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected files in dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_77 .. :try_end_cb} :catchall_d8

    .line 210
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    return-void

    :catchall_d8
    move-exception v3

    :try_start_d9
    const-string v4, "Failed to load font mappings."

    .line 206
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catchall {:try_start_d9 .. :try_end_de} :catchall_eb

    .line 210
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_ea
    return-void

    :catchall_eb
    move-exception v0

    .line 210
    iget-object v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 211
    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 212
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 214
    throw v0
.end method

.method public final lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .registers 2

    .line 408
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    return-object p0
.end method

.method public final putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V
    .registers 3

    .line 412
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .registers 3

    .line 565
    new-instance v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 566
    :try_start_5
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_b} :catch_20

    .line 567
    :try_start_b
    invoke-static {p0, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_14

    if-eqz p0, :cond_20

    .line 568
    :try_start_10
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_13} :catch_20

    goto :goto_20

    :catchall_14
    move-exception v1

    if-eqz p0, :cond_1f

    .line 566
    :try_start_17
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p0

    :try_start_1c
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    :goto_20
    return-object v0
.end method

.method public final resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;
    .registers 16

    .line 515
    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 517
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6e

    .line 518
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 519
    iget-object v5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    if-nez v5, :cond_45

    .line 521
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to lookup font file that has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UpdatableFontDir"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 524
    :cond_45
    new-instance v12, Landroid/text/FontConfig$Font;

    invoke-static {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->-$$Nest$fgetmFile(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v8

    .line 525
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v9

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    move-object v4, v12

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v13

    invoke-direct/range {v4 .. v11}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 527
    :cond_6e
    new-instance p0, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object p1

    .line 528
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    return-object p0
.end method

.method public update(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 224
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v3

    if-eqz v3, :cond_2d

    if-eq v3, v2, :cond_1a

    goto :goto_4

    .line 230
    :cond_1a
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 226
    :cond_2d
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 236
    :cond_3c
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 238
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 239
    :goto_4d
    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 240
    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 241
    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 244
    :cond_67
    iget-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 247
    :try_start_69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 248
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v6

    if-eqz v6, :cond_8e

    if-eq v6, v2, :cond_82

    goto :goto_6d

    .line 254
    :cond_82
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 251
    :cond_8e
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v1

    .line 250
    invoke-virtual {p0, v6, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->installFontFile(Ljava/io/FileDescriptor;[B)V

    goto :goto_6d

    .line 261
    :cond_9e
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v1

    if-eqz v1, :cond_b9

    goto :goto_a6

    .line 263
    :cond_b9
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v1, -0x9

    const-string v2, "Required fonts are not available"

    invoke-direct {p1, v1, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 270
    :cond_c3
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 272
    new-instance p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 273
    iget-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iput-wide v6, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 274
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fe

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 275
    iget-object v7, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    .line 277
    :cond_fe
    iget-object v1, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 279
    iget p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I
    :try_end_10f
    .catchall {:try_start_69 .. :try_end_10f} :catchall_110

    return-void

    :catchall_110
    move-exception p1

    .line 283
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 284
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 285
    iput-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 287
    throw p1
.end method

.method public final validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->hasFsverity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 489
    :try_start_c
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getPostScriptName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_3a

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-eqz p0, :cond_22

    .line 501
    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    return-object p0

    .line 497
    :cond_22
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v0, -0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font validation failed. Could not read font revision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 491
    :catch_3a
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v0, -0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font validation failed. Could not read PostScript name name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 483
    :cond_52
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v0, -0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font validation failed. Fs-verity is not enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 578
    :try_start_1
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 579
    invoke-static {v0, p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 580
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    if-eqz v0, :cond_18

    .line 583
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 585
    :cond_18
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v0, -0x6

    const-string v1, "Failed to write config XML."

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
