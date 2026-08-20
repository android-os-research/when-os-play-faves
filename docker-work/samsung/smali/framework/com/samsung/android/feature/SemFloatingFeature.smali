.class public final Lcom/samsung/android/feature/SemFloatingFeature;
.super Ljava/lang/Object;
.source "SemFloatingFeature.java"

# interfaces
.implements Lcom/samsung/android/feature/IFloatingFeature;


# static fields
.field private static final blacklist DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final blacklist DEFAULT_INT_VALUE:I = -0x1

.field private static final blacklist DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field private static final blacklist FEATURE_XML:Ljava/lang/String; = "/system/etc/floating_feature.xml"

.field private static final blacklist LOG_ENABLED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "SemFloatingFeature"

.field private static final blacklist sInstance:Lcom/samsung/android/feature/SemFloatingFeature;


# instance fields
.field private final blacklist mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    const/4 v0, 0x1

    .line 52
    .local v0, "productShip":Z
    :try_start_1
    const-string/jumbo v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 54
    goto :goto_f

    .line 53
    :catch_e
    move-exception v1

    .line 55
    :goto_f
    if-nez v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    sput-boolean v1, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    .line 57
    new-instance v1, Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-direct {v1}, Lcom/samsung/android/feature/SemFloatingFeature;-><init>()V

    sput-object v1, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 58
    .end local v0    # "productShip":Z
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 87
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/feature/SemFloatingFeature;->loadFeatureFile()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 90
    goto :goto_12

    .line 88
    :catch_e
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemFloatingFeature;
    .registers 1

    .line 79
    sget-object v0, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    return-object v0
.end method

.method private blacklist loadFeatureFile()V
    .registers 11

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 272
    .local v1, "fi":Ljava/io/InputStream;
    const/4 v2, -0x1

    .line 273
    .local v2, "eventType":I
    const/4 v3, 0x0

    .line 274
    .local v3, "TagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 276
    .local v4, "TagValue":Ljava/lang/String;
    :try_start_5
    iget-object v5, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 278
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/floating_feature.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v5, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_23

    goto/16 :goto_aa

    .line 284
    :cond_23
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 285
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 286
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object v0, v8

    .line 287
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v8

    .line 288
    const/4 v8, 0x0

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 289
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    move v2, v8

    .line 291
    :goto_3f
    if-eq v2, v7, :cond_8f

    .line 292
    const/4 v8, 0x2

    if-ne v2, v8, :cond_4a

    .line 293
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_80

    .line 294
    :cond_4a
    const/4 v8, 0x4

    if-ne v2, v8, :cond_80

    .line 295
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 296
    if-eqz v3, :cond_80

    if-eqz v4, :cond_80

    .line 297
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5c} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5c} :catch_c3
    .catchall {:try_start_5 .. :try_end_5c} :catchall_c1

    if-eqz v8, :cond_6d

    .line 299
    :try_start_5e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_62} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_62} :catch_c3
    .catchall {:try_start_5e .. :try_end_62} :catchall_c1

    move v2, v8

    .line 302
    goto :goto_3f

    .line 300
    :catch_64
    move-exception v8

    .line 301
    .local v8, "e":Ljava/io/IOException;
    :try_start_65
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_6c} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6c} :catch_c3
    .catchall {:try_start_65 .. :try_end_6c} :catchall_c1

    .line 303
    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_3f

    .line 306
    :cond_6d
    :try_start_6d
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 307
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_77} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_77} :catch_c3
    .catchall {:try_start_6d .. :try_end_77} :catchall_c1

    .line 310
    goto :goto_80

    .line 308
    :catch_78
    move-exception v8

    .line 309
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_79
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_80} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_80} :catch_c3
    .catchall {:try_start_79 .. :try_end_80} :catchall_c1

    .line 315
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_80
    :goto_80
    :try_start_80
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_84} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_84} :catch_c3
    .catchall {:try_start_80 .. :try_end_84} :catchall_c1

    move v2, v8

    .line 318
    :goto_85
    goto :goto_3f

    .line 316
    :catch_86
    move-exception v8

    .line 317
    .local v8, "e":Ljava/io/IOException;
    :try_start_87
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_8e} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8e} :catch_c3
    .catchall {:try_start_87 .. :try_end_8e} :catchall_c1

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_85

    .line 321
    :cond_8f
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_92} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_92} :catch_c3
    .catchall {:try_start_8f .. :try_end_92} :catchall_c1

    .line 324
    goto :goto_9b

    .line 322
    :catch_93
    move-exception v7

    .line 323
    .local v7, "e":Ljava/io/IOException;
    :try_start_94
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_9b} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_9b} :catch_c3
    .catchall {:try_start_94 .. :try_end_9b} :catchall_c1

    .line 331
    .end local v5    # "featureXmlFile":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_9b
    nop

    .line 332
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a1

    .line 333
    const/4 v1, 0x0

    .line 337
    goto :goto_ea

    .line 335
    :catch_a1
    move-exception v5

    .line 336
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 338
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_ea

    .line 280
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v5, "featureXmlFile":Ljava/io/File;
    :cond_aa
    :goto_aa
    :try_start_aa
    const-string v6, "Cannot read floating_feature.xml file"

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_af} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_af} :catch_c3
    .catchall {:try_start_aa .. :try_end_af} :catchall_c1

    .line 331
    if-eqz v1, :cond_bf

    .line 332
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b6

    .line 333
    const/4 v1, 0x0

    goto :goto_bf

    .line 335
    :catch_b6
    move-exception v6

    .line 336
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_c0

    .line 337
    .end local v6    # "e":Ljava/io/IOException;
    :cond_bf
    :goto_bf
    nop

    .line 281
    :goto_c0
    return-void

    .line 330
    .end local v5    # "featureXmlFile":Ljava/io/File;
    :catchall_c1
    move-exception v5

    goto :goto_eb

    .line 327
    :catch_c3
    move-exception v5

    .line 328
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_c4
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_c1

    .line 331
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_e9

    .line 332
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_e0

    goto :goto_de

    .line 325
    :catch_d1
    move-exception v5

    .line 326
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d2
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_c1

    .line 331
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_e9

    .line 332
    :try_start_db
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e0

    .line 333
    :goto_de
    const/4 v1, 0x0

    goto :goto_e9

    .line 335
    :catch_e0
    move-exception v5

    .line 336
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 338
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_ea

    .line 337
    :cond_e9
    :goto_e9
    nop

    .line 339
    :goto_ea
    return-void

    .line 331
    :goto_eb
    if-eqz v1, :cond_fb

    .line 332
    :try_start_ed
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f2

    .line 333
    const/4 v1, 0x0

    goto :goto_fb

    .line 335
    :catch_f2
    move-exception v6

    .line 336
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_fc

    .line 337
    .end local v6    # "e":Ljava/io/IOException;
    :cond_fb
    :goto_fb
    nop

    .line 338
    :goto_fc
    throw v5
.end method

.method private static blacklist loge(Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/Object;

    .line 67
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_d

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFloatingFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_d
    return-void
.end method

.method private static blacklist logw(Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/Object;

    .line 61
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_d

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFloatingFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_d
    return-void
.end method


# virtual methods
.method public whitelist getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 103
    const-string v1, "The first argument of getBoolean() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 104
    return v0

    .line 106
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_14

    goto :goto_18

    :cond_14
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_18
    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `boolean getBoolean(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `boolean getBoolean(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 124
    if-nez p1, :cond_25

    .line 125
    const-string v0, "The first argument of getBoolean() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_31

    move v1, p2

    goto :goto_35

    :cond_31
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_35
    return v1
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 194
    const/4 v0, -0x1

    if-nez p1, :cond_9

    .line 195
    const-string v1, "The first argument of getInt() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 196
    return v0

    .line 199
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_14

    .line 202
    return v0

    .line 206
    :cond_14
    :try_start_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    return v0

    .line 207
    :catch_19
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "[%s] cannot be parsed to Integer value"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 209
    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `int getInt(String tag, int defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `int getInt(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 246
    if-nez p1, :cond_24

    .line 247
    const-string v0, "The first argument of getInt() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 248
    return p2

    .line 251
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_2f

    .line 254
    return p2

    .line 258
    :cond_2f
    :try_start_2f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_34

    return v1

    .line 259
    :catch_34
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "[%s] cannot be parsed to Integer value"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 261
    return p2
.end method

.method public blacklist getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 182
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 141
    const-string v0, ""

    if-nez p1, :cond_a

    .line 142
    const-string v1, "The first argument of getString() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 143
    return-object v0

    .line 145
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_15

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `String getString(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `String getString(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 164
    if-nez p1, :cond_26

    .line 165
    const-string v0, "The first argument of getString() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 166
    const-string v0, ""

    return-object v0

    .line 168
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_32

    move-object v1, p2

    goto :goto_33

    :cond_32
    move-object v1, v0

    :goto_33
    return-object v1
.end method
