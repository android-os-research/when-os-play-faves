.class final Lcom/android/framework/protobuf/MessageLiteToString;
.super Ljava/lang/Object;
.source "MessageLiteToString.java"


# static fields
.field private static final blacklist BUILDER_LIST_SUFFIX:Ljava/lang/String; = "OrBuilderList"

.field private static final blacklist BYTES_SUFFIX:Ljava/lang/String; = "Bytes"

.field private static final blacklist LIST_SUFFIX:Ljava/lang/String; = "List"

.field private static final blacklist MAP_SUFFIX:Ljava/lang/String; = "Map"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final blacklist camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "camelCase"    # Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 274
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 275
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_1b
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 279
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist isDefaultValue(Ljava/lang/Object;)Z
    .registers 8
    .param p0, "o"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 184
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 186
    :cond_e
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 187
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    .line 189
    :cond_1f
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_32

    .line 190
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1

    .line 192
    :cond_32
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_46

    .line 193
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    return v1

    .line 195
    :cond_46
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 196
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 198
    :cond_51
    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_5c

    .line 199
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 201
    :cond_5c
    instance-of v0, p0, Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_6c

    .line 202
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    if-ne p0, v0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v1, v2

    :goto_6b
    return v1

    .line 204
    :cond_6c
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_7c

    .line 205
    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_7b

    :cond_7a
    move v1, v2

    :goto_7b
    return v1

    .line 208
    :cond_7c
    return v2
.end method

.method static final blacklist printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .line 222
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 223
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    .line 224
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 225
    .local v2, "entry":Ljava/lang/Object;
    invoke-static {p0, p1, p2, v2}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 226
    .end local v2    # "entry":Ljava/lang/Object;
    goto :goto_b

    .line 227
    :cond_19
    return-void

    .line 229
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1a
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_3a

    .line 230
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    .line 231
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 232
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-static {p0, p1, p2, v2}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 233
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_29

    .line 234
    :cond_39
    return-void

    .line 237
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3a
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    const/16 v1, 0x20

    if-ge v0, p1, :cond_4a

    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 241
    .end local v0    # "i":I
    :cond_4a
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    instance-of v0, p3, Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, ": \""

    if-eqz v0, :cond_69

    .line 244
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/framework/protobuf/TextFormatEscaper;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_e4

    .line 245
    :cond_69
    instance-of v0, p3, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_80

    .line 246
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v1}, Lcom/android/framework/protobuf/TextFormatEscaper;->escapeBytes(Lcom/android/framework/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e4

    .line 247
    :cond_80
    instance-of v0, p3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    const-string/jumbo v2, "}"

    const-string v3, "\n"

    const-string v4, " {"

    if-eqz v0, :cond_a6

    .line 248
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    add-int/lit8 v4, p1, 0x2

    invoke-static {v0, p0, v4}, Lcom/android/framework/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 250
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9a
    if-ge v0, p1, :cond_a2

    .line 252
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 254
    .end local v0    # "i":I
    :cond_a2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e4

    .line 255
    :cond_a6
    instance-of v0, p3, Ljava/util/Map$Entry;

    if-eqz v0, :cond_d7

    .line 256
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    move-object v0, p3

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    add-int/lit8 v4, p1, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "key"

    invoke-static {p0, v4, v6, v5}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 259
    add-int/lit8 v4, p1, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-static {p0, v4, v6, v5}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_cb
    if-ge v3, p1, :cond_d3

    .line 262
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 264
    .end local v3    # "i":I
    :cond_d3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_e4

    .line 266
    :cond_d7
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :goto_e4
    return-void
.end method

.method private static blacklist reflectivePrintWithIndent(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V
    .registers 21
    .param p0, "messageLite"    # Lcom/android/framework/protobuf/MessageLite;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v3, "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v4, "nameToMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 79
    .local v5, "getters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_20
    const-string v10, "get"

    if-ge v9, v7, :cond_4f

    aget-object v11, v6, v9

    .line 80
    .local v11, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_4c

    .line 82
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 85
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 90
    :cond_4f
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_205

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 91
    .local v7, "getter":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "suffix":Ljava/lang/String;
    const-string v11, "List"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_c5

    .line 93
    const-string v12, "OrBuilderList"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c5

    .line 95
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c5

    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 98
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v14, v11

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "camelCase":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    .line 102
    .local v12, "listMethod":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_c5

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 103
    nop

    .line 106
    invoke-static {v11}, Lcom/android/framework/protobuf/MessageLiteToString;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    .line 107
    invoke-static {v12, v0, v14}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 103
    invoke-static {v1, v2, v13, v14}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    goto :goto_53

    .line 111
    .end local v11    # "camelCase":Ljava/lang/String;
    .end local v12    # "listMethod":Ljava/lang/reflect/Method;
    :cond_c5
    const-string v11, "Map"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12f

    .line 113
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12f

    .line 114
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 116
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v14, v11

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 119
    .restart local v11    # "camelCase":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    .line 120
    .local v12, "mapMethod":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_12f

    .line 121
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/util/Map;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12f

    const-class v14, Ljava/lang/Deprecated;

    .line 124
    invoke-virtual {v12, v14}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_12f

    .line 126
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v14

    if-eqz v14, :cond_12f

    .line 127
    nop

    .line 130
    invoke-static {v11}, Lcom/android/framework/protobuf/MessageLiteToString;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    .line 131
    invoke-static {v12, v0, v14}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 127
    invoke-static {v1, v2, v13, v14}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    goto/16 :goto_53

    .line 136
    .end local v11    # "camelCase":Ljava/lang/String;
    .end local v12    # "mapMethod":Ljava/lang/reflect/Method;
    :cond_12f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    .line 137
    .local v11, "setter":Ljava/lang/reflect/Method;
    if-nez v11, :cond_14d

    .line 138
    goto/16 :goto_53

    .line 140
    :cond_14d
    const-string v12, "Bytes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 142
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v15, v12

    invoke-virtual {v9, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 141
    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17b

    .line 144
    goto/16 :goto_53

    .line 147
    :cond_17b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 151
    .local v12, "camelCase":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Method;

    .line 152
    .local v14, "getMethod":Ljava/lang/reflect/Method;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    .line 154
    .local v13, "hasMethod":Ljava/lang/reflect/Method;
    if-eqz v14, :cond_200

    .line 155
    new-array v15, v8, [Ljava/lang/Object;

    invoke-static {v14, v0, v15}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 157
    .local v15, "value":Ljava/lang/Object;
    if-nez v13, :cond_1de

    .line 158
    invoke-static {v15}, Lcom/android/framework/protobuf/MessageLiteToString;->isDefaultValue(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v16, v3

    if-nez v17, :cond_1dc

    const/4 v3, 0x1

    goto :goto_1ec

    :cond_1dc
    move v3, v8

    goto :goto_1ec

    .line 159
    :cond_1de
    move-object/from16 v16, v3

    .end local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v16, "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v13, v0, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1ec
    nop

    .line 161
    .local v3, "hasValue":Z
    if-eqz v3, :cond_1fb

    .line 162
    invoke-static {v12}, Lcom/android/framework/protobuf/MessageLiteToString;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v8, v15}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v3, v16

    const/4 v8, 0x0

    goto/16 :goto_53

    .line 161
    :cond_1fb
    move-object/from16 v3, v16

    const/4 v8, 0x0

    goto/16 :goto_53

    .line 154
    .end local v15    # "value":Ljava/lang/Object;
    .end local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v3, "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_200
    move-object/from16 v16, v3

    .line 166
    .end local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v7    # "getter":Ljava/lang/String;
    .end local v9    # "suffix":Ljava/lang/String;
    .end local v11    # "setter":Ljava/lang/reflect/Method;
    .end local v12    # "camelCase":Ljava/lang/String;
    .end local v13    # "hasMethod":Ljava/lang/reflect/Method;
    .end local v14    # "getMethod":Ljava/lang/reflect/Method;
    .restart local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    const/4 v8, 0x0

    goto/16 :goto_53

    .line 168
    .end local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_205
    move-object/from16 v16, v3

    .end local v3    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v16    # "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    instance-of v3, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    if-eqz v3, :cond_24b

    .line 169
    move-object v3, v0

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 170
    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 171
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :goto_214
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24b

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 173
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v8}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v2, v7, v8}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 174
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    goto :goto_214

    .line 177
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :cond_24b
    move-object v3, v0

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_25a

    .line 178
    move-object v3, v0

    check-cast v3, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->printWithIndent(Ljava/lang/StringBuilder;I)V

    .line 180
    :cond_25a
    return-void
.end method

.method static blacklist toString(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "messageLite"    # Lcom/android/framework/protobuf/MessageLite;
    .param p1, "commentString"    # Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
