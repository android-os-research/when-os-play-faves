.class public Lcom/android/server/enterprise/general/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# static fields
.field public static final DEFAULT_FONT_VALUE:Ljava/lang/String; = "default"

.field public static final FONT_ASSET_DIR:Ljava/lang/String; = "xml"

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts/"

.field public static final FONT_EXTENSION:Ljava/lang/String; = ".ttf"

.field public static final FONT_SAMSUNGONE_DOWNLOAD:Ljava/lang/String; = "com.monotype.android.font.samsungoneuiregular"

.field public static final FONT_SAMSUNGONE_PRELOAD:Ljava/lang/String; = "com.monotype.android.font.samsungone"

.field public static final TAG:Ljava/lang/String; = "TypefaceFinder"


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/general/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 233
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 235
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1b

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 239
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    .line 434
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 438
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    .line 440
    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    :goto_20
    return-object v1
.end method

.method public findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;
    .registers 7

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findMatchingTypefaceByName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TypefaceFinder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_17
    const/4 v2, 0x0

    .line 464
    iget-object v3, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4e

    .line 468
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/Typeface;

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findMatchingTypeface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v2}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_4e
    :goto_4e
    return-object v2
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "xml"

    .line 123
    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2d

    .line 139
    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_2b

    .line 143
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xml/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 145
    aget-object v3, v1, v0

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/general/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_28

    :catch_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2b
    const/4 p0, 0x1

    return p0

    :catch_2d
    return v0
.end method

.method public getMonospaceEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 5

    const-string v0, "default"

    .line 387
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 393
    :goto_9
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 397
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getMonospaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 403
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_34
    return-void
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 15

    const-string v0, ".ttf"

    const-string v1, "default"

    .line 244
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    .line 246
    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v3, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v3}, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v3, v2

    .line 252
    :goto_1b
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a3

    .line 255
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v4}, Lcom/android/server/enterprise/general/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19f

    .line 261
    iget-object v5, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v5}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/16 v7, 0x2e

    .line 263
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-gez v7, :cond_4f

    .line 266
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    :cond_4f
    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 269
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    .line 270
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    iget-object v6, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v6}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    .line 274
    :try_start_69
    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 275
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 276
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 277
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fonts/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 283
    iget-object v6, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v6}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_9c} :catch_181

    const-string v7, "com.monotype.android.font.samsungone"

    if-eqz v6, :cond_ed

    .line 284
    :try_start_a0
    iget-object v6, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v6}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b6

    goto/16 :goto_19f

    .line 288
    :cond_b6
    iget-object v6, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v6}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.monotype.android.font.samsungoneuiregular"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 290
    iget-object v6, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/general/Typeface;

    .line 291
    invoke-virtual {v9}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d0

    move v6, v8

    goto :goto_e9

    :cond_e8
    move v6, v2

    :goto_e9
    if-eqz v6, :cond_ed

    goto/16 :goto_19f

    .line 301
    :cond_ed
    iget-object v6, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v6}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.monotype.android.font.foundation"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_127

    .line 302
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/general/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 303
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v4}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v8, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 304
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v4}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v8, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_19f

    .line 307
    :cond_127
    iget-object v6, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v6}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 308
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/general/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 309
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v4}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v8, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 310
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v4}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v8, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_19f

    .line 313
    :cond_15f
    invoke-virtual {p2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v4}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v4, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v4}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_180} :catch_181

    goto :goto_19f

    :catch_181
    move-exception v4

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TypefaceFinder"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19f
    :goto_19f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b

    :cond_1a3
    return-void
.end method

.method public getSerifEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 5

    const-string v0, "default"

    .line 345
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 351
    :goto_9
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 355
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getSerifName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 361
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_34
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7

    .line 177
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/android/server/enterprise/general/TypefaceParser;

    invoke-direct {v1}, Lcom/android/server/enterprise/general/TypefaceParser;-><init>()V

    .line 181
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 182
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 183
    invoke-virtual {v1}, Lcom/android/server/enterprise/general/TypefaceParser;->getParsedData()Lcom/android/server/enterprise/general/Typeface;

    move-result-object p2

    const-string v0, "com.monotype.android.font.samsungone"

    .line 184
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p1, "SamsungOneUI-Regular.xml"

    .line 185
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/general/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    goto :goto_31

    .line 187
    :cond_2e
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/general/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 189
    :goto_31
    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/general/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method
