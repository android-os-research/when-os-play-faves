.class public final Lcom/sec/vsim/util/VSimResponseUtils;
.super Ljava/lang/Object;
.source "VSimResponseUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/sec/vsim/util/VSimResponseUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/VSimResponseUtils;->LOG_TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/sec/vsim/util/VSimResponseUtils$1;

    invoke-direct {v0}, Lcom/sec/vsim/util/VSimResponseUtils$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/util/VSimResponseUtils;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static createGsonXml()Lcom/stanfy/gsonxml/GsonXml;
    .registers 1

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/vsim/util/VSimResponseUtils;->createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method

.method static createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;
    .registers 3
    .param p0, "namespaces"    # Z

    .line 54
    new-instance v0, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    sget-object v1, Lcom/sec/vsim/util/VSimResponseUtils;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method

.method public static parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 72
    .local p1, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 73
    return-object v0

    .line 75
    :cond_4
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 76
    .local v1, "parser":Lcom/google/gson/JsonParser;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 78
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_e
    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 79
    .local v3, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2, v3, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    .line 80
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    :catch_17
    move-exception v3

    .line 81
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v4, Lcom/sec/vsim/util/VSimResponseUtils;->LOG_TAG:Ljava/lang/String;

    const-string v5, "cannot parse result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v3}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 84
    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    return-object v0
.end method

.method public static parseXmlResponse(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 7
    .param p0, "xml"    # Ljava/lang/String;
    .param p2, "namespaces"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 96
    .local p1, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 97
    return-object v0

    .line 100
    :cond_4
    :try_start_4
    invoke-static {p2}, Lcom/sec/vsim/util/VSimResponseUtils;->createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v1

    .line 101
    .local v1, "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    invoke-virtual {v1, p0, p1}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 102
    .end local v1    # "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    :catch_d
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/vsim/util/VSimResponseUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cannot parse result"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method
