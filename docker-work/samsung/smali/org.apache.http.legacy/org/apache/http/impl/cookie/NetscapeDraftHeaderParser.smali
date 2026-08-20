.class public Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

.field private static final DELIMITERS:[C


# instance fields
.field private final nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 53
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;-><init>()V

    sput-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 62
    return-void
.end method


# virtual methods
.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .registers 9
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 67
    if-eqz p1, :cond_45

    .line 70
    if-eqz p2, :cond_3d

    .line 73
    iget-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;

    sget-object v1, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v0

    .line 74
    .local v0, "nvp":Lorg/apache/http/NameValuePair;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_11
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_23

    .line 76
    iget-object v2, p0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;

    sget-object v3, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    invoke-virtual {v2, p1, p2, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 77
    .local v2, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    goto :goto_11

    .line 79
    :cond_23
    new-instance v2, Lorg/apache/http/message/BasicHeaderElement;

    .line 80
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/http/NameValuePair;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    .line 79
    return-object v2

    .line 71
    .end local v0    # "nvp":Lorg/apache/http/NameValuePair;
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
