.class public Lcom/android/server/pm/ShortcutLauncher;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutLauncher.java"


# static fields
.field public static final ATTR_LAUNCHER_USER_ID:Ljava/lang/String; = "launcher-user"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final ATTR_PACKAGE_USER_ID:Ljava/lang/String; = "package-user"

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final TAG:Ljava/lang/String; = "ShortcutService"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PIN:Ljava/lang/String; = "pin"

.field public static final TAG_ROOT:Ljava/lang/String; = "launcher-pins"


# instance fields
.field public final mOwnerUserId:I

.field public final mPinnedShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6

    if-eqz p5, :cond_3

    goto :goto_7

    .line 83
    :cond_3
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p5

    .line 82
    :goto_7
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 77
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 84
    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    return-void
.end method

.method public static loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .registers 11

    .line 280
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 283
    :try_start_6
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_a} :catch_5f

    .line 293
    :try_start_a
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    move-object v3, p0

    .line 296
    :goto_f
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1a

    goto :goto_f

    .line 300
    :cond_1a
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 302
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-ne v4, v5, :cond_32

    const-string/jumbo v5, "launcher-pins"

    .line 306
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 307
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v3

    goto :goto_f

    .line 310
    :cond_32
    invoke-static {v4, v6}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    :try_end_35
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_35} :catch_3c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_35} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_35} :catch_3c
    .catchall {:try_start_a .. :try_end_35} :catchall_3a

    goto :goto_f

    .line 317
    :cond_36
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catchall_3a
    move-exception p0

    goto :goto_5b

    :catch_3c
    move-exception p1

    :try_start_3d
    const-string p2, "ShortcutService"

    .line 314
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read file "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_3a

    .line 317
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :goto_5b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 318
    throw p0

    :catch_5f
    return-object p0
.end method

.method public static loadFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "package-name"

    .line 326
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_b

    move v2, p2

    goto :goto_12

    :cond_b
    const-string/jumbo v2, "launcher-user"

    .line 332
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 334
    :goto_12
    new-instance v3, Lcom/android/server/pm/ShortcutLauncher;

    invoke-direct {v3, p1, p2, v1, v2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    const/4 p1, 0x0

    .line 338
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 340
    :goto_1c
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a6

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 341
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_a6

    :cond_2c
    const/4 v4, 0x2

    if-eq v2, v4, :cond_30

    goto :goto_1c

    .line 345
    :cond_30
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 346
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_79

    .line 348
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v5, "package-info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto :goto_79

    .line 353
    :cond_52
    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_5a

    move v2, p2

    goto :goto_61

    :cond_5a
    const-string/jumbo v2, "package-user"

    .line 356
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 358
    :goto_61
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 359
    iget-object v5, v3, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 360
    invoke-static {v2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    .line 359
    invoke-virtual {v5, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v4

    goto :goto_1c

    .line 350
    :cond_71
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v2

    invoke-virtual {v2, p0, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Landroid/util/TypedXmlPullParser;Z)V

    goto :goto_1c

    :cond_79
    :goto_79
    add-int/lit8 v5, v1, 0x2

    if-ne v2, v5, :cond_a1

    .line 366
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v5, "pin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    goto :goto_a1

    :cond_8a
    if-nez p1, :cond_95

    const-string v2, "ShortcutService"

    const-string/jumbo v4, "pin in invalid place"

    .line 369
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_95
    const-string/jumbo v2, "value"

    .line 371
    invoke-static {p0, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    .line 377
    :cond_a1
    :goto_a1
    invoke-static {v2, v4}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto/16 :goto_1c

    :cond_a6
    return-object v3
.end method


# virtual methods
.method public addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 9

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    .line 206
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    :goto_1a
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0, p2, p1, v2, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public canRestoreAnyVersion()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public cleanUpPackage(Ljava/lang/String;I)Z
    .registers 3

    .line 214
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 11

    .line 383
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 385
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Launcher: "

    .line 386
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "  Package user: "

    .line 388
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, "  Owner user: "

    .line 390
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 392
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 394
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 397
    iget-object p3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v0, 0x0

    move v2, v0

    :goto_50
    if-ge v2, p3, :cond_a0

    .line 399
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 401
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 403
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Package: "

    .line 405
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-object v4, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  User: "

    .line 407
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    iget v3, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 410
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 411
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v5, v0

    :goto_84
    if-ge v5, v4, :cond_9d

    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Pinned: "

    .line 415
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_a0
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 424
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public ensurePackageInfo()V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public getAllPinnedShortcutsForTest(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public getOwnerUserId()I
    .registers 1

    .line 95
    iget p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    return p0
.end method

.method public getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    return-object p0
.end method

.method public getShortcutPackageItemFile()Ljava/io/File;
    .registers 4

    .line 438
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 439
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    .line 438
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "launchers"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 443
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public hasPinned(Landroid/content/pm/ShortcutInfo;)Z
    .registers 4

    .line 191
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 192
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final onRestoreBlocked()V
    .registers 5

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_2e

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 113
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 115
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_2e
    return-void
.end method

.method public onRestored(I)V
    .registers 2

    if-eqz p1, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->onRestoreBlocked()V

    :cond_5
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 137
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 142
    :cond_9
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    .line 144
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_19

    .line 146
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 148
    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 157
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    :goto_27
    if-ge v3, p2, :cond_52

    .line 160
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_36

    goto :goto_4f

    .line 165
    :cond_36
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 166
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v5

    if-nez v5, :cond_4c

    if-eqz v1, :cond_4a

    .line 167
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    :cond_4a
    if-eqz p4, :cond_4f

    .line 169
    :cond_4c
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 172
    :cond_52
    iget-object p0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_57
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->isSmartSwitchBackupAllowed()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p2, :cond_17

    .line 235
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 245
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    const/4 v1, 0x0

    const-string/jumbo v2, "launcher-pins"

    .line 250
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package-name"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v3

    int-to-long v5, v3

    const-string/jumbo v3, "launcher-user"

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlSerializer;Z)V

    const/4 v3, 0x0

    move v5, v3

    :goto_49
    if-ge v5, v0, :cond_96

    .line 256
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    if-eqz p2, :cond_5e

    .line 258
    iget v7, v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v8

    if-eq v7, v8, :cond_5e

    goto :goto_93

    :cond_5e
    const-string/jumbo v7, "package"

    .line 262
    invoke-interface {p1, v1, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    iget-object v8, v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-static {p1, v4, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 264
    iget v6, v6, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    int-to-long v8, v6

    const-string/jumbo v6, "package-user"

    invoke-static {p1, v6, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 266
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 267
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    move v9, v3

    :goto_7f
    if-ge v9, v8, :cond_90

    .line 269
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "pin"

    invoke-static {p1, v11, v10}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    .line 271
    :cond_90
    invoke-interface {p1, v1, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_93
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 274
    :cond_96
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
