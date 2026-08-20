.class public Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
.super Ljava/lang/Object;
.source "ResolutionTunerAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    }
.end annotation


# static fields
.field private static final blacklist APP_LIST_PATH:Ljava/lang/String; = "system/etc/resolution_tuner_app_list.xml"

.field private static final blacklist APP_LIST_PATH_FOR_AIVRS:Ljava/lang/String; = "/vendor/etc/aivrs.ini"

.field private static final blacklist APP_LIST_PATH_FOR_GAISR:Ljava/lang/String; = "/vendor/etc/gaisr.ini"

.field private static final blacklist NODE_FILTERED_WINDOW:Ljava/lang/String; = "filteredwindow"

.field private static final blacklist NODE_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final blacklist NODE_SCALE:Ljava/lang/String; = "scale"

.field private static final blacklist NODE_SCALING_FLOW:Ljava/lang/String; = "flow"

.field private static final blacklist TAG:Ljava/lang/String; = "AppResolutionTuner"

.field private static final blacklist TAG_APP:Ljava/lang/String; = "app"

.field private static final blacklist VALUE_SCALING_FLOW_GAME:Ljava/lang/String; = "game"

.field private static final blacklist VALUE_SCALING_FLOW_SURFACEVIEW:Ljava/lang/String; = "surfaceview"

.field private static final blacklist VALUE_SCALING_FLOW_WMS:Ljava/lang/String; = "wms"

.field private static blacklist sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;


# instance fields
.field private blacklist mTunerAppCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static blacklist getInstance()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .registers 1

    .line 66
    sget-object v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    invoke-direct {v0}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;-><init>()V

    sput-object v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    .line 69
    :cond_b
    sget-object v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    return-object v0
.end method

.method private blacklist parseAppListFile(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 274
    const-string v0, "AppResolutionTuner"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    const/4 v2, 0x0

    .line 277
    .local v2, "document":Lorg/w3c/dom/Document;
    :try_start_8
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 278
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 279
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5
    :try_end_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_14} :catch_bf
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_14} :catch_b8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_b1

    move-object v2, v5

    .line 289
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    nop

    .line 291
    const-string v3, "app"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 293
    .local v3, "appList":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_b0

    .line 294
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 295
    .local v5, "node_applic":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 296
    .local v6, "childNodes":Lorg/w3c/dom/NodeList;
    new-instance v7, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    invoke-direct {v7}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;-><init>()V

    .line 297
    .local v7, "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_31
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_93

    .line 298
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 299
    .local v9, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "packagename"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 300
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setPackageName(Ljava/lang/String;)V

    .line 302
    .end local v10    # "packageName":Ljava/lang/String;
    goto :goto_90

    :cond_4f
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "scale"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 303
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "scale":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v7, v11}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScale(F)V

    .line 305
    .end local v10    # "scale":Ljava/lang/String;
    goto :goto_90

    :cond_67
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "filteredwindow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 306
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, "filteredWindow":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->addFilteredWindow(Ljava/lang/String;)V

    .end local v10    # "filteredWindow":Ljava/lang/String;
    goto :goto_8f

    .line 308
    :cond_7b
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "flow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 309
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 310
    .local v10, "scalingFlow":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScalingFlow(Ljava/lang/String;)V

    goto :goto_90

    .line 308
    .end local v10    # "scalingFlow":Ljava/lang/String;
    :cond_8f
    :goto_8f
    nop

    .line 297
    .end local v9    # "childNode":Lorg/w3c/dom/Node;
    :goto_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 313
    .end local v8    # "j":I
    :cond_93
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dom2xml: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v5    # "node_applic":Lorg/w3c/dom/Node;
    .end local v6    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v7    # "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    .line 316
    .end local v4    # "i":I
    :cond_b0
    return-object v1

    .line 286
    .end local v3    # "appList":Lorg/w3c/dom/NodeList;
    :catch_b1
    move-exception v3

    .line 287
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "IOException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    return-object v1

    .line 283
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b8
    move-exception v3

    .line 284
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "dom2xml SAXException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    return-object v1

    .line 280
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_bf
    move-exception v3

    .line 281
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "dom2xml ParserConfigurationException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    return-object v1
.end method

.method private blacklist parseAppListFileForAIVRS(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "listFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 355
    const-string v0, "="

    const-string v1, "AppResolutionTuner"

    const-string v2, "\""

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    :try_start_b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_bf

    .line 358
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_ae

    .line 359
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-lt v5, v7, :cond_15

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v7, :cond_30

    .line 360
    goto :goto_15

    .line 363
    :cond_30
    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 364
    .end local v6    # "line":Ljava/lang/String;
    .local v5, "line":Ljava/lang/String;
    const-string v6, "game\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 365
    .local v6, "isGameMode":Z
    if-eqz v6, :cond_4b

    .line 366
    const-string v9, ",game"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 368
    :cond_4b
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x46

    if-ge v9, v10, :cond_15

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_68

    .line 370
    goto :goto_15

    .line 372
    :cond_68
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "packageName":Ljava/lang/String;
    new-instance v9, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    invoke-direct {v9}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;-><init>()V

    .line 374
    .local v9, "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    if-eqz v6, :cond_7c

    .line 375
    const-string v10, "game"

    invoke-virtual {v9, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScalingFlow(Ljava/lang/String;)V

    .line 377
    :cond_7c
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setPackageName(Ljava/lang/String;)V

    .line 378
    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v9, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScale(F)V

    .line 379
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseAppListFileForAIVRS  packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    nop

    .end local v6    # "isGameMode":Z
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    goto/16 :goto_15

    .line 382
    .end local v5    # "line":Ljava/lang/String;
    .local v6, "line":Ljava/lang/String;
    :cond_ae
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b1
    .catchall {:try_start_15 .. :try_end_b1} :catchall_b5

    .line 383
    .end local v6    # "line":Ljava/lang/String;
    :try_start_b1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_bf

    .line 385
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_d6

    .line 356
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_b5
    move-exception v0

    :try_start_b6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception v2

    :try_start_bb
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .end local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .end local p1    # "listFile":Ljava/io/File;
    :goto_be
    throw v0
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bf} :catch_bf

    .line 383
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .restart local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .restart local p1    # "listFile":Ljava/io/File;
    :catch_bf
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read app list for resolution tuner app list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d6
    return-object v3
.end method

.method private blacklist parseAppListFileForGAISR(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 16
    .param p1, "listFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 320
    const-string v0, " "

    const-string v1, "\""

    const-string v2, "="

    const-string v3, "AppResolutionTuner"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    :try_start_d
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_b7

    .line 323
    .local v5, "br":Ljava/io/BufferedReader;
    :cond_17
    :goto_17
    :try_start_17
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_a6

    .line 324
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_2c

    .line 325
    goto :goto_17

    .line 328
    :cond_2c
    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 329
    .end local v7    # "line":Ljava/lang/String;
    .local v6, "line":Ljava/lang/String;
    const-string v7, "game\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 330
    .local v7, "isGameMode":Z
    if-eqz v7, :cond_47

    .line 331
    const-string v10, ",game"

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 333
    :cond_47
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "packageName":Ljava/lang/String;
    nop

    .line 335
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 336
    .local v10, "width":F
    nop

    .line 337
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 338
    .local v8, "height":F
    new-instance v11, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    invoke-direct {v11}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;-><init>()V

    .line 339
    .local v11, "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    if-eqz v7, :cond_80

    .line 340
    const-string v12, "game"

    invoke-virtual {v11, v12}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScalingFlow(Ljava/lang/String;)V

    .line 342
    :cond_80
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setPackageName(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v11, v10, v8}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScale(FF)V

    .line 344
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseAppListFileForGAISR  packageName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    nop

    .end local v7    # "isGameMode":Z
    .end local v8    # "height":F
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "width":F
    .end local v11    # "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    goto/16 :goto_17

    .line 347
    .end local v6    # "line":Ljava/lang/String;
    .local v7, "line":Ljava/lang/String;
    :cond_a6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a9
    .catchall {:try_start_17 .. :try_end_a9} :catchall_ad

    .line 348
    .end local v7    # "line":Ljava/lang/String;
    :try_start_a9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_b7

    .line 350
    .end local v5    # "br":Ljava/io/BufferedReader;
    goto :goto_ce

    .line 321
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catchall_ad
    move-exception v0

    :try_start_ae
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_b6

    :catchall_b2
    move-exception v1

    :try_start_b3
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .end local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .end local p1    # "listFile":Ljava/io/File;
    :goto_b6
    throw v0
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b7} :catch_b7

    .line 348
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .restart local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .restart local p1    # "listFile":Ljava/io/File;
    :catch_b7
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read app list for resolution tuner app list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ce
    return-object v4
.end method


# virtual methods
.method public blacklist getScaleHeight(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 187
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 188
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScaleHeight()F

    move-result v0

    return v0

    .line 190
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_23
    goto :goto_8

    .line 192
    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist getScaleValue(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 165
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 166
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScale()F

    move-result v0

    return v0

    .line 168
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_23
    goto :goto_8

    .line 170
    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist getScaleWidth(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 176
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 177
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScaleWidth()F

    move-result v0

    return v0

    .line 179
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_23
    goto :goto_8

    .line 181
    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist isScaledByGameMode(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 137
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 138
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScalingFlow()Ljava/lang/String;

    move-result-object v2

    const-string v3, "game"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_2c
    goto :goto_8

    .line 143
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScaledBySurfaceView(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 152
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 153
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScalingFlow()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 154
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScalingFlow()Ljava/lang/String;

    move-result-object v2

    const-string v3, "game"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_38
    goto :goto_8

    .line 159
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScaledByWMS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "windowName"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 122
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 123
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScalingFlow()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 124
    invoke-virtual {v1, p2}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->isFiltered(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 126
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_31
    goto :goto_8

    .line 128
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadTunerAppList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 76
    const-string v0, "close failed.."

    const-string v1, "loadTunerAppList - "

    const-string v2, "AppResolutionTuner"

    const-string v3, "loadTunerAppList + "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "target":Ljava/io/File;
    const/4 v4, 0x0

    .line 80
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_d
    const-string v5, "1"

    const-string v6, "ro.vendor.game_aisr_enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 81
    new-instance v5, Ljava/io/File;

    const-string v6, "/vendor/etc/aivrs.ini"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 83
    invoke-direct {p0, v3}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->parseAppListFileForAIVRS(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2f} :catch_ba
    .catchall {:try_start_d .. :try_end_2f} :catchall_b8

    .line 84
    nop

    .line 107
    if-eqz v4, :cond_3b

    :try_start_32
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3b

    .line 108
    :catch_36
    move-exception v6

    .line 109
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 110
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3b
    :goto_3b
    nop

    .line 111
    :goto_3c
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-object v5

    .line 87
    :cond_40
    :try_start_40
    const-string v5, "Target file doesn\'t exist: /vendor/etc/aivrs.ini"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v5, Ljava/io/File;

    const-string v6, "/vendor/etc/gaisr.ini"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 90
    invoke-direct {p0, v3}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->parseAppListFileForGAISR(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_59} :catch_ba
    .catchall {:try_start_40 .. :try_end_59} :catchall_b8

    .line 91
    nop

    .line 107
    if-eqz v4, :cond_65

    :try_start_5c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_65

    .line 108
    :catch_60
    move-exception v6

    .line 109
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    .line 110
    .end local v6    # "e":Ljava/io/IOException;
    :cond_65
    :goto_65
    nop

    .line 111
    :goto_66
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v5

    .line 93
    :cond_6a
    :try_start_6a
    const-string v5, "Target file doesn\'t exist: /vendor/etc/gaisr.ini"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_ba
    .catchall {:try_start_6a .. :try_end_71} :catchall_b8

    .line 107
    if-eqz v4, :cond_7c

    :try_start_73
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7c

    .line 108
    :catch_77
    move-exception v6

    .line 109
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 110
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7c
    :goto_7c
    nop

    .line 111
    :goto_7d
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v5

    .line 96
    :cond_81
    :try_start_81
    new-instance v5, Ljava/io/File;

    const-string v6, "system/etc/resolution_tuner_app_list.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a6

    .line 98
    const-string v5, "Target file doesn\'t exist: system/etc/resolution_tuner_app_list.xml"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_96} :catch_ba
    .catchall {:try_start_81 .. :try_end_96} :catchall_b8

    .line 107
    if-eqz v4, :cond_a1

    :try_start_98
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a1

    .line 108
    :catch_9c
    move-exception v6

    .line 109
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a2

    .line 110
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a1
    :goto_a1
    nop

    .line 111
    :goto_a2
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v5

    .line 101
    :cond_a6
    :try_start_a6
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 102
    invoke-direct {p0, v4}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->parseAppListFile(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b2} :catch_ba
    .catchall {:try_start_a6 .. :try_end_b2} :catchall_b8

    .line 107
    :try_start_b2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_cb

    .line 108
    :catch_b6
    move-exception v5

    goto :goto_c7

    .line 106
    :catchall_b8
    move-exception v5

    goto :goto_d3

    .line 103
    :catch_ba
    move-exception v5

    .line 104
    .local v5, "e":Ljava/io/IOException;
    :try_start_bb
    const-string v6, "IOException"

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_b8

    .line 107
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_cb

    :try_start_c2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_cb

    .line 108
    :catch_c6
    move-exception v5

    .line 109
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_c7
    invoke-static {v2, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    .line 110
    .end local v5    # "e":Ljava/io/IOException;
    :cond_cb
    :goto_cb
    nop

    .line 111
    :goto_cc
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    nop

    .line 113
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    return-object v0

    .line 107
    :goto_d3
    if-eqz v4, :cond_de

    :try_start_d5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    goto :goto_de

    .line 108
    :catch_d9
    move-exception v6

    .line 109
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_df

    .line 110
    .end local v6    # "e":Ljava/io/IOException;
    :cond_de
    :goto_de
    nop

    .line 111
    :goto_df
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    throw v5
.end method
