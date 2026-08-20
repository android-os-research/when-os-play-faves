.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o crunch(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 181
    .local v1, "len":I
    :goto_5
    const/16 v2, 0x20

    if-ge v0, v1, :cond_42

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 184
    .local v3, "c":C
    if-nez v3, :cond_3f

    .line 185
    if-eqz v0, :cond_39

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_39

    add-int/lit8 v4, v0, -0x1

    .line 186
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_39

    add-int/lit8 v4, v0, -0x1

    .line 187
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_39

    add-int/lit8 v4, v0, 0x1

    .line 188
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_39

    add-int/lit8 v2, v0, 0x1

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-nez v2, :cond_36

    goto :goto_39

    .line 193
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 190
    :cond_39
    :goto_39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 196
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    .line 198
    .end local v3    # "c":C
    :goto_41
    goto :goto_5

    .line 200
    :cond_42
    const/4 v0, 0x0

    :goto_43
    if-ge v0, v1, :cond_51

    .line 201
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4e

    .line 202
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 200
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 205
    :cond_51
    return-void
.end method

.method public static whitelist tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .registers 13
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "name":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "address":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, "comment":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 51
    .local v3, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 53
    .local v4, "cursor":I
    :goto_14
    const/4 v5, 0x0

    if-ge v3, v4, :cond_109

    .line 54
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 56
    .local v6, "c":C
    const/16 v7, 0x2c

    const/16 v8, 0x20

    const/4 v9, 0x0

    if-eq v6, v7, :cond_bd

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_28

    goto/16 :goto_bd

    .line 78
    :cond_28
    const/16 v5, 0x5c

    const/16 v7, 0x22

    if-ne v6, v7, :cond_54

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    :goto_30
    if-ge v3, v4, :cond_107

    .line 82
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 84
    if-ne v6, v7, :cond_3c

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto/16 :goto_107

    .line 87
    :cond_3c
    if-ne v6, v5, :cond_4e

    .line 88
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_4b

    .line 89
    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_4b
    add-int/lit8 v3, v3, 0x2

    goto :goto_30

    .line 93
    :cond_4e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 97
    :cond_54
    const/16 v7, 0x28

    if-ne v6, v7, :cond_96

    .line 98
    const/4 v8, 0x1

    .line 99
    .local v8, "level":I
    add-int/lit8 v3, v3, 0x1

    .line 101
    :goto_5b
    if-ge v3, v4, :cond_94

    if-lez v8, :cond_94

    .line 102
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 104
    const/16 v9, 0x29

    if-ne v6, v9, :cond_72

    .line 105
    const/4 v9, 0x1

    if-le v8, v9, :cond_6d

    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_6d
    add-int/lit8 v8, v8, -0x1

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 111
    :cond_72
    if-ne v6, v7, :cond_7c

    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v8, v8, 0x1

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 115
    :cond_7c
    if-ne v6, v5, :cond_8e

    .line 116
    add-int/lit8 v9, v3, 0x1

    if-ge v9, v4, :cond_8b

    .line 117
    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_8b
    add-int/lit8 v3, v3, 0x2

    goto :goto_5b

    .line 121
    :cond_8e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 125
    .end local v8    # "level":I
    :cond_94
    goto/16 :goto_107

    :cond_96
    const/16 v5, 0x3c

    if-ne v6, v5, :cond_af

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 128
    :goto_9c
    if-ge v3, v4, :cond_107

    .line 129
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 131
    const/16 v5, 0x3e

    if-ne v6, v5, :cond_a9

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_107

    .line 135
    :cond_a9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 139
    :cond_af
    if-ne v6, v8, :cond_b7

    .line 140
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    .line 143
    :cond_b7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    .line 57
    :cond_bd
    :goto_bd
    add-int/lit8 v3, v3, 0x1

    .line 59
    :goto_bf
    if-ge v3, v4, :cond_ca

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_ca

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    .line 63
    :cond_ca
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_e8

    .line 66
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_fe

    .line 69
    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_fe

    .line 70
    new-instance v7, Landroid/text/util/Rfc822Token;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v5, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_fe
    :goto_fe
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    .end local v6    # "c":C
    :cond_107
    :goto_107
    goto/16 :goto_14

    .line 148
    :cond_109
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_127

    .line 151
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    .line 154
    :cond_127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_13d

    .line 155
    new-instance v6, Landroid/text/util/Rfc822Token;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_13d
    :goto_13d
    return-void
.end method

.method public static whitelist tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public whitelist findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 243
    .local v0, "len":I
    move v1, p2

    .line 245
    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_7a

    .line 246
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 248
    .local v2, "c":C
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_79

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_15

    goto/16 :goto_79

    .line 250
    :cond_15
    const/16 v3, 0x5c

    const/16 v4, 0x22

    if-ne v2, v4, :cond_34

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 253
    :goto_1d
    if-ge v1, v0, :cond_78

    .line 254
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 256
    if-ne v2, v4, :cond_28

    .line 257
    add-int/lit8 v1, v1, 0x1

    .line 258
    goto :goto_78

    .line 259
    :cond_28
    if-ne v2, v3, :cond_31

    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_31

    .line 260
    add-int/lit8 v1, v1, 0x2

    goto :goto_1d

    .line 262
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 265
    :cond_34
    const/16 v4, 0x28

    if-ne v2, v4, :cond_60

    .line 266
    const/4 v5, 0x1

    .line 267
    .local v5, "level":I
    add-int/lit8 v1, v1, 0x1

    .line 269
    :goto_3b
    if-ge v1, v0, :cond_5f

    if-lez v5, :cond_5f

    .line 270
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 272
    const/16 v6, 0x29

    if-ne v2, v6, :cond_4c

    .line 273
    add-int/lit8 v5, v5, -0x1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 275
    :cond_4c
    if-ne v2, v4, :cond_53

    .line 276
    add-int/lit8 v5, v5, 0x1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 278
    :cond_53
    if-ne v2, v3, :cond_5c

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v0, :cond_5c

    .line 279
    add-int/lit8 v1, v1, 0x2

    goto :goto_3b

    .line 281
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 284
    .end local v5    # "level":I
    :cond_5f
    goto :goto_78

    :cond_60
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_76

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    :goto_66
    if-ge v1, v0, :cond_78

    .line 288
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 290
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_73

    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    goto :goto_78

    .line 294
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 298
    :cond_76
    add-int/lit8 v1, v1, 0x1

    .line 300
    .end local v2    # "c":C
    :cond_78
    :goto_78
    goto :goto_5

    .line 249
    .restart local v2    # "c":C
    :cond_79
    :goto_79
    return v1

    .line 302
    .end local v2    # "c":C
    :cond_7a
    return v1
.end method

.method public whitelist findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "best":I
    const/4 v1, 0x0

    .line 219
    .local v1, "i":I
    :cond_2
    :goto_2
    if-ge v1, p2, :cond_1d

    .line 220
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 222
    if-ge v1, p2, :cond_2

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 225
    :goto_c
    if-ge v1, p2, :cond_19

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 229
    :cond_19
    if-ge v1, p2, :cond_2

    .line 230
    move v0, v1

    goto :goto_2

    .line 235
    :cond_1d
    return v0
.end method

.method public whitelist terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
