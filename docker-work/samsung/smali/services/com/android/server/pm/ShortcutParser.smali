.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ShortcutService"

.field public static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field public static final TAG_DATA:Ljava/lang/String; = "data"

.field public static final TAG_INTENT:Ljava/lang/String; = "intent"

.field public static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field public static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 44

    if-eqz p10, :cond_5

    const/16 v0, 0x20

    goto :goto_7

    :cond_5
    const/16 v0, 0x40

    :goto_7
    or-int/lit16 v0, v0, 0x100

    if-eqz p9, :cond_d

    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    or-int v22, v0, v1

    xor-int/lit8 v27, p10, 0x1

    .line 434
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    move-object v1, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v20

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    move/from16 v11, p6

    move/from16 v14, p7

    move/from16 v18, p8

    move/from16 v23, p9

    move-object/from16 v30, p11

    invoke-direct/range {v1 .. v31}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 4

    .line 355
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 358
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 359
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_28

    .line 365
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_1c
    :try_start_1c
    const-string p1, "ShortcutService"

    const-string v0, "android:name for shortcut category must be string literal."

    .line 361
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    const/4 p1, 0x0

    .line 365
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_28
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 366
    throw p1
.end method

.method public static parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 4

    .line 467
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 470
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const-string p1, "ShortcutService"

    const-string v0, "android:name must be string literal."

    .line 471
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_28

    const/4 p1, 0x0

    .line 476
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    .line 474
    :cond_20
    :try_start_20
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 476
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_28
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    throw p1
.end method

.method public static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .registers 4

    .line 482
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x4

    .line 485
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const-string p1, "ShortcutService"

    const-string v0, "android:targetClass must be provided."

    .line 487
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_2c

    .line 492
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 490
    :cond_23
    :try_start_23
    new-instance v0, Lcom/android/server/pm/ShareTargetInfo;

    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 492
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_2c
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    throw p1
.end method

.method public static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .registers 12

    .line 498
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 501
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const-string p1, "ShortcutService"

    const-string v0, "android:mimeType must be string literal."

    .line 502
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_4b

    const/4 p1, 0x0

    .line 515
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_20
    const/4 v0, 0x1

    .line 505
    :try_start_21
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    .line 506
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    .line 508
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x6

    .line 509
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x5

    .line 510
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 511
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 512
    new-instance p1, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_4b

    .line 515
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_4b
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 516
    throw p1
.end method

.method public static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .registers 21

    move-object v0, p0

    move-object/from16 v5, p3

    .line 372
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v1, 0x2

    .line 375
    :try_start_12
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_b2

    const/4 v3, 0x3

    const-string v4, "ShortcutService"

    const/4 v6, 0x0

    if-eq v2, v3, :cond_34

    .line 376
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:shortcutId must be string literal. activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_b2

    .line 415
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    .line 379
    :cond_34
    :try_start_34
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    .line 380
    invoke-virtual {v13, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/4 v1, 0x0

    .line 381
    invoke-virtual {v13, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 382
    invoke-virtual {v13, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v2, 0x4

    .line 383
    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v2, 0x5

    .line 384
    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/4 v2, 0x6

    .line 386
    invoke-virtual {v13, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_63

    .line 389
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_64

    :cond_63
    move-object v14, v6

    .line 392
    :goto_64
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:shortcutId must be provided. activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_34 .. :try_end_7e} :catchall_b2

    .line 415
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_82
    if-nez v8, :cond_9c

    .line 397
    :try_start_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_84 .. :try_end_98} :catchall_b2

    .line 415
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v6

    :cond_9c
    move-object v1, p0

    move/from16 v2, p4

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v8

    move v7, v9

    move v8, v12

    move/from16 v9, p5

    move-object v12, v14

    .line 401
    :try_start_aa
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZLjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_b2

    .line 415
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_b2
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4f

    .line 77
    :cond_e
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 80
    :try_start_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move-object v8, v1

    :goto_17
    if-ge v3, v2, :cond_39

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_24

    goto :goto_36

    .line 89
    :cond_24
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 88
    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_36

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move-object v9, p3

    .line 91
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_36} :catch_3a

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_39
    return-object v8

    :catch_3a
    move-exception p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    :try_start_4
    const-string v1, "android.app.shortcuts"

    .line 117
    invoke-virtual {v0, v7, v1}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_381

    if-nez v9, :cond_12

    if-eqz v9, :cond_11

    .line 348
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_11
    return-object p4

    .line 122
    :cond_12
    :try_start_12
    new-instance v10, Landroid/content/ComponentName;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v11, p2

    invoke-direct {v10, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v13

    .line 144
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 150
    :goto_35
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v6, 0x1

    if-eq v8, v6, :cond_379

    const/4 v6, 0x3

    if-ne v8, v6, :cond_45

    .line 151
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    if-lez v18, :cond_379

    .line 152
    :cond_45
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 153
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_37e

    const-string/jumbo v11, "shortcut"

    const/4 v0, 0x2

    move-object/from16 v19, v10

    const-string v10, "ShortcutService"

    move-object/from16 v20, v12

    const/4 v12, 0x3

    if-ne v8, v12, :cond_112

    if-ne v6, v0, :cond_112

    .line 156
    :try_start_5c
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_112

    if-nez v4, :cond_68

    move/from16 v21, v3

    goto/16 :goto_124

    .line 164
    :cond_68
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 165
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no intent. Skipping it."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_105

    .line 171
    :cond_93
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    if-lt v3, v13, :cond_cb

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcuts found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping the rest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_5c .. :try_end_c7} :catchall_37e

    .line 348
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v5

    :cond_cb
    const/4 v12, 0x0

    .line 182
    :try_start_cc
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const v6, 0x1000c000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_d8
    .catchall {:try_start_cc .. :try_end_d8} :catchall_37e

    .line 187
    :try_start_d8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_e7
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_e7} :catch_100
    .catchall {:try_start_d8 .. :try_end_e7} :catchall_37e

    .line 195
    :try_start_e7
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_f0

    .line 198
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    const/4 v2, 0x0

    :cond_f0
    if-nez v5, :cond_f8

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 205
    :cond_f8
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_105

    :catch_100
    const-string v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    .line 192
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_e7 .. :try_end_105} :catchall_37e

    :goto_105
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    const/4 v4, 0x0

    goto/16 :goto_35

    :cond_112
    const-string/jumbo v12, "share-target"

    move/from16 v21, v3

    const/4 v3, 0x3

    if-ne v8, v3, :cond_185

    if-ne v6, v0, :cond_185

    .line 216
    :try_start_11c
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    if-nez v1, :cond_132

    :goto_124
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    move/from16 v3, v21

    goto/16 :goto_35

    :cond_132
    if-eqz v2, :cond_170

    .line 224
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_170

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_141

    goto :goto_170

    .line 229
    :cond_141
    new-instance v3, Lcom/android/server/pm/ShareTargetInfo;

    .line 230
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    iget-object v1, v1, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    move-object/from16 v22, v4

    .line 231
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p5

    .line 232
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_18e

    :cond_170
    :goto_170
    move-object/from16 v0, p5

    move-object/from16 v22, v4

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    const/4 v1, 0x0

    goto/16 :goto_35

    :cond_185
    move-object/from16 v0, p5

    move-object/from16 v22, v4

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    const/4 v1, 0x2

    :goto_18e
    if-eq v8, v1, :cond_19a

    :goto_190
    move-object/from16 v1, p0

    move-object v11, v5

    move-object/from16 v4, v19

    move-object/from16 v2, v20

    const/4 v8, 0x0

    goto/16 :goto_367

    :cond_19a
    const/4 v8, 0x1

    if-ne v6, v8, :cond_1a7

    const-string/jumbo v1, "shortcuts"

    .line 245
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    goto :goto_190

    :cond_1a7
    const/4 v1, 0x2

    if-ne v6, v1, :cond_20b

    .line 248
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_205

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    move-object/from16 v4, v19

    move-object v11, v5

    move/from16 v5, p3

    move/from16 v17, v8

    const/4 v8, 0x0

    move/from16 v6, v16

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_1ce

    :goto_1c6
    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object/from16 v2, v20

    goto/16 :goto_367

    :cond_1ce
    if-eqz v11, :cond_1f5

    .line 259
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1d6
    if-ltz v1, :cond_1f5

    .line 260
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    const-string v1, "Duplicate shortcut ID detected. Skipping it."

    .line 261
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c6

    :cond_1f2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d6

    :cond_1f5
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object v5, v11

    move-object/from16 v10, v19

    move-object/from16 v12, v20

    move/from16 v3, v21

    move-object/from16 v1, v23

    :goto_202
    const/4 v2, 0x0

    goto/16 :goto_375

    :cond_205
    move-object v11, v5

    move/from16 v17, v8

    const/4 v8, 0x0

    const/4 v1, 0x2

    goto :goto_20f

    :cond_20b
    move-object v11, v5

    move/from16 v17, v8

    const/4 v8, 0x0

    :goto_20f
    if-ne v6, v1, :cond_235

    .line 270
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_235

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    .line 271
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v3

    if-nez v3, :cond_225

    move-object/from16 v4, v19

    goto/16 :goto_367

    .line 278
    :cond_225
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v1, v3

    move-object v5, v11

    move-object/from16 v10, v19

    move/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_202

    :cond_235
    move v3, v1

    move-object/from16 v2, v20

    move-object/from16 v1, p0

    const/4 v4, 0x3

    if-ne v6, v4, :cond_298

    const-string/jumbo v4, "intent"

    .line 281
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_298

    if-eqz v22, :cond_28f

    .line 283
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_24f

    goto :goto_28f

    .line 288
    :cond_24f
    iget-object v3, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v9, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_288

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut intent action must be provided. activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v10, v4

    move-object v5, v11

    move/from16 v3, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    const/4 v4, 0x0

    goto/16 :goto_375

    :cond_288
    move-object/from16 v4, v19

    .line 295
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_367

    :cond_28f
    :goto_28f
    move-object/from16 v4, v19

    const-string v3, "Ignoring excessive intent tag."

    .line 284
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_296
    .catchall {:try_start_11c .. :try_end_296} :catchall_37e

    goto/16 :goto_367

    :cond_298
    move-object/from16 v4, v19

    const-string v5, "Empty category found. activity="

    const/4 v12, 0x3

    if-ne v6, v12, :cond_2de

    :try_start_29f
    const-string v12, "categories"

    .line 298
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2dd

    if-eqz v22, :cond_367

    .line 300
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2b1

    goto/16 :goto_367

    .line 303
    :cond_2b1
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2cf

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_367

    :cond_2cf
    if-nez v24, :cond_2d7

    .line 310
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    goto :goto_2d9

    :cond_2d7
    move-object/from16 v5, v24

    .line 312
    :goto_2d9
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_317

    :cond_2dd
    const/4 v12, 0x3

    :cond_2de
    if-ne v6, v12, :cond_327

    const-string v12, "category"

    .line 315
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_325

    if-nez v23, :cond_2ec

    goto/16 :goto_367

    .line 319
    :cond_2ec
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_30a

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_367

    :cond_30a
    if-nez v24, :cond_312

    .line 326
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    goto :goto_314

    :cond_312
    move-object/from16 v5, v24

    .line 328
    :goto_314
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_317
    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v10, v4

    move-object v2, v5

    move-object v5, v11

    move/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v1, v23

    goto :goto_375

    :cond_325
    const/4 v5, 0x3

    goto :goto_328

    :cond_327
    move v5, v12

    :goto_328
    if-ne v6, v5, :cond_354

    const-string v5, "data"

    .line 331
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_354

    if-nez v23, :cond_335

    goto :goto_367

    .line 335
    :cond_335
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v3

    if-nez v3, :cond_350

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data tag found. activity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_367

    .line 340
    :cond_350
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_367

    :cond_354
    const-string v5, "Invalid tag \'%s\' found at depth %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v8

    .line 344
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v17

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_367
    .catchall {:try_start_29f .. :try_end_367} :catchall_37e

    :cond_367
    :goto_367
    move-object/from16 v7, p1

    move-object v0, v1

    move-object v12, v2

    move-object v10, v4

    move-object v5, v11

    move/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    :goto_375
    move-object/from16 v11, p2

    goto/16 :goto_35

    :cond_379
    move-object v11, v5

    .line 348
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v11

    :catchall_37e
    move-exception v0

    move-object v8, v9

    goto :goto_383

    :catchall_381
    move-exception v0

    const/4 v8, 0x0

    :goto_383
    if-eqz v8, :cond_388

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 350
    :cond_388
    throw v0
.end method
