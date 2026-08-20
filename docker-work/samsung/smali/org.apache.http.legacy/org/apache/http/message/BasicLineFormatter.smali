.class public Lorg/apache/http/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lorg/apache/http/message/LineFormatter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lorg/apache/http/message/BasicLineFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatHeader(Lorg/apache/http/Header;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .registers 3
    .param p0, "header"    # Lorg/apache/http/Header;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .line 297
    if-nez p1, :cond_4

    .line 298
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    .line 299
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatProtocolVersion(Lorg/apache/http/ProtocolVersion;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .registers 3
    .param p0, "version"    # Lorg/apache/http/ProtocolVersion;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .line 116
    if-nez p1, :cond_4

    .line 117
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    .line 118
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatRequestLine(Lorg/apache/http/RequestLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .registers 3
    .param p0, "reqline"    # Lorg/apache/http/RequestLine;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .line 175
    if-nez p1, :cond_4

    .line 176
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    .line 177
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatStatusLine(Lorg/apache/http/StatusLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .registers 3
    .param p0, "statline"    # Lorg/apache/http/StatusLine;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .line 235
    if-nez p1, :cond_4

    .line 236
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    .line 237
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;
    .registers 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "version"    # Lorg/apache/http/ProtocolVersion;

    .line 125
    if-eqz p2, :cond_3b

    .line 131
    move-object v0, p1

    .line 132
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v1

    .line 133
    .local v1, "len":I
    if-nez v0, :cond_10

    .line 134
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v2, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object v0, v2

    goto :goto_13

    .line 136
    :cond_10
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 139
    :goto_13
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 140
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 141
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 142
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 143
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 145
    return-object v0

    .line 126
    .end local v0    # "result":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "len":I
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protocol version may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/apache/http/Header;

    .line 334
    invoke-interface {p2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 338
    .local v2, "len":I
    if-eqz v1, :cond_15

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 341
    :cond_15
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 343
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 344
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 345
    if-eqz v1, :cond_25

    .line 346
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 348
    :cond_25
    return-void
.end method

.method protected doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/apache/http/RequestLine;

    .line 206
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "method":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 211
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 212
    .local v2, "len":I
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 214
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 215
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 216
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 218
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    .line 219
    return-void
.end method

.method protected doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/apache/http/StatusLine;

    .line 267
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 269
    .local v0, "len":I
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 273
    :cond_19
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 275
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    .line 276
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 277
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 279
    if-eqz v1, :cond_3b

    .line 280
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 282
    :cond_3b
    return-void
.end method

.method protected estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I
    .registers 3
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .line 159
    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;
    .registers 5
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/apache/http/Header;

    .line 306
    if-eqz p2, :cond_17

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    instance-of v1, p2, Lorg/apache/http/FormattedHeader;

    if-eqz v1, :cond_f

    .line 314
    move-object v1, p2

    check-cast v1, Lorg/apache/http/FormattedHeader;

    invoke-interface {v1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    goto :goto_16

    .line 316
    :cond_f
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 317
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V

    .line 319
    :goto_16
    return-object v0

    .line 307
    .end local v0    # "result":Lorg/apache/http/util/CharArrayBuffer;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;
    .registers 5
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/apache/http/RequestLine;

    .line 184
    if-eqz p2, :cond_a

    .line 189
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 190
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V

    .line 192
    return-object v0

    .line 185
    .end local v0    # "result":Lorg/apache/http/util/CharArrayBuffer;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;
    .registers 5
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/apache/http/StatusLine;

    .line 244
    if-eqz p2, :cond_a

    .line 249
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 250
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V

    .line 252
    return-object v0

    .line 245
    .end local v0    # "result":Lorg/apache/http/util/CharArrayBuffer;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;

    .line 94
    if-eqz p1, :cond_6

    .line 95
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_e

    .line 97
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object p1, v0

    .line 99
    :goto_e
    return-object p1
.end method
