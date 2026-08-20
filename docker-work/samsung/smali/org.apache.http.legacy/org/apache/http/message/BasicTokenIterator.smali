.class public Lorg/apache/http/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lorg/apache/http/TokenIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"


# instance fields
.field protected currentHeader:Ljava/lang/String;

.field protected currentToken:Ljava/lang/String;

.field protected final headerIt:Lorg/apache/http/HeaderIterator;

.field protected searchPos:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .registers 4
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_f

    .line 95
    iput-object p1, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    .line 97
    return-void

    .line 91
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header iterator must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 221
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findNext(I)I
    .registers 5
    .param p1, "from"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 176
    const/4 v0, -0x1

    if-gez p1, :cond_1a

    .line 178
    iget-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 179
    return v0

    .line 181
    :cond_c
    iget-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 182
    const/4 p1, 0x0

    goto :goto_1e

    .line 185
    :cond_1a
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenSeparator(I)I

    move-result p1

    .line 188
    :goto_1e
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenStart(I)I

    move-result v1

    .line 189
    .local v1, "start":I
    if-gez v1, :cond_28

    .line 190
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    .line 191
    return v0

    .line 194
    :cond_28
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findTokenEnd(I)I

    move-result v0

    .line 195
    .local v0, "end":I
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/http/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    .line 196
    return v0
.end method

.method protected findTokenEnd(I)I
    .registers 5
    .param p1, "from"    # I

    .line 332
    if-ltz p1, :cond_1c

    .line 337
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 338
    .local v0, "to":I
    add-int/lit8 v1, p1, 0x1

    .line 339
    .local v1, "end":I
    :goto_a
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 343
    :cond_1b
    return v1

    .line 333
    .end local v0    # "to":I
    .end local v1    # "end":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token start position must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findTokenSeparator(I)I
    .registers 9
    .param p1, "from"    # I

    .line 292
    if-ltz p1, :cond_73

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "found":Z
    iget-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 299
    .local v1, "to":I
    :goto_9
    if-nez v0, :cond_72

    if-ge p1, v1, :cond_72

    .line 300
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 301
    .local v2, "ch":C
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 302
    const/4 v0, 0x1

    goto :goto_23

    .line 303
    :cond_1b
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 304
    add-int/lit8 p1, p1, 0x1

    .line 314
    .end local v2    # "ch":C
    :goto_23
    goto :goto_9

    .line 305
    .restart local v2    # "ch":C
    :cond_24
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v3

    const-string v4, "): "

    if-eqz v3, :cond_4f

    .line 306
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tokens without separator (pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_4f
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid character after token (pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    .end local v2    # "ch":C
    :cond_72
    return p1

    .line 293
    .end local v0    # "found":Z
    .end local v1    # "to":I
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search position must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findTokenStart(I)I
    .registers 8
    .param p1, "from"    # I

    .line 236
    if-ltz p1, :cond_7c

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "found":Z
    :goto_3
    if-nez v0, :cond_76

    iget-object v1, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    if-eqz v1, :cond_76

    .line 244
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 245
    .local v1, "to":I
    :goto_d
    if-nez v0, :cond_5a

    if-ge p1, v1, :cond_5a

    .line 247
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 248
    .local v2, "ch":C
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-nez v3, :cond_57

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_57

    .line 251
    :cond_24
    iget-object v3, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 253
    const/4 v0, 0x1

    goto :goto_59

    .line 255
    :cond_32
    new-instance v3, Lorg/apache/http/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character before token (pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_57
    :goto_57
    add-int/lit8 p1, p1, 0x1

    .line 259
    .end local v2    # "ch":C
    :goto_59
    goto :goto_d

    .line 260
    :cond_5a
    if-nez v0, :cond_75

    .line 261
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 262
    iget-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 263
    const/4 p1, 0x0

    goto :goto_75

    .line 265
    :cond_72
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/http/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    .line 268
    .end local v1    # "to":I
    :cond_75
    :goto_75
    goto :goto_3

    .line 270
    :cond_76
    if-eqz v0, :cond_7a

    move v1, p1

    goto :goto_7b

    :cond_7a
    const/4 v1, -0x1

    :goto_7b
    return v1

    .line 237
    .end local v0    # "found":Z
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search position must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected isHttpSeparator(C)Z
    .registers 3
    .param p1, "ch"    # C

    .line 429
    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected isTokenChar(C)Z
    .registers 5
    .param p1, "ch"    # C

    .line 397
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 398
    return v1

    .line 401
    :cond_8
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 402
    return v2

    .line 405
    :cond_10
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicTokenIterator;->isHttpSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 406
    return v2

    .line 414
    :cond_17
    return v1
.end method

.method protected isTokenSeparator(C)Z
    .registers 3
    .param p1, "ch"    # C

    .line 359
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected isWhitespace(C)Z
    .registers 3
    .param p1, "ch"    # C

    .line 378
    const/16 v0, 0x9

    if-eq p1, v0, :cond_d

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/message/BasicTokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 121
    iget-object v0, p0, Lorg/apache/http/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    .line 123
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicTokenIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lorg/apache/http/message/BasicTokenIterator;->searchPos:I

    .line 125
    return-object v0

    .line 118
    .end local v0    # "result":Ljava/lang/String;
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
