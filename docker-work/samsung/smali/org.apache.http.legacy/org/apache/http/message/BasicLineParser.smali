.class public Lorg/apache/http/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lorg/apache/http/message/LineParser;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicLineParser;


# instance fields
.field protected final protocol:Lorg/apache/http/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/message/BasicLineParser;-><init>(Lorg/apache/http/ProtocolVersion;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/ProtocolVersion;)V
    .registers 2
    .param p1, "proto"    # Lorg/apache/http/ProtocolVersion;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p1, :cond_7

    .line 97
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    .line 99
    :cond_7
    iput-object p1, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    .line 100
    return-void
.end method

.method public static final parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 473
    if-eqz p0, :cond_17

    .line 478
    if-nez p1, :cond_6

    .line 479
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 481
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 482
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 483
    invoke-interface {p1, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v1

    return-object v1

    .line 474
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseProtocolVersion(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/ProtocolVersion;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 117
    if-eqz p0, :cond_21

    .line 122
    if-nez p1, :cond_6

    .line 123
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 125
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 126
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 127
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 128
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    return-object v2

    .line 118
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseRequestLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/RequestLine;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 282
    if-eqz p0, :cond_21

    .line 287
    if-nez p1, :cond_6

    .line 288
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 290
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 291
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 292
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 293
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;

    move-result-object v2

    return-object v2

    .line 283
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 382
    if-eqz p0, :cond_21

    .line 387
    if-nez p1, :cond_6

    .line 388
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 390
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 391
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 392
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 393
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v2

    return-object v2

    .line 383
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;
    .registers 4
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 223
    iget-object v0, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/ProtocolVersion;->forVersion(II)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/apache/http/ProtocolVersion;

    .line 372
    new-instance v0, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v0
.end method

.method protected createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;
    .registers 5
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 463
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method public hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z
    .registers 12
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .line 232
    if-eqz p1, :cond_77

    .line 235
    if-eqz p2, :cond_6f

    .line 238
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 240
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "protoname":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 243
    .local v2, "protolength":I
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1c

    .line 244
    return v5

    .line 246
    :cond_1c
    if-gez v0, :cond_27

    .line 249
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    sub-int v0, v3, v2

    goto :goto_3c

    .line 250
    :cond_27
    if-nez v0, :cond_3c

    .line 252
    :goto_29
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 253
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 259
    :cond_3c
    :goto_3c
    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    if-le v3, v4, :cond_47

    .line 260
    return v5

    .line 264
    :cond_47
    const/4 v3, 0x1

    .line 265
    .local v3, "ok":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_49
    const/4 v6, 0x1

    if-eqz v3, :cond_60

    if-ge v4, v2, :cond_60

    .line 266
    add-int v7, v0, v4

    invoke-virtual {p1, v7}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_5b

    goto :goto_5c

    :cond_5b
    move v6, v5

    :goto_5c
    move v3, v6

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 268
    .end local v4    # "j":I
    :cond_60
    if-eqz v3, :cond_6e

    .line 269
    add-int v4, v0, v2

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    const/16 v7, 0x2f

    if-ne v4, v7, :cond_6d

    move v5, v6

    :cond_6d
    move v3, v5

    .line 272
    :cond_6e
    return v3

    .line 236
    .end local v0    # "index":I
    .end local v1    # "protoname":Ljava/lang/String;
    .end local v2    # "protolength":I
    .end local v3    # "ok":Z
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;
    .registers 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 492
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0
.end method

.method public parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;
    .registers 16
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 137
    if-eqz p1, :cond_116

    .line 140
    if-eqz p2, :cond_10e

    .line 144
    iget-object v0, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "protoname":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    .local v1, "protolength":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 148
    .local v2, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v3

    .line 150
    .local v3, "indexTo":I
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 152
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 155
    .local v4, "i":I
    add-int v5, v4, v1

    add-int/lit8 v5, v5, 0x4

    const-string v6, "Not a valid protocol version: "

    if-gt v5, v3, :cond_f3

    .line 162
    const/4 v5, 0x1

    .line 163
    .local v5, "ok":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_27
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_3e

    if-ge v7, v1, :cond_3e

    .line 164
    add-int v10, v4, v7

    invoke-virtual {p1, v10}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_3a

    move v8, v9

    :cond_3a
    move v5, v8

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 166
    .end local v7    # "j":I
    :cond_3e
    if-eqz v5, :cond_4c

    .line 167
    add-int v7, v4, v1

    invoke-virtual {p1, v7}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    const/16 v10, 0x2f

    if-ne v7, v10, :cond_4b

    move v8, v9

    :cond_4b
    move v5, v8

    .line 169
    :cond_4c
    if-eqz v5, :cond_d8

    .line 175
    add-int/lit8 v6, v1, 0x1

    add-int/2addr v4, v6

    .line 177
    const/16 v6, 0x2e

    invoke-virtual {p1, v6, v4, v3}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v6

    .line 178
    .local v6, "period":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_bb

    .line 185
    :try_start_5a
    invoke-virtual {p1, v4, v6}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_62} :catch_9d

    .line 190
    .local v8, "major":I
    nop

    .line 191
    add-int/lit8 v4, v6, 0x1

    .line 193
    const/16 v9, 0x20

    invoke-virtual {p1, v9, v4, v3}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v9

    .line 194
    .local v9, "blank":I
    if-ne v9, v7, :cond_6e

    .line 195
    move v9, v3

    .line 199
    :cond_6e
    :try_start_6e
    invoke-virtual {p1, v4, v9}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_76} :catch_7f

    .line 204
    .local v7, "minor":I
    nop

    .line 206
    invoke-virtual {p2, v9}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 208
    invoke-virtual {p0, v8, v7}, Lorg/apache/http/message/BasicLineParser;->createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;

    move-result-object v10

    return-object v10

    .line 200
    .end local v7    # "minor":I
    :catch_7f
    move-exception v7

    .line 201
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Lorg/apache/http/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid protocol minor version number: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    invoke-virtual {p1, v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 186
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "major":I
    .end local v9    # "blank":I
    :catch_9d
    move-exception v7

    .line 187
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid protocol major version number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 189
    invoke-virtual {p1, v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 179
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_bb
    new-instance v7, Lorg/apache/http/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid protocol version number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 181
    invoke-virtual {p1, v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 170
    .end local v6    # "period":I
    :cond_d8
    new-instance v7, Lorg/apache/http/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 172
    invoke-virtual {p1, v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 156
    .end local v5    # "ok":Z
    :cond_f3
    new-instance v5, Lorg/apache/http/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 158
    invoke-virtual {p1, v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    .end local v0    # "protoname":Ljava/lang/String;
    .end local v1    # "protolength":I
    .end local v2    # "indexFrom":I
    .end local v3    # "indexTo":I
    .end local v4    # "i":I
    :cond_10e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;
    .registers 14
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 310
    const-string v0, "Invalid request line: "

    if-eqz p1, :cond_c0

    .line 313
    if-eqz p2, :cond_b8

    .line 317
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    .line 318
    .local v1, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 321
    .local v2, "indexTo":I
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 322
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 324
    .local v3, "i":I
    const/16 v4, 0x20

    invoke-virtual {p1, v4, v3, v2}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v5

    .line 325
    .local v5, "blank":I
    if-ltz v5, :cond_81

    .line 329
    invoke-virtual {p1, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "method":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 332
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 333
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v7

    move v3, v7

    .line 335
    invoke-virtual {p1, v4, v3, v2}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v4

    .line 336
    .end local v5    # "blank":I
    .local v4, "blank":I
    if-ltz v4, :cond_66

    .line 340
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 343
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    .line 345
    .local v7, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 346
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 351
    invoke-virtual {p0, v6, v5, v7}, Lorg/apache/http/message/BasicLineParser;->createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;

    move-result-object v0

    return-object v0

    .line 347
    :cond_4b
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 348
    invoke-virtual {p1, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    .end local v1    # "indexFrom":I
    .end local v2    # "indexTo":I
    .end local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    throw v8

    .line 337
    .end local v5    # "uri":Ljava/lang/String;
    .end local v7    # "ver":Lorg/apache/http/ProtocolVersion;
    .restart local v1    # "indexFrom":I
    .restart local v2    # "indexTo":I
    .restart local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_66
    new-instance v5, Lorg/apache/http/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 338
    invoke-virtual {p1, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    .end local v1    # "indexFrom":I
    .end local v2    # "indexTo":I
    .end local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    throw v5

    .line 326
    .end local v4    # "blank":I
    .end local v6    # "method":Ljava/lang/String;
    .restart local v1    # "indexFrom":I
    .restart local v2    # "indexTo":I
    .local v5, "blank":I
    .restart local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_81
    new-instance v4, Lorg/apache/http/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 327
    invoke-virtual {p1, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    .end local v1    # "indexFrom":I
    .end local v2    # "indexTo":I
    .end local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    throw v4
    :try_end_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_9c} :catch_9c

    .line 352
    .end local v3    # "i":I
    .end local v5    # "blank":I
    .restart local v1    # "indexFrom":I
    .restart local v2    # "indexTo":I
    .restart local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    :catch_9c
    move-exception v3

    .line 353
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lorg/apache/http/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {p1, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    .end local v1    # "indexFrom":I
    .end local v2    # "indexTo":I
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;
    .registers 13
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 402
    if-eqz p1, :cond_82

    .line 405
    if-eqz p2, :cond_7a

    .line 409
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 410
    .local v0, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 414
    .local v1, "indexTo":I
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .line 417
    .local v2, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 418
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 420
    .local v3, "i":I
    const/16 v4, 0x20

    invoke-virtual {p1, v4, v3, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v4
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_1d} :catch_5c

    .line 421
    .local v4, "blank":I
    if-gez v4, :cond_20

    .line 422
    move v4, v1

    .line 424
    :cond_20
    const/4 v5, 0x0

    .line 426
    .local v5, "statusCode":I
    nop

    .line 427
    :try_start_22
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2a} :catch_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_2a} :catch_5c

    move v5, v6

    .line 432
    nop

    .line 434
    move v3, v4

    .line 435
    const/4 v6, 0x0

    .line 436
    .local v6, "reasonPhrase":Ljava/lang/String;
    if-ge v3, v1, :cond_36

    .line 437
    :try_start_30
    invoke-virtual {p1, v3, v1}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_39

    .line 439
    :cond_36
    const-string v7, ""

    move-object v6, v7

    .line 441
    :goto_39
    invoke-virtual {p0, v2, v5, v6}, Lorg/apache/http/message/BasicLineParser;->createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v7

    return-object v7

    .line 428
    .end local v6    # "reasonPhrase":Ljava/lang/String;
    :catch_3e
    move-exception v6

    .line 429
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/apache/http/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse status code from status line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 431
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "indexFrom":I
    .end local v1    # "indexTo":I
    .end local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    throw v7
    :try_end_5c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_5c} :catch_5c

    .line 443
    .end local v2    # "ver":Lorg/apache/http/ProtocolVersion;
    .end local v3    # "i":I
    .end local v4    # "blank":I
    .end local v5    # "statusCode":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "indexFrom":I
    .restart local v1    # "indexTo":I
    .restart local p0    # "this":Lorg/apache/http/message/BasicLineParser;
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local p2    # "cursor":Lorg/apache/http/message/ParserCursor;
    :catch_5c
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid status line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 445
    invoke-virtual {p1, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    .end local v0    # "indexFrom":I
    .end local v1    # "indexTo":I
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V
    .registers 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .line 500
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 501
    .local v0, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 502
    .local v1, "indexTo":I
    :goto_8
    if-ge v0, v1, :cond_17

    .line 503
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 506
    :cond_17
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 507
    return-void
.end method
