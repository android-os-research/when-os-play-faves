.class public final Landroid/util/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o FALSE:Ljava/lang/String; = "false"

.field private static final greylist-max-o TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final greylist-max-o buffer:[C

.field private greylist-max-o bufferStartColumn:I

.field private greylist-max-o bufferStartLine:I

.field private final greylist-max-o in:Ljava/io/Reader;

.field private greylist-max-o lenient:Z

.field private greylist-max-o limit:I

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o pos:I

.field private greylist-max-o skipping:Z

.field private final greylist-max-o stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist stringPool:Lcom/android/internal/util/StringPool;

.field private greylist-max-o token:Landroid/util/JsonToken;

.field private greylist-max-o value:Ljava/lang/String;

.field private greylist-max-o valueLength:I

.field private greylist-max-o valuePos:I


# direct methods
.method public constructor whitelist <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lcom/android/internal/util/StringPool;

    invoke-direct {v0}, Lcom/android/internal/util/StringPool;-><init>()V

    iput-object v0, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    .line 197
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    .line 198
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 199
    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 204
    const/4 v1, 0x1

    iput v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 205
    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    .line 209
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 230
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 236
    if-eqz p1, :cond_2f

    .line 239
    iput-object p1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    .line 240
    return-void

    .line 237
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o advance()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 375
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 376
    .local v0, "result":Landroid/util/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 377
    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 378
    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 379
    return-object v0
.end method

.method private greylist-max-o checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v0, :cond_5

    .line 842
    return-void

    .line 840
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private greylist-max-o decodeLiteral()Landroid/util/JsonToken;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    iget v0, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1073
    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v0

    .line 1074
    :cond_8
    iget v1, p0, Landroid/util/JsonReader;->valueLength:I

    const/16 v2, 0x55

    const/16 v3, 0x75

    const/16 v4, 0x4c

    const/16 v5, 0x6c

    const/4 v6, 0x4

    if-ne v1, v6, :cond_4d

    const/16 v7, 0x6e

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v9, v8, v0

    if-eq v7, v9, :cond_21

    const/16 v7, 0x4e

    if-ne v7, v9, :cond_4d

    :cond_21
    add-int/lit8 v7, v0, 0x1

    aget-char v7, v8, v7

    if-eq v3, v7, :cond_2d

    add-int/lit8 v7, v0, 0x1

    aget-char v7, v8, v7

    if-ne v2, v7, :cond_4d

    :cond_2d
    add-int/lit8 v7, v0, 0x2

    aget-char v7, v8, v7

    if-eq v5, v7, :cond_39

    add-int/lit8 v7, v0, 0x2

    aget-char v7, v8, v7

    if-ne v4, v7, :cond_4d

    :cond_39
    add-int/lit8 v7, v0, 0x3

    aget-char v7, v8, v7

    if-eq v5, v7, :cond_45

    add-int/lit8 v7, v0, 0x3

    aget-char v7, v8, v7

    if-ne v4, v7, :cond_4d

    .line 1079
    :cond_45
    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1080
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    return-object v0

    .line 1081
    :cond_4d
    const/16 v7, 0x45

    const/16 v8, 0x65

    if-ne v1, v6, :cond_8f

    const/16 v6, 0x74

    iget-object v9, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v10, v9, v0

    if-eq v6, v10, :cond_5f

    const/16 v6, 0x54

    if-ne v6, v10, :cond_8f

    :cond_5f
    const/16 v6, 0x72

    add-int/lit8 v10, v0, 0x1

    aget-char v10, v9, v10

    if-eq v6, v10, :cond_6f

    const/16 v6, 0x52

    add-int/lit8 v10, v0, 0x1

    aget-char v10, v9, v10

    if-ne v6, v10, :cond_8f

    :cond_6f
    add-int/lit8 v6, v0, 0x2

    aget-char v6, v9, v6

    if-eq v3, v6, :cond_7b

    add-int/lit8 v3, v0, 0x2

    aget-char v3, v9, v3

    if-ne v2, v3, :cond_8f

    :cond_7b
    add-int/lit8 v2, v0, 0x3

    aget-char v2, v9, v2

    if-eq v8, v2, :cond_87

    add-int/lit8 v2, v0, 0x3

    aget-char v2, v9, v2

    if-ne v7, v2, :cond_8f

    .line 1086
    :cond_87
    const-string/jumbo v0, "true"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1087
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    .line 1088
    :cond_8f
    const/4 v2, 0x5

    if-ne v1, v2, :cond_dd

    const/16 v2, 0x66

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v6, v3, v0

    if-eq v2, v6, :cond_9e

    const/16 v2, 0x46

    if-ne v2, v6, :cond_dd

    :cond_9e
    const/16 v2, 0x61

    add-int/lit8 v6, v0, 0x1

    aget-char v6, v3, v6

    if-eq v2, v6, :cond_ae

    const/16 v2, 0x41

    add-int/lit8 v6, v0, 0x1

    aget-char v6, v3, v6

    if-ne v2, v6, :cond_dd

    :cond_ae
    add-int/lit8 v2, v0, 0x2

    aget-char v2, v3, v2

    if-eq v5, v2, :cond_ba

    add-int/lit8 v2, v0, 0x2

    aget-char v2, v3, v2

    if-ne v4, v2, :cond_dd

    :cond_ba
    const/16 v2, 0x73

    add-int/lit8 v4, v0, 0x3

    aget-char v4, v3, v4

    if-eq v2, v4, :cond_ca

    const/16 v2, 0x53

    add-int/lit8 v4, v0, 0x3

    aget-char v4, v3, v4

    if-ne v2, v4, :cond_dd

    :cond_ca
    add-int/lit8 v2, v0, 0x4

    aget-char v2, v3, v2

    if-eq v8, v2, :cond_d6

    add-int/lit8 v2, v0, 0x4

    aget-char v2, v3, v2

    if-ne v7, v2, :cond_dd

    .line 1094
    :cond_d6
    const-string v0, "false"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1095
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    .line 1097
    :cond_dd
    iget-object v2, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    iget v2, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o decodeNumber([CII)Landroid/util/JsonToken;
    .registers 10
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1109
    move v0, p2

    .line 1110
    .local v0, "i":I
    aget-char v1, p1, v0

    .line 1112
    .local v1, "c":I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_b

    .line 1113
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1116
    :cond_b
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-ne v1, v4, :cond_16

    .line 1117
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_29

    .line 1118
    :cond_16
    const/16 v5, 0x31

    if-lt v1, v5, :cond_6e

    if-gt v1, v3, :cond_6e

    .line 1119
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1120
    :goto_20
    if-lt v1, v4, :cond_29

    if-gt v1, v3, :cond_29

    .line 1121
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_20

    .line 1127
    :cond_29
    :goto_29
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_3a

    .line 1128
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1129
    :goto_31
    if-lt v1, v4, :cond_3a

    if-gt v1, v3, :cond_3a

    .line 1130
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_31

    .line 1134
    :cond_3a
    const/16 v5, 0x65

    if-eq v1, v5, :cond_42

    const/16 v5, 0x45

    if-ne v1, v5, :cond_61

    .line 1135
    :cond_42
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1136
    const/16 v5, 0x2b

    if-eq v1, v5, :cond_4c

    if-ne v1, v2, :cond_50

    .line 1137
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1139
    :cond_50
    if-lt v1, v4, :cond_6b

    if-gt v1, v3, :cond_6b

    .line 1140
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1141
    :goto_58
    if-lt v1, v4, :cond_61

    if-gt v1, v3, :cond_61

    .line 1142
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_58

    .line 1149
    :cond_61
    add-int v2, p2, p3

    if-ne v0, v2, :cond_68

    .line 1150
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    return-object v2

    .line 1152
    :cond_68
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    .line 1145
    :cond_6b
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    .line 1124
    :cond_6e
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2
.end method

.method private greylist-max-o expect(Landroid/util/JsonToken;)V
    .registers 5
    .param p1, "expected"    # Landroid/util/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 311
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-ne v0, p1, :cond_b

    .line 314
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 315
    return-void

    .line 312
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o fillBuffer(I)Z
    .registers 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    .line 727
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v1, v1, v0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_16

    .line 728
    iget v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 729
    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    goto :goto_1b

    .line 731
    :cond_16
    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 726
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 735
    .end local v0    # "i":I
    :cond_1e
    iget v0, p0, Landroid/util/JsonReader;->limit:I

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2c

    .line 736
    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 737
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    invoke-static {v4, v1, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    .line 739
    :cond_2c
    iput v3, p0, Landroid/util/JsonReader;->limit:I

    .line 742
    :goto_2e
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 744
    :cond_30
    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    move v1, v0

    .local v1, "total":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_64

    .line 745
    iget v0, p0, Landroid/util/JsonReader;->limit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 748
    iget v4, p0, Landroid/util/JsonReader;->bufferStartLine:I

    if-ne v4, v2, :cond_61

    iget v4, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    if-ne v4, v2, :cond_61

    if-lez v0, :cond_61

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v5, v5, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_61

    .line 750
    iget v5, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/util/JsonReader;->pos:I

    .line 751
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 754
    :cond_61
    if-lt v0, p1, :cond_30

    .line 755
    return v2

    .line 758
    :cond_64
    return v3
.end method

.method private greylist-max-o getColumnNumber()I
    .registers 5

    .line 772
    iget v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 773
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_16

    .line 774
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 775
    const/4 v0, 0x1

    goto :goto_13

    .line 777
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 773
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 780
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method private greylist-max-o getLineNumber()I
    .registers 5

    .line 762
    iget v0, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 763
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_14

    .line 764
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 765
    add-int/lit8 v0, v0, 0x1

    .line 763
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 768
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method private greylist-max-o getSnippet()Ljava/lang/CharSequence;
    .registers 6

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .local v0, "snippet":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1168
    .local v1, "beforePos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1169
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1170
    .local v2, "afterPos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1171
    return-object v0
.end method

.method private greylist-max-o nextInArray(Z)Landroid/util/JsonToken;
    .registers 3
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    if-eqz p1, :cond_8

    .line 589
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    goto :goto_22

    .line 592
    :cond_8
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_52

    .line 601
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 594
    :sswitch_16
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 595
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 597
    :sswitch_1e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 599
    :sswitch_21
    nop

    .line 605
    :goto_22
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_60

    .line 620
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 621
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 607
    :sswitch_34
    if-eqz p1, :cond_3e

    .line 608
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 609
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 615
    :cond_3e
    :sswitch_3e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 616
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 617
    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 618
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    nop

    :sswitch_data_52
    .sparse-switch
        0x2c -> :sswitch_21
        0x3b -> :sswitch_1e
        0x5d -> :sswitch_16
    .end sparse-switch

    :sswitch_data_60
    .sparse-switch
        0x2c -> :sswitch_3e
        0x3b -> :sswitch_3e
        0x5d -> :sswitch_34
    .end sparse-switch
.end method

.method private greylist-max-o nextInObject(Z)Landroid/util/JsonToken;
    .registers 4
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    if-eqz p1, :cond_18

    .line 633
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    .line 638
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_2f

    .line 635
    :pswitch_10
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 636
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 641
    :cond_18
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_70

    .line 649
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 643
    :sswitch_26
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 644
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 647
    :sswitch_2e
    nop

    .line 654
    :goto_2f
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 655
    .local v0, "quote":I
    sparse-switch v0, :sswitch_data_7e

    .line 662
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 663
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 664
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 665
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_58

    .line 657
    :sswitch_4d
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 659
    :sswitch_50
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 660
    nop

    .line 670
    :goto_58
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 671
    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 666
    :cond_62
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_6a
    .packed-switch 0x7d
        :pswitch_10
    .end packed-switch

    :sswitch_data_70
    .sparse-switch
        0x2c -> :sswitch_2e
        0x3b -> :sswitch_2e
        0x7d -> :sswitch_26
    .end sparse-switch

    :sswitch_data_7e
    .sparse-switch
        0x22 -> :sswitch_50
        0x27 -> :sswitch_4d
    .end sparse-switch
.end method

.method private greylist-max-o nextLiteral(Z)Ljava/lang/String;
    .registers 8
    .param p1, "assignOffsetsOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 929
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/JsonReader;->valueLength:I

    .line 930
    const/4 v2, 0x0

    .line 934
    .local v2, "i":I
    :goto_8
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int v4, v3, v2

    iget v5, p0, Landroid/util/JsonReader;->limit:I

    if-ge v4, v5, :cond_1f

    .line 935
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    sparse-switch v3, :sswitch_data_8e

    .line 934
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 941
    :sswitch_1b
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 953
    :sswitch_1e
    goto :goto_56

    .line 962
    :cond_1f
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 963
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 964
    goto :goto_8

    .line 966
    :cond_2d
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    aput-char v1, v3, v4

    .line 967
    goto :goto_56

    .line 972
    :cond_34
    if-nez v0, :cond_3c

    .line 973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 975
    :cond_3c
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 976
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    .line 977
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 978
    const/4 v2, 0x0

    .line 979
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 980
    nop

    .line 985
    :goto_56
    if-eqz p1, :cond_60

    if-nez v0, :cond_60

    .line 986
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 987
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    goto :goto_80

    .line 988
    .end local v1    # "result":Ljava/lang/String;
    :cond_60
    iget-boolean v1, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v1, :cond_68

    .line 989
    const-string/jumbo v1, "skipped!"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_80

    .line 990
    .end local v1    # "result":Ljava/lang/String;
    :cond_68
    if-nez v0, :cond_75

    .line 991
    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_80

    .line 993
    .end local v1    # "result":Ljava/lang/String;
    :cond_75
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 996
    .restart local v1    # "result":Ljava/lang/String;
    :goto_80
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    .line 997
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 998
    return-object v1

    .line 979
    .end local v1    # "result":Ljava/lang/String;
    :cond_8b
    goto/16 :goto_8

    nop

    :sswitch_data_8e
    .sparse-switch
        0x9 -> :sswitch_1e
        0xa -> :sswitch_1e
        0xc -> :sswitch_1e
        0xd -> :sswitch_1e
        0x20 -> :sswitch_1e
        0x23 -> :sswitch_1b
        0x2c -> :sswitch_1e
        0x2f -> :sswitch_1b
        0x3a -> :sswitch_1e
        0x3b -> :sswitch_1b
        0x3d -> :sswitch_1b
        0x5b -> :sswitch_1e
        0x5c -> :sswitch_1b
        0x5d -> :sswitch_1e
        0x7b -> :sswitch_1e
        0x7d -> :sswitch_1e
    .end sparse-switch
.end method

.method private greylist-max-o nextNonWhitespace()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 835
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 786
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_66

    .line 831
    return v0

    .line 794
    :sswitch_24
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-ne v3, v1, :cond_2f

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 795
    return v0

    .line 798
    :cond_2f
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 799
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    aget-char v1, v1, v2

    .line 800
    .local v1, "peek":C
    sparse-switch v1, :sswitch_data_80

    .line 817
    return v0

    .line 812
    :sswitch_3c
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    .line 813
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 814
    goto :goto_0

    .line 803
    :sswitch_44
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    .line 804
    const-string v2, "*/"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 807
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    .line 808
    goto :goto_0

    .line 805
    :cond_57
    const-string v2, "Unterminated comment"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 826
    .end local v1    # "peek":C
    :sswitch_5e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 827
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 828
    goto :goto_0

    .line 791
    :sswitch_65
    goto :goto_0

    :sswitch_data_66
    .sparse-switch
        0x9 -> :sswitch_65
        0xa -> :sswitch_65
        0xd -> :sswitch_65
        0x20 -> :sswitch_65
        0x23 -> :sswitch_5e
        0x2f -> :sswitch_24
    .end sparse-switch

    :sswitch_data_80
    .sparse-switch
        0x2a -> :sswitch_44
        0x2f -> :sswitch_3c
    .end sparse-switch
.end method

.method private greylist-max-o nextString(C)Ljava/lang/String;
    .registers 9
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    const/4 v0, 0x0

    .line 885
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 886
    .local v1, "start":I
    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_50

    .line 887
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Landroid/util/JsonReader;->pos:I

    aget-char v2, v3, v2

    .line 889
    .local v2, "c":I
    if-ne v2, p1, :cond_31

    .line 890
    iget-boolean v6, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v6, :cond_1c

    .line 891
    const-string/jumbo v3, "skipped!"

    return-object v3

    .line 892
    :cond_1c
    if-nez v0, :cond_27

    .line 893
    iget-object v6, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v6, v3, v1, v5}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 895
    :cond_27
    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 899
    :cond_31
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4f

    .line 900
    if-nez v0, :cond_3d

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 903
    :cond_3d
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 904
    invoke-direct {p0}, Landroid/util/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 907
    .end local v2    # "c":I
    :cond_4f
    goto :goto_3

    .line 909
    :cond_50
    if-nez v0, :cond_58

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 912
    :cond_58
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 913
    .end local v1    # "start":I
    invoke-direct {p0, v4}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_1

    .line 915
    :cond_67
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o nextValue()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 698
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_36

    .line 714
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 715
    invoke-direct {p0}, Landroid/util/JsonReader;->readLiteral()Landroid/util/JsonToken;

    move-result-object v1

    return-object v1

    .line 700
    :sswitch_12
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 701
    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 704
    :sswitch_1c
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 705
    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 708
    :sswitch_26
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 710
    :sswitch_29
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 711
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    nop

    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_29
        0x27 -> :sswitch_26
        0x5b -> :sswitch_1c
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method private greylist-max-o objectValue()Landroid/util/JsonToken;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_38

    .line 689
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 683
    :sswitch_e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 684
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1e

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_1e
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_2d

    .line 685
    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_2d

    .line 681
    :sswitch_2c
    nop

    .line 692
    :cond_2d
    :goto_2d
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 693
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_38
    .sparse-switch
        0x3a -> :sswitch_2c
        0x3d -> :sswitch_e
    .end sparse-switch
.end method

.method private greylist-max-o peekStack()Landroid/util/JsonScope;
    .registers 3

    .line 569
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private greylist-max-o pop()Landroid/util/JsonScope;
    .registers 3

    .line 573
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private greylist-max-o push(Landroid/util/JsonScope;)V
    .registers 3
    .param p1, "newTop"    # Landroid/util/JsonScope;

    .line 577
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    return-void
.end method

.method private greylist-max-o readEscapeCharacter()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_15

    .line 1016
    :cond_10
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1019
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1020
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_5c

    .line 1048
    return v0

    .line 1022
    :sswitch_23
    const/4 v1, 0x4

    add-int/2addr v3, v1

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-le v3, v4, :cond_35

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_35

    .line 1023
    :cond_30
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1025
    :cond_35
    :goto_35
    iget-object v2, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, "hex":Ljava/lang/String;
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 1027
    const/16 v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    return v1

    .line 1030
    .end local v2    # "hex":Ljava/lang/String;
    :sswitch_4c
    const/16 v1, 0x9

    return v1

    .line 1039
    :sswitch_4f
    const/16 v1, 0xd

    return v1

    .line 1036
    :sswitch_52
    const/16 v1, 0xa

    return v1

    .line 1042
    :sswitch_55
    const/16 v1, 0xc

    return v1

    .line 1033
    :sswitch_58
    const/16 v1, 0x8

    return v1

    nop

    :sswitch_data_5c
    .sparse-switch
        0x62 -> :sswitch_58
        0x66 -> :sswitch_55
        0x6e -> :sswitch_52
        0x72 -> :sswitch_4f
        0x74 -> :sswitch_4c
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private greylist-max-o readLiteral()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1057
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    if-eqz v0, :cond_1b

    .line 1060
    invoke-direct {p0}, Landroid/util/JsonReader;->decodeLiteral()Landroid/util/JsonToken;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 1061
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_18

    .line 1062
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 1064
    :cond_18
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 1058
    :cond_1b
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private greylist-max-o replaceTop(Landroid/util/JsonScope;)V
    .registers 4
    .param p1, "newTop"    # Landroid/util/JsonScope;

    .line 584
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method private greylist-max-o skipTo(Ljava/lang/String;)Z
    .registers 6
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-le v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    .line 868
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 861
    :cond_18
    :goto_18
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_37

    .line 862
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_34

    .line 863
    nop

    .line 860
    .end local v0    # "c":I
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    .line 861
    .restart local v0    # "c":I
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 866
    .end local v0    # "c":I
    :cond_37
    return v2
.end method

.method private greylist-max-o skipToEndOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 851
    :cond_d
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 852
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_21

    const/16 v1, 0xa

    if-ne v0, v1, :cond_20

    .line 853
    goto :goto_21

    .line 855
    .end local v0    # "c":C
    :cond_20
    goto :goto_0

    .line 856
    :cond_21
    :goto_21
    return-void
.end method

.method private greylist-max-o syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1161
    new-instance v0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1162
    invoke-direct {p0}, Landroid/util/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/util/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 280
    return-void
.end method

.method public whitelist beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 296
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 537
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 538
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 541
    return-void
.end method

.method public whitelist endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 288
    return-void
.end method

.method public whitelist endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 304
    return-void
.end method

.method public whitelist hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 322
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist isLenient()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    return v0
.end method

.method public whitelist nextBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 427
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_17

    .line 431
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v1, "true"

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 432
    .local v0, "result":Z
    :goto_13
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 433
    return v0

    .line 428
    .end local v0    # "result":Z
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextDouble()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 461
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2b

    .line 462
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 466
    .local v0, "result":D
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 467
    return-wide v0
.end method

.method public whitelist nextInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 513
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2b

    .line 514
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_31} :catch_32

    .line 526
    .local v0, "result":I
    goto :goto_40

    .line 520
    .end local v0    # "result":I
    :catch_32
    move-exception v0

    .line 521
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 522
    .local v1, "asDouble":D
    double-to-int v3, v1

    .line 523
    .local v3, "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v1

    if-nez v4, :cond_44

    move v0, v3

    .line 528
    .end local v1    # "asDouble":D
    .end local v3    # "result":I
    .local v0, "result":I
    :goto_40
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 529
    return v0

    .line 524
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    .restart local v1    # "asDouble":D
    .restart local v3    # "result":I
    :cond_44
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist nextLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 482
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2b

    .line 483
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_31} :catch_32

    .line 495
    .local v0, "result":J
    goto :goto_40

    .line 489
    .end local v0    # "result":J
    :catch_32
    move-exception v0

    .line 490
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 491
    .local v1, "asDouble":D
    double-to-long v3, v1

    .line 492
    .local v3, "result":J
    long-to-double v5, v3

    cmpl-double v5, v5, v1

    if-nez v5, :cond_44

    move-wide v0, v3

    .line 497
    .end local v1    # "asDouble":D
    .end local v3    # "result":J
    .local v0, "result":J
    :goto_40
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 498
    return-wide v0

    .line 493
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    .restart local v1    # "asDouble":D
    .restart local v3    # "result":J
    :cond_44
    new-instance v5, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public whitelist nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 391
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_f

    .line 394
    iget-object v0, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 395
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 396
    return-object v0

    .line 392
    .end local v0    # "result":Ljava/lang/String;
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 445
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_d

    .line 449
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 450
    return-void

    .line 446
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 409
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2d

    .line 410
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 414
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 415
    return-object v0
.end method

.method public whitelist peek()Landroid/util/JsonToken;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-eqz v0, :cond_5

    .line 330
    return-object v0

    .line 333
    :cond_5
    sget-object v0, Landroid/util/JsonReader$1;->$SwitchMap$android$util$JsonScope:[I

    invoke-direct {p0}, Landroid/util/JsonReader;->peekStack()Landroid/util/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_8a

    .line 365
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 363
    :pswitch_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_24
    :try_start_24
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    .line 355
    .local v0, "token":Landroid/util/JsonToken;
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v1, :cond_2d

    .line 356
    return-object v0

    .line 358
    :cond_2d
    const-string v1, "Expected EOF"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    .end local p0    # "this":Landroid/util/JsonReader;
    throw v1
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_24 .. :try_end_34} :catch_34

    .line 359
    .end local v0    # "token":Landroid/util/JsonToken;
    .restart local p0    # "this":Landroid/util/JsonReader;
    :catch_34
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/EOFException;
    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 351
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_3a
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_3f
    invoke-direct {p0}, Landroid/util/JsonReader;->objectValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_44
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 345
    :pswitch_49
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 343
    :pswitch_4e
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 335
    :pswitch_53
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 336
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    .line 337
    .local v0, "firstToken":Landroid/util/JsonToken;
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-nez v1, :cond_88

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_88

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_6d

    goto :goto_88

    .line 338
    :cond_6d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_88
    :goto_88
    return-object v0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 264
    iput-boolean p1, p0, Landroid/util/JsonReader;->lenient:Z

    .line 265
    return-void
.end method

.method public whitelist skipValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 551
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_33

    .line 554
    const/4 v1, 0x0

    .line 556
    .local v1, "count":I
    :cond_13
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    move-result-object v2

    .line 557
    .local v2, "token":Landroid/util/JsonToken;
    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2b

    sget-object v3, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_20

    goto :goto_2b

    .line 559
    :cond_20
    sget-object v3, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_28

    sget-object v3, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_3b

    if-ne v2, v3, :cond_2d

    .line 560
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 558
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    .line 562
    .end local v2    # "token":Landroid/util/JsonToken;
    :cond_2d
    :goto_2d
    if-nez v1, :cond_13

    .line 564
    .end local v1    # "count":I
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 565
    nop

    .line 566
    return-void

    .line 552
    :cond_33
    :try_start_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No element left to skip"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/util/JsonReader;
    throw v1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 564
    .restart local p0    # "this":Landroid/util/JsonReader;
    :catchall_3b
    move-exception v1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 565
    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/util/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
