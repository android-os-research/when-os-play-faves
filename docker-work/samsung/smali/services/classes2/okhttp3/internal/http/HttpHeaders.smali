.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field public static final QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field public static final TOKEN_DELIMITERS:Lokio/ByteString;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\"\\"

    .line 45
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    const-string v0, "\t ,="

    .line 46
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .registers 3

    const-string v0, "Content-Length"

    .line 56
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .registers 3

    .line 52
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .registers 9

    .line 325
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    .line 329
    :cond_12
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    return v3

    .line 338
    :cond_28
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    .line 339
    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    return v3
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .registers 2

    .line 91
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
    .registers 1

    .line 84
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result p0

    return p0
.end method

.method public static parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;",
            "Lokio/Buffer;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_e

    .line 186
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    .line 187
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    .line 194
    :cond_e
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v2

    .line 195
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 197
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-nez p1, :cond_1f

    return-void

    .line 198
    :cond_1f
    new-instance p1, Lokhttp3/Challenge;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2c
    const/16 v4, 0x3d

    .line 202
    invoke-static {p1, v4}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v5

    .line 203
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v6

    if-nez v2, :cond_60

    if-nez v6, :cond_40

    .line 206
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 207
    :cond_40
    new-instance v2, Lokhttp3/Challenge;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {v4, v5}, Lokhttp3/internal/http/HttpHeaders;->repeat(CI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_60
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 215
    invoke-static {p1, v4}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v6

    add-int/2addr v5, v6

    :goto_6a
    if-nez v3, :cond_7b

    .line 218
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v5

    if-eqz v5, :cond_77

    goto :goto_7d

    .line 220
    :cond_77
    invoke-static {p1, v4}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v5

    :cond_7b
    if-nez v5, :cond_88

    .line 235
    :goto_7d
    new-instance v4, Lokhttp3/Challenge;

    invoke-direct {v4, v1, v2}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto/16 :goto_2

    :cond_88
    const/4 v6, 0x1

    if-le v5, v6, :cond_8c

    return-void

    .line 224
    :cond_8c
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_93

    return-void

    .line 226
    :cond_93
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v6

    if-nez v6, :cond_a8

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_a8

    .line 227
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v6

    goto :goto_ac

    .line 228
    :cond_a8
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v6

    :goto_ac
    if-nez v6, :cond_af

    return-void

    .line 230
    :cond_af
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_b8

    return-void

    .line 233
    :cond_b8
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v3

    if-nez v3, :cond_c5

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-nez v3, :cond_c5

    return-void

    :cond_c5
    move-object v3, v0

    goto :goto_6a
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 171
    :goto_6
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 172
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 173
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    .line 174
    invoke-static {v0, v2}, Lokhttp3/internal/http/HttpHeaders;->parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_29
    return-object v0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .registers 4

    .line 379
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_f

    const p0, 0x7fffffff

    return p0

    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    long-to-int p0, p0

    return p0

    :catch_19
    return p1
.end method

.method public static readQuotedString(Lokio/Buffer;)Ljava/lang/String;
    .registers 13

    .line 271
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_43

    .line 272
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 274
    :goto_d
    sget-object v2, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_1b

    return-object v5

    .line 277
    :cond_1b
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    if-ne v4, v1, :cond_2c

    .line 278
    invoke-virtual {v0, p0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 279
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 280
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_2c
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v10, v2, v8

    cmp-long v4, v6, v10

    if-nez v4, :cond_39

    return-object v5

    .line 284
    :cond_39
    invoke-virtual {v0, p0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 285
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 286
    invoke-virtual {v0, p0, v8, v9}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_d

    .line 271
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static readToken(Lokio/Buffer;)Ljava/lang/String;
    .registers 5

    .line 296
    :try_start_0
    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 297
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    .line 300
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1a} :catch_1d

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return-object p0

    .line 303
    :catch_1d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .registers 4

    .line 314
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v0, :cond_5

    return-void

    .line 316
    :cond_5
    invoke-static {p1, p2}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object p2

    .line 317
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 319
    :cond_10
    invoke-interface {p0, p1, p2}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method public static repeat(CI)Ljava/lang/String;
    .registers 2

    .line 308
    new-array p1, p1, [C

    .line 309
    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 310
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static skipAll(Lokio/Buffer;B)I
    .registers 5

    const/4 v0, 0x0

    .line 258
    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_15

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v1

    if-ne v1, p1, :cond_15

    add-int/lit8 v0, v0, 0x1

    .line 260
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_1

    :cond_15
    return v0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .line 351
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 352
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    :goto_15
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4

    .line 364
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 365
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    :goto_16
    return p1
.end method

.method public static skipWhitespaceAndCommas(Lokio/Buffer;)Z
    .registers 4

    const/4 v0, 0x0

    .line 242
    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_22

    const-wide/16 v1, 0x0

    .line 243
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_16

    .line 245
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    const/4 v0, 0x1

    goto :goto_1

    :cond_16
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x9

    if-ne v1, v2, :cond_22

    .line 248
    :cond_1e
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_1

    :cond_22
    return v0
.end method

.method public static stringToLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 62
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    return-wide v0
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_43

    .line 104
    invoke-virtual {p0, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_40

    .line 106
    :cond_19
    invoke-virtual {p0, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 108
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_2a
    const-string v5, ","

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_32
    if-ge v6, v5, :cond_40

    aget-object v7, v4, v6

    .line 111
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_43
    return-object v0
.end method

.method public static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 7

    .line 135
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    return-object p0

    .line 138
    :cond_d
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_17
    if-ge v1, v2, :cond_2d

    .line 140
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 142
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 145
    :cond_2d
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .registers 2

    .line 125
    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    .line 127
    invoke-static {v0, p0}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .registers 5

    .line 74
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method
