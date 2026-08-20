.class public Lorg/apache/http/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lorg/apache/http/HeaderElementIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private currentElement:Lorg/apache/http/HeaderElement;

.field private cursor:Lorg/apache/http/message/ParserCursor;

.field private final headerIt:Lorg/apache/http/HeaderIterator;

.field private final parser:Lorg/apache/http/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .registers 3
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;

    .line 83
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V
    .registers 5
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;
    .param p2, "parser"    # Lorg/apache/http/message/HeaderValueParser;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 62
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 63
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 71
    if-eqz p1, :cond_1b

    .line 74
    if-eqz p2, :cond_13

    .line 77
    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    .line 78
    iput-object p2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/http/message/HeaderValueParser;

    .line 79
    return-void

    .line 75
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bufferHeaderValue()V
    .registers 6

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 89
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 90
    :goto_5
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 91
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    .line 92
    .local v0, "h":Lorg/apache/http/Header;
    instance-of v1, v0, Lorg/apache/http/FormattedHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 93
    move-object v1, v0

    check-cast v1, Lorg/apache/http/FormattedHeader;

    invoke-interface {v1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 94
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v3, v2, v1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 95
    move-object v1, v0

    check-cast v1, Lorg/apache/http/FormattedHeader;

    invoke-interface {v1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 96
    goto :goto_5a

    .line 98
    :cond_37
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_59

    .line 100
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 101
    invoke-virtual {v3, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 102
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    iget-object v4, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 103
    goto :goto_5a

    .line 106
    .end local v0    # "h":Lorg/apache/http/Header;
    .end local v1    # "value":Ljava/lang/String;
    :cond_59
    goto :goto_5

    .line 107
    :cond_5a
    :goto_5a
    return-void
.end method

.method private parseNextElement()V
    .registers 4

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    if-eqz v0, :cond_d

    goto :goto_e

    .line 135
    :cond_d
    return-void

    .line 112
    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 114
    :cond_18
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    .line 117
    :cond_1b
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    if-eqz v0, :cond_0

    .line 119
    :goto_1f
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_46

    .line 120
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/http/message/HeaderValueParser;

    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 121
    .local v0, "e":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_43

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    goto :goto_43

    .line 126
    .end local v0    # "e":Lorg/apache/http/HeaderElement;
    :cond_42
    goto :goto_1f

    .line 123
    .restart local v0    # "e":Lorg/apache/http/HeaderElement;
    :cond_43
    :goto_43
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 124
    return-void

    .line 128
    .end local v0    # "e":Lorg/apache/http/HeaderElement;
    :cond_46
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 131
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    goto :goto_0

    .line 128
    :cond_54
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 138
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-nez v0, :cond_7

    .line 139
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 141
    :cond_7
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/apache/http/HeaderElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-nez v0, :cond_7

    .line 146
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 149
    :cond_7
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 154
    .local v0, "element":Lorg/apache/http/HeaderElement;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 155
    return-object v0

    .line 150
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more header elements available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
