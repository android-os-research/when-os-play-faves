.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private frontv:Ljava/lang/String;

.field private maxCodeLen:I

.field private varson:Ljava/lang/String;

.field private vowels:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "AEIOU"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    .line 51
    const-string v0, "EIY"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    .line 56
    const-string v0, "CSPTG"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 68
    return-void
.end method

.method private isLastChar(II)Z
    .registers 4
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .line 347
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .registers 7
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "matches":Z
    if-ltz p2, :cond_16

    .line 330
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_16

    .line 331
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    move v0, v2

    .line 333
    :cond_16
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .registers 6
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "matches":Z
    if-lez p2, :cond_15

    .line 321
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    .line 322
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    move v0, v1

    .line 324
    :cond_15
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .registers 5
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I

    .line 315
    iget-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .registers 7
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "matches":Z
    if-ltz p2, :cond_1d

    .line 339
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 340
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 343
    .end local v1    # "substring":Ljava/lang/String;
    :cond_1d
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 364
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 367
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pString"    # Ljava/lang/String;

    .line 377
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .registers 2

    .line 396
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 389
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "txt"    # Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 82
    .local v1, "hard":Z
    if-eqz p1, :cond_2b4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_2b4

    .line 86
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 92
    .local v2, "inwd":[C
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 93
    .local v4, "local":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    .local v5, "code":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    aget-char v7, v2, v6

    const/16 v8, 0x48

    const/16 v9, 0x53

    sparse-switch v7, :sswitch_data_2b8

    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_82

    .line 125
    :sswitch_3d
    aput-char v9, v2, v6

    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 127
    goto :goto_82

    .line 113
    :sswitch_43
    aget-char v7, v2, v3

    const/16 v10, 0x52

    if-ne v7, v10, :cond_4f

    .line 114
    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 115
    goto :goto_82

    .line 117
    :cond_4f
    aget-char v7, v2, v3

    if-ne v7, v8, :cond_5e

    .line 118
    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-virtual {v4, v2, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 119
    const/16 v7, 0x57

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_82

    .line 121
    :cond_5e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 123
    goto :goto_82

    .line 99
    :sswitch_62
    aget-char v6, v2, v3

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_6e

    .line 100
    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_82

    .line 102
    :cond_6e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 104
    goto :goto_82

    .line 106
    :sswitch_72
    aget-char v6, v2, v3

    const/16 v7, 0x45

    if-ne v6, v7, :cond_7e

    .line 107
    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_82

    .line 109
    :cond_7e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 111
    nop

    .line 132
    :goto_82
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 133
    .local v6, "wdsz":I
    const/4 v7, 0x0

    .line 135
    .local v7, "n":I
    :goto_87
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v11

    if-ge v10, v11, :cond_2af

    if-ge v7, v6, :cond_2af

    .line 137
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    .line 139
    .local v10, "symb":C
    const/16 v11, 0x43

    if-eq v10, v11, :cond_a5

    invoke-direct {v0, v4, v7, v10}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v12

    if-eqz v12, :cond_a5

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_29c

    .line 142
    :cond_a5
    const/16 v13, 0x47

    const/16 v14, 0x54

    const/16 v15, 0x46

    const/16 v3, 0x58

    const/16 v12, 0x4b

    packed-switch v10, :pswitch_data_2d2

    goto/16 :goto_29a

    .line 303
    :pswitch_b4
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 300
    :pswitch_b9
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    goto/16 :goto_29a

    .line 294
    :pswitch_c1
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_29a

    add-int/lit8 v3, v7, 0x1

    .line 295
    invoke-direct {v0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_29a

    .line 296
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 292
    :pswitch_d4
    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 275
    :pswitch_d9
    const-string v11, "TIA"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_108

    .line 276
    const-string v11, "TIO"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ea

    goto :goto_108

    .line 280
    :cond_ea
    const-string v3, "TCH"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 282
    goto/16 :goto_29a

    .line 285
    :cond_f4
    const-string v3, "TH"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 286
    const/16 v3, 0x30

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 288
    :cond_103
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 290
    goto/16 :goto_29a

    .line 277
    :cond_108
    :goto_108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 278
    goto/16 :goto_29a

    .line 266
    :pswitch_10d
    const-string v11, "SH"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12b

    .line 267
    const-string v11, "SIO"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12b

    .line 268
    const-string v11, "SIA"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_126

    goto :goto_12b

    .line 271
    :cond_126
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    goto/16 :goto_29a

    .line 269
    :cond_12b
    :goto_12b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 263
    :pswitch_130
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    goto/16 :goto_29a

    .line 255
    :pswitch_135
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 257
    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 259
    :cond_140
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    goto/16 :goto_29a

    .line 246
    :pswitch_145
    if-lez v7, :cond_152

    .line 247
    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-nez v3, :cond_29a

    .line 248
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 251
    :cond_152
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    goto/16 :goto_29a

    .line 226
    :pswitch_157
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 227
    goto/16 :goto_29a

    .line 229
    :cond_15f
    if-lez v7, :cond_171

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    add-int/lit8 v11, v7, -0x1

    .line 230
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_171

    .line 231
    goto/16 :goto_29a

    .line 233
    :cond_171
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_29a

    .line 234
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 198
    :pswitch_17e
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 199
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 200
    goto/16 :goto_29a

    .line 202
    :cond_18e
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 203
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_1a6

    add-int/lit8 v3, v7, 0x2

    .line 204
    invoke-direct {v0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 205
    goto/16 :goto_29a

    .line 207
    :cond_1a6
    if-lez v7, :cond_1ba

    .line 208
    const-string v3, "GN"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29a

    .line 209
    const-string v3, "GNED"

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 210
    goto/16 :goto_29a

    .line 212
    :cond_1ba
    invoke-direct {v0, v4, v7, v13}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 213
    const/4 v1, 0x1

    goto :goto_1c3

    .line 215
    :cond_1c2
    const/4 v1, 0x0

    .line 217
    :goto_1c3
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1e0

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v11, v7, 0x1

    .line 218
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1e0

    if-nez v1, :cond_1e0

    .line 220
    const/16 v3, 0x4a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_29a

    .line 222
    :cond_1e0
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    goto/16 :goto_29a

    .line 243
    :pswitch_1e5
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    goto/16 :goto_29a

    .line 189
    :pswitch_1ea
    add-int/lit8 v3, v7, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_20f

    .line 190
    invoke-direct {v0, v4, v7, v13}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_20f

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v11, v7, 0x2

    .line 191
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_20f

    .line 192
    const/16 v3, 0x4a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_29a

    .line 194
    :cond_20f
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    goto/16 :goto_29a

    .line 157
    :pswitch_214
    invoke-direct {v0, v4, v7, v9}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_230

    .line 158
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v11

    if-nez v11, :cond_230

    iget-object v11, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v13, v7, 0x1

    .line 159
    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_230

    .line 160
    goto/16 :goto_29a

    .line 162
    :cond_230
    const-string v11, "CIA"

    invoke-direct {v0, v4, v7, v11}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23c

    .line 163
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    goto :goto_29a

    .line 166
    :cond_23c
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v11

    if-nez v11, :cond_254

    iget-object v11, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v13, v7, 0x1

    .line 167
    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_254

    .line 168
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    goto :goto_29a

    .line 171
    :cond_254
    invoke-direct {v0, v4, v7, v9}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_264

    .line 172
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_264

    .line 173
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    goto :goto_29a

    .line 176
    :cond_264
    invoke-direct {v0, v4, v7, v8}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v11

    if-eqz v11, :cond_27e

    .line 177
    if-nez v7, :cond_27a

    const/4 v11, 0x3

    if-lt v6, v11, :cond_27a

    .line 179
    const/4 v11, 0x2

    invoke-direct {v0, v4, v11}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v11

    if-eqz v11, :cond_27a

    .line 180
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_29a

    .line 182
    :cond_27a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_29a

    .line 185
    :cond_27e
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    goto :goto_29a

    .line 149
    :pswitch_282
    const/16 v3, 0x4d

    invoke-direct {v0, v4, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_291

    .line 150
    invoke-direct {v0, v6, v7}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_291

    .line 151
    goto :goto_29a

    .line 153
    :cond_291
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    goto :goto_29a

    .line 144
    :pswitch_295
    if-nez v7, :cond_29a

    .line 145
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    :cond_29a
    :goto_29a
    const/4 v3, 0x1

    add-int/2addr v7, v3

    .line 307
    :goto_29c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v12

    if-le v11, v12, :cond_2ad

    .line 308
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 310
    .end local v10    # "symb":C
    :cond_2ad
    goto/16 :goto_87

    .line 311
    :cond_2af
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 83
    .end local v2    # "inwd":[C
    .end local v4    # "local":Ljava/lang/StringBuffer;
    .end local v5    # "code":Ljava/lang/StringBuffer;
    .end local v6    # "wdsz":I
    .end local v7    # "n":I
    :cond_2b4
    :goto_2b4
    const-string v2, ""

    return-object v2

    nop

    :sswitch_data_2b8
    .sparse-switch
        0x41 -> :sswitch_72
        0x47 -> :sswitch_62
        0x4b -> :sswitch_62
        0x50 -> :sswitch_62
        0x57 -> :sswitch_43
        0x58 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_2d2
    .packed-switch 0x41
        :pswitch_295
        :pswitch_282
        :pswitch_214
        :pswitch_1ea
        :pswitch_295
        :pswitch_1e5
        :pswitch_17e
        :pswitch_157
        :pswitch_295
        :pswitch_1e5
        :pswitch_145
        :pswitch_1e5
        :pswitch_1e5
        :pswitch_1e5
        :pswitch_295
        :pswitch_135
        :pswitch_130
        :pswitch_1e5
        :pswitch_10d
        :pswitch_d9
        :pswitch_295
        :pswitch_d4
        :pswitch_c1
        :pswitch_b9
        :pswitch_c1
        :pswitch_b4
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .registers 2
    .param p1, "maxCodeLen"    # I

    .line 402
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
