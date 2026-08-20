.class public Lcom/stanfy/gsonxml/GsonXml;
.super Ljava/lang/Object;
.source "GsonXml.java"


# instance fields
.field private final core:Lcom/google/gson/Gson;

.field private final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private final xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V
    .registers 6
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "xmlParserCreator"    # Lcom/stanfy/gsonxml/XmlParserCreator;
    .param p3, "options"    # Lcom/stanfy/gsonxml/XmlReader$Options;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p2, :cond_c

    .line 34
    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    .line 35
    iput-object p2, p0, Lcom/stanfy/gsonxml/GsonXml;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    .line 36
    iput-object p3, p0, Lcom/stanfy/gsonxml/GsonXml;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    .line 37
    return-void

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "XmlParserCreator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;

    .line 73
    if-eqz p0, :cond_21

    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_b

    goto :goto_21

    .line 74
    :cond_b
    new-instance v0, Lcom/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    throw v0
    :try_end_13
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_13

    .line 78
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    :catch_13
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v0

    .line 77
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :cond_21
    :goto_21
    nop

    .line 81
    return-void
.end method


# virtual methods
.method public fromXml(Lcom/stanfy/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .param p1, "reader"    # Lcom/stanfy/gsonxml/XmlReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/stanfy/gsonxml/XmlReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXml(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;,
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 57
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader;

    iget-object v1, p0, Lcom/stanfy/gsonxml/GsonXml;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iget-object v2, p0, Lcom/stanfy/gsonxml/GsonXml;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0, p1, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;-><init>(Ljava/io/Reader;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V

    .line 58
    .local v0, "jsonReader":Lcom/stanfy/gsonxml/XmlReader;
    invoke-virtual {p0, v0, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Lcom/stanfy/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/stanfy/gsonxml/GsonXml;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 60
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromXml(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader;

    iget-object v1, p0, Lcom/stanfy/gsonxml/GsonXml;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iget-object v2, p0, Lcom/stanfy/gsonxml/GsonXml;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0, p1, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;-><init>(Ljava/io/Reader;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V

    .line 66
    .local v0, "jsonReader":Lcom/stanfy/gsonxml/XmlReader;
    invoke-virtual {p0, v0, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Lcom/stanfy/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/stanfy/gsonxml/GsonXml;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 68
    return-object v1
.end method

.method public fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 42
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromXml(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 48
    if-nez p1, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "target":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/google/gson/Gson;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
