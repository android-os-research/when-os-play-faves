.class public Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser;
.super Ljava/lang/Object;
.source "PolicyXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;"
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->getPolicies()Ljava/util/List;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p0

    .line 43
    :catchall_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;"
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 54
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->getPolicies()Ljava/util/List;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p0

    .line 56
    :catchall_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
