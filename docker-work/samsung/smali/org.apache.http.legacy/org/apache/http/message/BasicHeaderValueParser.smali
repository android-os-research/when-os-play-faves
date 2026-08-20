.class public Lorg/apache/http/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueParser;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALL_DELIMITERS:[C

.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

.field private static final ELEM_DELIMITER:C = ','

.field private static final PARAM_DELIMITER:C = ';'


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    return-void

    :array_10
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf(C[C)Z
    .registers 4
    .param p0, "ch"    # C
    .param p1, "chs"    # [C

    .line 310
    if-eqz p1, :cond_f

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 312
    aget-char v1, p1, v0

    if-ne p0, v1, :cond_c

    .line 313
    const/4 v1, 0x1

    return v1

    .line 311
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 317
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static final parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_21

    .line 107
    if-nez p1, :cond_6

    .line 108
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 110
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 111
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 113
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2

    .line 103
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseHeaderElement(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/HeaderElement;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 153
    if-eqz p0, :cond_21

    .line 158
    if-nez p1, :cond_6

    .line 159
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 161
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 162
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 163
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 164
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2

    .line 154
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseNameValuePair(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/NameValuePair;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 288
    if-eqz p0, :cond_21

    .line 293
    if-nez p1, :cond_6

    .line 294
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 296
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 297
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 298
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 299
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2

    .line 289
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseParameters(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/NameValuePair;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/apache/http/message/HeaderValueParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 218
    if-eqz p0, :cond_21

    .line 223
    if-nez p1, :cond_6

    .line 224
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 226
    :cond_6
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 227
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 228
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 229
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2

    .line 219
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value to parse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # [Lorg/apache/http/NameValuePair;

    .line 201
    new-instance v0, Lorg/apache/http/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 421
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;
    .registers 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .line 121
    if-eqz p1, :cond_3d

    .line 124
    if-eqz p2, :cond_35

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "elements":Ljava/util/List;
    :goto_9
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_27

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 131
    .local v1, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 132
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v1    # "element":Lorg/apache/http/HeaderElement;
    :cond_26
    goto :goto_9

    .line 135
    :cond_27
    nop

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/http/HeaderElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/HeaderElement;

    .line 135
    return-object v1

    .line 125
    .end local v0    # "elements":Ljava/util/List;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .line 172
    if-eqz p1, :cond_36

    .line 175
    if-eqz p2, :cond_2e

    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    .line 180
    .local v0, "nvp":Lorg/apache/http/NameValuePair;
    const/4 v1, 0x0

    .line 181
    .local v1, "params":[Lorg/apache/http/NameValuePair;
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_21

    .line 182
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 183
    .local v2, "ch":C
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_21

    .line 184
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 187
    .end local v2    # "ch":C
    :cond_21
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/http/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2

    .line 176
    .end local v0    # "nvp":Lorg/apache/http/NameValuePair;
    .end local v1    # "params":[Lorg/apache/http/NameValuePair;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .registers 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .line 306
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v0

    return-object v0
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;
    .registers 22
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # [C

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_d5

    .line 327
    if-eqz v2, :cond_cd

    .line 331
    const/4 v4, 0x0

    .line 333
    .local v4, "terminated":Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    .line 334
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v6

    .line 335
    .local v6, "indexFrom":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v7

    .line 338
    .local v7, "indexTo":I
    const/4 v8, 0x0

    .line 339
    .local v8, "name":Ljava/lang/String;
    :goto_1a
    if-ge v5, v7, :cond_31

    .line 340
    invoke-virtual {v1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    .line 341
    .local v9, "ch":C
    const/16 v10, 0x3d

    if-ne v9, v10, :cond_25

    .line 342
    goto :goto_31

    .line 344
    :cond_25
    invoke-static {v9, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 345
    const/4 v4, 0x1

    .line 346
    goto :goto_31

    .line 348
    :cond_2d
    nop

    .end local v9    # "ch":C
    add-int/lit8 v5, v5, 0x1

    .line 349
    goto :goto_1a

    .line 351
    :cond_31
    :goto_31
    if-ne v5, v7, :cond_39

    .line 352
    const/4 v4, 0x1

    .line 353
    invoke-virtual {v1, v6, v7}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_3f

    .line 355
    :cond_39
    invoke-virtual {v1, v6, v5}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v8

    .line 356
    add-int/lit8 v5, v5, 0x1

    .line 359
    :goto_3f
    if-eqz v4, :cond_4a

    .line 360
    invoke-virtual {v2, v5}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 361
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v9

    return-object v9

    .line 365
    :cond_4a
    const/4 v9, 0x0

    .line 366
    .local v9, "value":Ljava/lang/String;
    move v10, v5

    .line 368
    .local v10, "i1":I
    const/4 v11, 0x0

    .line 369
    .local v11, "qouted":Z
    const/4 v12, 0x0

    .line 370
    .local v12, "escaped":Z
    :goto_4e
    const/16 v13, 0x22

    if-ge v5, v7, :cond_83

    .line 371
    invoke-virtual {v1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v14

    .line 372
    .local v14, "ch":C
    const/4 v15, 0x0

    const/16 v16, 0x1

    if-ne v14, v13, :cond_66

    if-nez v12, :cond_66

    .line 373
    if-nez v11, :cond_62

    move/from16 v17, v16

    goto :goto_64

    :cond_62
    move/from16 v17, v15

    :goto_64
    move/from16 v11, v17

    .line 375
    :cond_66
    if-nez v11, :cond_72

    if-nez v12, :cond_72

    invoke-static {v14, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v17

    if-eqz v17, :cond_72

    .line 376
    const/4 v4, 0x1

    .line 377
    goto :goto_83

    .line 379
    :cond_72
    if-eqz v12, :cond_76

    .line 380
    const/4 v12, 0x0

    goto :goto_7f

    .line 382
    :cond_76
    if-eqz v11, :cond_7e

    const/16 v13, 0x5c

    if-ne v14, v13, :cond_7e

    move/from16 v15, v16

    :cond_7e
    move v12, v15

    .line 384
    :goto_7f
    nop

    .end local v14    # "ch":C
    add-int/lit8 v5, v5, 0x1

    .line 385
    goto :goto_4e

    .line 387
    :cond_83
    :goto_83
    move v14, v5

    .line 389
    .local v14, "i2":I
    :goto_84
    if-ge v10, v14, :cond_93

    invoke-virtual {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v15

    if-eqz v15, :cond_93

    .line 390
    add-int/lit8 v10, v10, 0x1

    goto :goto_84

    .line 393
    :cond_93
    :goto_93
    if-le v14, v10, :cond_a4

    add-int/lit8 v15, v14, -0x1

    invoke-virtual {v1, v15}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 394
    add-int/lit8 v14, v14, -0x1

    goto :goto_93

    .line 397
    :cond_a4
    sub-int v15, v14, v10

    const/4 v13, 0x2

    if-lt v15, v13, :cond_bd

    .line 398
    invoke-virtual {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v13

    const/16 v15, 0x22

    if-ne v13, v15, :cond_bd

    add-int/lit8 v13, v14, -0x1

    .line 399
    invoke-virtual {v1, v13}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v13

    if-ne v13, v15, :cond_bd

    .line 400
    add-int/lit8 v10, v10, 0x1

    .line 401
    add-int/lit8 v14, v14, -0x1

    .line 403
    :cond_bd
    invoke-virtual {v1, v10, v14}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 404
    if-eqz v4, :cond_c5

    .line 405
    add-int/lit8 v5, v5, 0x1

    .line 407
    :cond_c5
    invoke-virtual {v2, v5}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 408
    invoke-virtual {v0, v8, v9}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v13

    return-object v13

    .line 328
    .end local v4    # "terminated":Z
    .end local v5    # "pos":I
    .end local v6    # "indexFrom":I
    .end local v7    # "indexTo":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "i1":I
    .end local v11    # "qouted":Z
    .end local v12    # "escaped":Z
    .end local v14    # "i2":I
    :cond_cd
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parser cursor may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 325
    :cond_d5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Char array buffer may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;
    .registers 9
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .line 238
    if-eqz p1, :cond_61

    .line 241
    if-eqz p2, :cond_59

    .line 245
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 246
    .local v0, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 248
    .local v1, "indexTo":I
    :goto_c
    if-ge v0, v1, :cond_1c

    .line 249
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 250
    .local v2, "ch":C
    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 251
    nop

    .end local v2    # "ch":C
    add-int/lit8 v0, v0, 0x1

    .line 255
    goto :goto_c

    .line 256
    :cond_1c
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 257
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 258
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    return-object v2

    .line 261
    :cond_29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v2, "params":Ljava/util/List;
    :goto_2e
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 263
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v3

    .line 264
    .local v3, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    .line 266
    .local v4, "ch":C
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_4a

    .line 267
    goto :goto_4b

    .line 269
    .end local v3    # "param":Lorg/apache/http/NameValuePair;
    .end local v4    # "ch":C
    :cond_4a
    goto :goto_2e

    .line 271
    :cond_4b
    :goto_4b
    nop

    .line 272
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/http/NameValuePair;

    .line 271
    return-object v3

    .line 242
    .end local v0    # "pos":I
    .end local v1    # "indexTo":I
    .end local v2    # "params":Ljava/util/List;
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parser cursor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
