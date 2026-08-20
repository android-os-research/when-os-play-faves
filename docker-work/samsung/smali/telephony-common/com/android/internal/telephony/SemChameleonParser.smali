.class public final Lcom/android/internal/telephony/SemChameleonParser;
.super Ljava/lang/Object;
.source "SemChameleonParser.java"


# static fields
.field protected static final blacklist CSC_CHAMELEON_FILE:Ljava/lang/String; = "/carrier/chameleon.xml"

.field protected static final blacklist PATH_OPERATORS_BRANDALPHA:Ljava/lang/String; = "Operators.BrandAlpha"

.field protected static final blacklist PATH_OPERATORS_NETWORKCODE:Ljava/lang/String; = "Operators.AndroidOperatorNetworkCode"

.field protected static final blacklist PATH_OPERATORS_RESELLERID:Ljava/lang/String; = "Operators.SubscriberCarrierId"

.field protected static final blacklist PATH_OPERATORS_VOICEMAILSPPEDDIAL:Ljava/lang/String; = "Operators.SpeedDial"

.field protected static final blacklist PATH_ROAMING_REDUCTION_ENABLE:Ljava/lang/String; = "AppSupport.RoamingReductionEnable"


# instance fields
.field private blacklist mDoc:Lorg/w3c/dom/Document;

.field private blacklist mIsFileExist:Z

.field private blacklist mRoot:Lorg/w3c/dom/Node;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemChameleonParser;->mIsFileExist:Z

    const-string v0, "SemChameleonParser"

    const-string v1, "init"

    .line 39
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    const-string v0, "/carrier/chameleon.xml"

    .line 42
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemChameleonParser;->update(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method private blacklist update(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SemChameleonParser"

    if-eqz v1, :cond_2f

    const-string v1, "Update"

    .line 59
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemChameleonParser;->mDoc:Lorg/w3c/dom/Document;

    .line 61
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemChameleonParser;->mIsFileExist:Z

    goto :goto_37

    :cond_2f
    const-string p1, "Update - File not exist"

    .line 64
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemChameleonParser;->mIsFileExist:Z

    :goto_37
    return-void
.end method


# virtual methods
.method protected blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemChameleonParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 92
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 93
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist getOperatorBrandAlpha()Ljava/lang/String;
    .registers 2

    const-string v0, "Operators.BrandAlpha"

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getOperatorNetworkCode()Ljava/lang/String;
    .registers 2

    const-string v0, "Operators.AndroidOperatorNetworkCode"

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getOperatorResellerID()Ljava/lang/String;
    .registers 2

    const-string v0, "Operators.SubscriberCarrierId"

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getRoamingReductionEnabled()Ljava/lang/String;
    .registers 2

    const-string v0, "AppSupport.RoamingReductionEnable"

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSpeedDial()Ljava/lang/String;
    .registers 2

    const-string v0, "Operators.SpeedDial"

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist isFileExist()Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemChameleonParser;->mIsFileExist:Z

    return p0
.end method

.method protected blacklist search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/SemChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    .line 105
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 108
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_1a

    return-object v0

    .line 113
    :cond_1a
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SemChameleonParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_d

    :cond_1f
    return-object v1
.end method

.method protected blacklist search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 124
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 127
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_23

    .line 130
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    return-object v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_23
    return-object p0
.end method
