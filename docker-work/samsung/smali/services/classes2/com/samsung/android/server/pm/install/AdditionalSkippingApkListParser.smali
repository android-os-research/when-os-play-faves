.class public Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;
.super Ljava/lang/Object;
.source "AdditionalSkippingApkListParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AdditionalSkippingApkListParser"

.field public static final TAG_APK:Ljava/lang/String; = "apk"

.field public static final TAG_CARRIER:Ljava/lang/String; = "carrier"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_REVERSE:Ljava/lang/String; = "reverse"


# instance fields
.field public final mAdditionalSkippingApkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mReverseSkippingApkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSkippingApkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mSkippingApkMap:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mReverseSkippingApkMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/etc/additional_skipping_apk_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->parseSkippingApkList(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mSkippingApkMap:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mReverseSkippingApkMap:Ljava/util/Map;

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->parseSkippingApkList(Ljava/lang/String;)V

    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .registers 1

    .line 55
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAdditionalSkippingApkList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    return-object p0
.end method

.method public hasAdditionalSkippingApkList()Z
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final parseApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_42

    :cond_19
    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    goto :goto_9

    .line 142
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apk"

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const-string v2, "name"

    .line 144
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_42
    return-object v0
.end method

.method public final parseSkippingApkList(Ljava/lang/String;)V
    .registers 5

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "AdditionalSkippingApkListParser"

    if-nez p1, :cond_13

    const-string p0, "No additional skipping apk list file exists."

    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_13
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 66
    :try_start_17
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_1c} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_47
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_31

    const/4 v0, 0x0

    .line 67
    :try_start_1d
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->parseSkippingApkListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 69
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_26} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_47
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31

    goto :goto_72

    :catchall_27
    move-exception p0

    .line 66
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p1

    :try_start_2d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw p0
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_31} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_31} :catch_47
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    :catch_31
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse allowlist. IOException "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catch_47
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse allowlist. FileNotFoundException "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catch_5d
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse allowlist. XmlPullParserException "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    return-void
.end method

.method public final parseSkippingApkListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 84
    invoke-static {}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_16

    goto/16 :goto_b5

    .line 89
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 88
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceCarrierName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdditionalSkippingApkListParser"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ins"

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string p0, "Stop adding additional skipping packages"

    .line 95
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_47
    :goto_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_b5

    if-ne v2, v3, :cond_56

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_b5

    :cond_56
    if-eq v2, v3, :cond_47

    const/4 v5, 0x4

    if-ne v2, v5, :cond_5c

    goto :goto_47

    .line 105
    :cond_5c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v5, "carrier"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid element name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_80
    const/4 v2, 0x0

    const-string v5, "name"

    .line 108
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "reverse"

    .line 109
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 111
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->parseApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v7, "true"

    .line 112
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 113
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    if-nez v2, :cond_47

    .line 115
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    :cond_ad
    if-eqz v2, :cond_47

    .line 119
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    :cond_b5
    :goto_b5
    return-void
.end method
