.class public Landroid/view/inputmethod/SemBaseInputConnectionUtil;
.super Ljava/lang/Object;
.source "SemBaseInputConnectionUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertAllBrackets(Ljava/lang/CharSequence;ILandroid/text/Editable;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "newCursorPosition"    # I
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "targetView"    # Landroid/view/View;

    .line 22
    invoke-static {p0}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isAllBracketChars(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRTLText(Ljava/lang/String;ILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 23
    invoke-static {p0}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_15
    return-object p0
.end method

.method private static blacklist convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 164
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "sText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 166
    .local v1, "nIndex":I
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "ch":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    nop

    .end local v2    # "ch":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    .line 170
    goto :goto_5

    .line 171
    :cond_3f
    return-object v0
.end method

.method private static blacklist convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 175
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "sText":Ljava/lang/String;
    const-string/jumbo v1, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 178
    const-string/jumbo v0, "}"

    goto/16 :goto_116

    .line 179
    :cond_12
    const-string/jumbo v1, "}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 180
    const-string/jumbo v0, "{"

    goto/16 :goto_116

    .line 181
    :cond_20
    const-string v1, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 182
    const-string v0, "]"

    goto/16 :goto_116

    .line 183
    :cond_2c
    const-string v1, "]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 184
    const-string v0, "["

    goto/16 :goto_116

    .line 185
    :cond_38
    const-string v1, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 186
    const-string v0, ">"

    goto/16 :goto_116

    .line 187
    :cond_44
    const-string v1, ">"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 188
    const-string v0, "<"

    goto/16 :goto_116

    .line 189
    :cond_50
    const-string v1, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 190
    const-string v0, ")"

    goto/16 :goto_116

    .line 191
    :cond_5c
    const-string v1, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 192
    const-string v0, "("

    goto/16 :goto_116

    .line 193
    :cond_68
    const/16 v1, 0xab

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xbb

    if-eqz v2, :cond_7c

    .line 194
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_116

    .line 195
    :cond_7c
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 196
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_116

    .line 197
    :cond_8c
    const/16 v1, 0x300a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x300b

    if-eqz v2, :cond_a0

    .line 198
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_116

    .line 199
    :cond_a0
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 200
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_116

    .line 201
    :cond_af
    const-string/jumbo v1, "\u300e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 202
    const-string/jumbo v0, "\u300f"

    goto :goto_116

    .line 203
    :cond_bc
    const-string/jumbo v1, "\u300f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 204
    const-string/jumbo v0, "\u300e"

    goto :goto_116

    .line 205
    :cond_c9
    const-string/jumbo v1, "\u300c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 206
    const-string/jumbo v0, "\u300d"

    goto :goto_116

    .line 207
    :cond_d6
    const-string/jumbo v1, "\u300d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 208
    const-string/jumbo v0, "\u300c"

    goto :goto_116

    .line 209
    :cond_e3
    const-string/jumbo v1, "\u3014"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 210
    const-string/jumbo v0, "\u3015"

    goto :goto_116

    .line 211
    :cond_f0
    const-string/jumbo v1, "\u3015"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 212
    const-string/jumbo v0, "\u3014"

    goto :goto_116

    .line 213
    :cond_fd
    const-string/jumbo v1, "\u3010"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 214
    const-string/jumbo v0, "\u3011"

    goto :goto_116

    .line 215
    :cond_10a
    const-string/jumbo v1, "\u3011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 216
    const-string/jumbo v0, "\u3010"

    .line 218
    :cond_116
    :goto_116
    return-object v0
.end method

.method private static blacklist isAllBracketChars(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 150
    const-string v0, "<>{}[]()\u00ab\u00bb\u300a\u300b\u300e\u300f\u300c\u300d\u3014\u3015\u3010\u3011"

    .line 151
    .local v0, "BRACKET":Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "sText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "nIndex":I
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "ch":Ljava/lang/CharSequence;
    const-string v4, "<>{}[]()\u00ab\u00bb\u300a\u300b\u300e\u300f\u300c\u300d\u3014\u3015\u3010\u3011"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 156
    const/4 v4, 0x0

    return v4

    .line 158
    :cond_23
    nop

    .end local v3    # "ch":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    .line 159
    goto :goto_7

    .line 160
    :cond_27
    const/4 v3, 0x1

    return v3
.end method

.method private static blacklist isRTLText(Ljava/lang/String;ILandroid/view/View;)Z
    .registers 19
    .param p0, "sCurStr"    # Ljava/lang/String;
    .param p1, "newCursorPosition"    # I
    .param p2, "targetView"    # Landroid/view/View;

    .line 29
    move-object/from16 v0, p0

    const/16 v1, 0xa

    .line 30
    .local v1, "PARA":C
    const/4 v2, -0x1

    .line 31
    .local v2, "DIRECTION_NONE":I
    const/4 v3, 0x0

    .line 32
    .local v3, "DIRECTION_LTR":I
    const/4 v4, 0x1

    .line 33
    .local v4, "DIRECTION_RTL":I
    const/4 v5, -0x1

    .line 35
    .local v5, "nDirection":I
    const/4 v6, -0x1

    .line 37
    .local v6, "nLastEnterPos":I
    const/4 v7, 0x1

    if-eqz v0, :cond_f6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f6

    .line 38
    const/16 v8, 0xa

    if-eqz p1, :cond_1c

    .line 39
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 42
    :cond_1c
    if-gez v6, :cond_20

    .line 43
    const/4 v6, 0x0

    goto :goto_21

    .line 45
    :cond_20
    add-int/2addr v6, v7

    .line 48
    :goto_21
    move v9, v6

    .line 49
    .local v9, "nIndex":I
    :goto_22
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/16 v14, 0xf

    const/16 v15, 0xe

    if-ge v9, v10, :cond_55

    .line 50
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 51
    .local v10, "ch":C
    if-ne v10, v8, :cond_38

    goto :goto_55

    .line 53
    :cond_38
    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v8

    .line 55
    .local v8, "directionality":B
    if-eqz v8, :cond_54

    if-eq v8, v15, :cond_54

    if-ne v8, v14, :cond_43

    goto :goto_54

    .line 60
    :cond_43
    if-eq v8, v7, :cond_52

    if-eq v8, v13, :cond_52

    if-eq v8, v12, :cond_52

    if-ne v8, v11, :cond_4c

    goto :goto_52

    .line 67
    :cond_4c
    nop

    .end local v8    # "directionality":B
    .end local v10    # "ch":C
    add-int/lit8 v9, v9, 0x1

    .line 68
    const/16 v8, 0xa

    goto :goto_22

    .line 64
    .restart local v8    # "directionality":B
    .restart local v10    # "ch":C
    :cond_52
    :goto_52
    const/4 v5, 0x1

    .line 65
    goto :goto_55

    .line 58
    :cond_54
    :goto_54
    const/4 v5, 0x0

    .line 70
    .end local v8    # "directionality":B
    .end local v10    # "ch":C
    :cond_55
    :goto_55
    move/from16 v8, p1

    .line 71
    .end local v9    # "nIndex":I
    .local v8, "nIndex":I
    :goto_57
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_83

    .line 72
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 73
    .local v9, "ch":C
    const/16 v10, 0xa

    if-ne v9, v10, :cond_66

    goto :goto_83

    .line 75
    :cond_66
    invoke-static {v9}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v10

    .line 76
    .local v10, "directionality":B
    if-eqz v10, :cond_82

    if-eq v10, v15, :cond_82

    if-eq v10, v14, :cond_82

    if-eq v10, v7, :cond_82

    if-eq v10, v13, :cond_82

    if-eq v10, v12, :cond_82

    if-eq v10, v11, :cond_82

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7c

    goto :goto_82

    .line 87
    :cond_7c
    nop

    .end local v9    # "ch":C
    .end local v10    # "directionality":B
    add-int/lit8 v8, v8, 0x1

    .line 88
    const/16 v11, 0x11

    goto :goto_57

    .line 84
    .restart local v9    # "ch":C
    .restart local v10    # "directionality":B
    :cond_82
    :goto_82
    const/4 v5, -0x1

    .line 90
    .end local v9    # "ch":C
    .end local v10    # "directionality":B
    :cond_83
    :goto_83
    const/4 v9, -0x1

    if-ne v5, v9, :cond_105

    .line 91
    add-int/lit8 v8, p1, -0x1

    .line 92
    :goto_88
    if-ltz v8, :cond_b2

    .line 93
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 94
    .local v10, "ch":C
    const/16 v11, 0xa

    if-ne v10, v11, :cond_93

    goto :goto_b2

    .line 96
    :cond_93
    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v11

    .line 98
    .local v11, "directionality":B
    if-eqz v11, :cond_b1

    if-eq v11, v15, :cond_b1

    if-ne v11, v14, :cond_9e

    goto :goto_b1

    .line 103
    :cond_9e
    if-eq v11, v7, :cond_af

    if-eq v11, v13, :cond_af

    if-eq v11, v12, :cond_af

    const/16 v12, 0x11

    if-ne v11, v12, :cond_a9

    goto :goto_af

    .line 110
    :cond_a9
    nop

    .end local v10    # "ch":C
    .end local v11    # "directionality":B
    add-int/lit8 v8, v8, -0x1

    .line 111
    const/16 v12, 0x10

    goto :goto_88

    .line 107
    .restart local v10    # "ch":C
    .restart local v11    # "directionality":B
    :cond_af
    :goto_af
    const/4 v5, 0x1

    .line 108
    goto :goto_b2

    .line 101
    :cond_b1
    :goto_b1
    const/4 v5, 0x0

    .line 113
    .end local v10    # "ch":C
    .end local v11    # "directionality":B
    :cond_b2
    :goto_b2
    if-ne v5, v9, :cond_e4

    .line 114
    move/from16 v8, p1

    .line 115
    :goto_b6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_e4

    .line 116
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 117
    .restart local v10    # "ch":C
    const/16 v11, 0xa

    if-ne v10, v11, :cond_c5

    goto :goto_e4

    .line 119
    :cond_c5
    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v12

    .line 121
    .local v12, "directionality":B
    if-eqz v12, :cond_e3

    if-eq v12, v15, :cond_e3

    if-ne v12, v14, :cond_d0

    goto :goto_e3

    .line 126
    :cond_d0
    if-eq v12, v7, :cond_e1

    if-eq v12, v13, :cond_e1

    const/16 v11, 0x10

    if-eq v12, v11, :cond_e1

    const/16 v11, 0x11

    if-ne v12, v11, :cond_dd

    goto :goto_e1

    .line 133
    :cond_dd
    nop

    .end local v10    # "ch":C
    .end local v12    # "directionality":B
    add-int/lit8 v8, v8, 0x1

    .line 134
    goto :goto_b6

    .line 130
    .restart local v10    # "ch":C
    .restart local v12    # "directionality":B
    :cond_e1
    :goto_e1
    const/4 v5, 0x1

    .line 131
    goto :goto_e4

    .line 124
    :cond_e3
    :goto_e3
    const/4 v5, 0x0

    .line 136
    .end local v10    # "ch":C
    .end local v12    # "directionality":B
    :cond_e4
    :goto_e4
    if-ne v5, v9, :cond_105

    if-eqz p2, :cond_105

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-ne v9, v7, :cond_105

    .line 138
    invoke-static {}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRtlLanguage()Z

    move-result v9

    if-eqz v9, :cond_105

    .line 139
    const/4 v5, 0x1

    goto :goto_105

    .line 142
    .end local v8    # "nIndex":I
    :cond_f6
    invoke-static {}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRtlLanguage()Z

    move-result v8

    if-eqz v8, :cond_105

    if-eqz p2, :cond_105

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    if-ne v8, v7, :cond_105

    .line 143
    return v7

    .line 146
    :cond_105
    :goto_105
    if-ne v5, v7, :cond_108

    goto :goto_109

    :cond_108
    const/4 v7, 0x0

    :goto_109
    return v7
.end method

.method private static blacklist isRtlLanguage()Z
    .registers 3

    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 223
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "curLanguage":Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "fa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "ur"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "iw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v2, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v2, 0x1

    :goto_2d
    return v2
.end method
