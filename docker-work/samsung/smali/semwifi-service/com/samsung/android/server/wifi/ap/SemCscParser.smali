.class public Lcom/samsung/android/server/wifi/ap/SemCscParser;
.super Ljava/lang/Object;
.source "SemCscParser.java"


# static fields
.field static final DEFAULT_CUSTOM_XML_FILE:Ljava/lang/String; = "/system/csc/customer.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PATH_COUNTRY:Ljava/lang/String; = "GeneralInfo.Country"

.field private static final PATH_DELIMITER:Ljava/lang/String; = "."

.field private static final PATH_REGION:Ljava/lang/String; = "GeneralInfo.Region"

.field static final PROPERTY_PERSIST_SYS_OMC_PATH:Ljava/lang/String; = "persist.sys.omc_path"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemCscParser"


# instance fields
.field private final xmlRootNode:Lorg/w3c/dom/Node;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->canAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getRootNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemCscParser;->xmlRootNode:Lorg/w3c/dom/Node;

    return-void

    .line 53
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not access "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static canAccess(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_17

    .line 95
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 96
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_17
    move-object p0, p1

    .line 99
    :goto_18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    move-object p1, p0

    :goto_20
    return-object p1
.end method

.method public static getCountry()Ljava/lang/String;
    .registers 4

    .line 71
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemCscParser;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;-><init>(Ljava/lang/String;)V

    const-string v1, "GeneralInfo.Country"

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCscParser"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csc country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method private static getCustomerPath()Ljava/lang/String;
    .registers 2

    const-string v0, "persist.sys.omc_path"

    const-string v1, ""

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/customer.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->canAccess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-object v0

    :cond_26
    const-string v0, "/system/csc/customer.xml"

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 4

    .line 60
    :try_start_0
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemCscParser;

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;-><init>(Ljava/lang/String;)V

    const-string v1, "GeneralInfo.Region"

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCscParser"

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csc region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method private getRootNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    new-array v0, p0, [Ljava/lang/String;

    .line 81
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array p0, p0, [Ljava/nio/file/OpenOption;

    invoke-static {v0, p0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_d} :catch_2f
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_d} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2f

    .line 82
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_22

    .line 86
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1f .. :try_end_22} :catch_2f
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_22} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2f

    :cond_22
    return-object v0

    :catchall_23
    move-exception v0

    if-eqz p0, :cond_2e

    .line 81
    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p0

    :try_start_2b
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw v0
    :try_end_2f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2b .. :try_end_2f} :catch_2f
    .catch Lorg/xml/sax/SAXException; {:try_start_2b .. :try_end_2f} :catch_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not parse file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemCscParser;->xmlRootNode:Lorg/w3c/dom/Node;

    .line 104
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_9
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 106
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_17
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/SemCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_9

    :cond_1c
    return-object v0
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6

    .line 116
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    :cond_8
    const/4 v0, 0x0

    .line 120
    :goto_9
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 121
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    return-object p1
.end method
