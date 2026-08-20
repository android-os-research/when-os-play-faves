.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParser;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final lineParser:Lorg/apache/http/message/LineParser;

.field private final maxHeaderCount:I

.field private final maxLineLen:I

.field private final sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .registers 6
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/apache/http/message/LineParser;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_2b

    .line 77
    if-eqz p3, :cond_23

    .line 80
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 81
    const-string v0, "http.connection.max-header-count"

    const/4 v1, -0x1

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    .line 83
    const-string v0, "http.connection.max-line-length"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    .line 85
    if-eqz p2, :cond_1e

    move-object v0, p2

    goto :goto_20

    :cond_1e
    sget-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    :goto_20
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    .line 86
    return-void

    .line 78
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .registers 13
    .param p0, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p1, "maxHeaderCount"    # I
    .param p2, "maxLineLen"    # I
    .param p3, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    if-eqz p0, :cond_b5

    .line 114
    if-nez p3, :cond_6

    .line 115
    sget-object p3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 117
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "headerLines":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 120
    .local v1, "current":Lorg/apache/http/util/CharArrayBuffer;
    const/4 v2, 0x0

    .line 122
    .local v2, "previous":Lorg/apache/http/util/CharArrayBuffer;
    :goto_d
    if-nez v1, :cond_18

    .line 123
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object v1, v3

    goto :goto_1b

    .line 125
    :cond_18
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 127
    :goto_1b
    invoke-interface {p0, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v3

    .line 128
    .local v3, "l":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_8c

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2a

    .line 129
    goto :goto_8c

    .line 135
    :cond_2a
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    const/16 v8, 0x20

    if-eq v6, v8, :cond_3b

    invoke-virtual {v1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_75

    :cond_3b
    if-eqz v2, :cond_75

    .line 138
    const/4 v4, 0x0

    .line 139
    .local v4, "i":I
    :goto_3e
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_51

    .line 140
    invoke-virtual {v1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    .line 141
    .local v6, "ch":C
    if-eq v6, v8, :cond_4d

    if-eq v6, v7, :cond_4d

    .line 142
    goto :goto_51

    .line 144
    :cond_4d
    nop

    .end local v6    # "ch":C
    add-int/lit8 v4, v4, 0x1

    .line 145
    goto :goto_3e

    .line 146
    :cond_51
    :goto_51
    if-lez p2, :cond_69

    .line 147
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    add-int/2addr v6, v5

    sub-int/2addr v6, v4

    if-gt v6, p2, :cond_61

    goto :goto_69

    .line 148
    :cond_61
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Maximum line length limit exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_69
    :goto_69
    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 151
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 152
    .end local v4    # "i":I
    goto :goto_7a

    .line 153
    :cond_75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    move-object v2, v1

    .line 155
    const/4 v1, 0x0

    .line 157
    :goto_7a
    if-lez p1, :cond_8b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_83

    goto :goto_8b

    .line 158
    :cond_83
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Maximum header count exceeded"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    .end local v3    # "l":I
    :cond_8b
    :goto_8b
    goto :goto_d

    .line 161
    :cond_8c
    :goto_8c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/http/Header;

    .line 162
    .local v3, "headers":[Lorg/apache/http/Header;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_b4

    .line 163
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/util/CharArrayBuffer;

    .line 165
    .local v5, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :try_start_9f
    invoke-interface {p3, v5}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v6

    aput-object v6, v3, v4
    :try_end_a5
    .catch Lorg/apache/http/ParseException; {:try_start_9f .. :try_end_a5} :catch_a9

    .line 168
    nop

    .line 162
    .end local v5    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 166
    .restart local v5    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :catch_a9
    move-exception v6

    .line 167
    .local v6, "ex":Lorg/apache/http/ParseException;
    new-instance v7, Lorg/apache/http/ProtocolException;

    invoke-virtual {v6}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 170
    .end local v4    # "i":I
    .end local v5    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v6    # "ex":Lorg/apache/http/ParseException;
    :cond_b4
    return-object v3

    .line 112
    .end local v0    # "headerLines":Ljava/util/ArrayList;
    .end local v1    # "current":Lorg/apache/http/util/CharArrayBuffer;
    .end local v2    # "previous":Lorg/apache/http/util/CharArrayBuffer;
    .end local v3    # "headers":[Lorg/apache/http/Header;
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "message":Lorg/apache/http/HttpMessage;
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;

    move-result-object v1
    :try_end_7
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_7} :catch_19

    move-object v0, v1

    .line 182
    nop

    .line 183
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget v2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 188
    .local v1, "headers":[Lorg/apache/http/Header;
    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 189
    return-object v0

    .line 180
    .end local v1    # "headers":[Lorg/apache/http/Header;
    :catch_19
    move-exception v1

    .line 181
    .local v1, "px":Lorg/apache/http/ParseException;
    new-instance v2, Lorg/apache/http/ProtocolException;

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method
