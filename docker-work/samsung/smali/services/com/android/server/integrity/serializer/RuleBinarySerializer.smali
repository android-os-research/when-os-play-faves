.class public Lcom/android/server/integrity/serializer/RuleBinarySerializer;
.super Ljava/lang/Object;
.source "RuleBinarySerializer.java"

# interfaces
.implements Lcom/android/server/integrity/serializer/RuleSerializer;


# static fields
.field public static final INDEXED_RULE_SIZE_LIMIT:I = 0x186a0

.field public static final NONINDEXED_RULE_SIZE_LIMIT:I = 0x3e8

.field public static final TOTAL_RULE_SIZE_LIMIT:I = 0x30d40


# direct methods
.method public static synthetic $r8$lambda$yUYjoaRB_r3j2soYlmFMhIfAtVY(Ljava/util/List;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->lambda$verifySize$0(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesForString(Ljava/lang/String;Z)[B
    .registers 2

    if-nez p1, :cond_9

    .line 320
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 322
    :cond_9
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getBytesFromHexDigest(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$verifySize$0(Ljava/util/List;)Ljava/lang/Integer;
    .registers 1

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/OutputStream;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation

    if-eqz p1, :cond_9f

    .line 91
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x30d40

    if-gt v0, v1, :cond_82

    .line 97
    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->splitRulesIntoIndexBuckets(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const v2, 0x186a0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(Ljava/util/Map;I)V

    const/4 v1, 0x2

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(Ljava/util/Map;I)V

    const/4 v2, 0x0

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(Ljava/util/Map;I)V

    .line 105
    new-instance v3, Lcom/android/server/integrity/model/ByteTrackedOutputStream;

    invoke-direct {v3, p3}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    invoke-virtual {p0, p2, v3}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleFileMetadata(Ljava/util/Optional;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)V

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 109
    invoke-virtual {p0, p2, v3}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 113
    invoke-virtual {p0, p3, v3}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    move-result-object p3

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 117
    invoke-virtual {p0, p1, v3}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 121
    new-instance v1, Lcom/android/server/integrity/model/BitOutputStream;

    invoke-direct {v1, p4}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 123
    invoke-virtual {p0, p3, v1, v0}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 125
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 127
    invoke-virtual {v1}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    return-void

    .line 92
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many rules provided: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_9d
    move-exception p0

    goto :goto_a7

    .line 88
    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null rules cannot be serialized."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a7} :catch_9d

    .line 129
    :goto_a7
    new-instance p1, Lcom/android/server/integrity/serializer/RuleSerializeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/integrity/serializer/RuleSerializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public serialize(Ljava/util/List;Ljava/util/Optional;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/serializer/RuleSerializeException;
        }
    .end annotation

    .line 70
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 74
    new-instance p1, Lcom/android/server/integrity/serializer/RuleSerializeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/integrity/serializer/RuleSerializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final serializeAtomicFormula(Landroid/content/integrity/AtomicFormula;Lcom/android/server/integrity/model/BitOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7f

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    const/4 v2, 0x4

    .line 236
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 237
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getTag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 238
    check-cast p1, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    .line 240
    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 242
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getIsHashedValue()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 241
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_6a

    .line 245
    :cond_2b
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getTag()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_54

    .line 246
    check-cast p1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    .line 248
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getOperator()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 250
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getValue()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p1, 0x20

    ushr-long v2, v0, p1

    long-to-int p1, v2

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    long-to-int p1, v0

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_6a

    .line 253
    :cond_54
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula;->getTag()I

    move-result v2

    if-ne v2, v0, :cond_6b

    .line 254
    check-cast p1, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    .line 256
    invoke-virtual {p2, v0, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 257
    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getValue()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeBooleanValue(ZLcom/android/server/integrity/model/BitOutputStream;)V

    :goto_6a
    return-void

    .line 259
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p2, v3, [Ljava/lang/Object;

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Invalid atomic formula type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null atomic formula can not be serialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final serializeBooleanValue(ZLcom/android/server/integrity/model/BitOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p2, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    return-void
.end method

.method public final serializeCompoundFormula(Landroid/content/integrity/CompoundFormula;Lcom/android/server/integrity/model/BitOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 221
    invoke-virtual {p2, v1, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 222
    invoke-virtual {p1}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 223
    invoke-virtual {p1}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/integrity/IntegrityFormula;

    .line 224
    invoke-virtual {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_17

    .line 226
    :cond_27
    invoke-virtual {p2, v1, v2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    return-void

    .line 218
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null compound formula can not be serialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    instance-of v0, p1, Landroid/content/integrity/AtomicFormula;

    if-eqz v0, :cond_a

    .line 204
    check-cast p1, Landroid/content/integrity/AtomicFormula;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeAtomicFormula(Landroid/content/integrity/AtomicFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_1c

    .line 205
    :cond_a
    instance-of v0, p1, Landroid/content/integrity/CompoundFormula;

    if-eqz v0, :cond_14

    .line 206
    check-cast p1, Landroid/content/integrity/CompoundFormula;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeCompoundFormula(Landroid/content/integrity/CompoundFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_1c

    .line 207
    :cond_14
    instance-of p0, p1, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    if-eqz p0, :cond_1d

    const/4 p0, 0x3

    .line 208
    invoke-virtual {p2, p0, p0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    :goto_1c
    return-void

    .line 210
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Invalid formula type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/integrity/model/BitOutputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "START_KEY"

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 271
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    const-string v2, "END_KEY"

    if-eqz p3, :cond_5a

    .line 275
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1f
    :goto_1f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 277
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 279
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    invoke-virtual {p0, v4, v1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 280
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    goto :goto_1f

    .line 286
    :cond_5a
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 287
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V

    return-void
.end method

.method public final serializeIntValue(ILcom/android/server/integrity/model/BitOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x20

    .line 306
    invoke-virtual {p2, p0, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    return-void
.end method

.method public final serializeRule(Landroid/content/integrity/Rule;Lcom/android/server/integrity/model/BitOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_18

    .line 192
    invoke-virtual {p2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext()V

    .line 194
    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    const/4 p0, 0x3

    .line 195
    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getEffect()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 198
    invoke-virtual {p2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext()V

    return-void

    .line 188
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null rule can not be serialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final serializeRuleFileMetadata(Ljava/util/Optional;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/integrity/model/ByteTrackedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 152
    new-instance p1, Lcom/android/server/integrity/model/BitOutputStream;

    invoke-direct {p1, p2}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p2, 0x8

    .line 153
    invoke-virtual {p1, p2, p0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 154
    invoke-virtual {p1}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    return-void
.end method

.method public final serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;>;",
            "Lcom/android/server/integrity/model/ByteTrackedOutputStream;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    const-string/jumbo v2, "serializeRuleList should never be called with null rule list."

    .line 160
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 163
    new-instance v1, Lcom/android/server/integrity/model/BitOutputStream;

    invoke-direct {v1, p2}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 165
    invoke-virtual {p2}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->getWrittenBytesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "START_KEY"

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 169
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x32

    if-lt v4, v6, :cond_5a

    .line 171
    invoke-virtual {p2}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->getWrittenBytesCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v0

    .line 175
    :cond_5a
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/integrity/Rule;

    .line 176
    invoke-virtual {p0, v6, v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRule(Landroid/content/integrity/Rule;Lcom/android/server/integrity/model/BitOutputStream;)V

    .line 177
    invoke-virtual {v1}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 181
    :cond_79
    invoke-virtual {p2}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->getWrittenBytesCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "END_KEY"

    invoke-virtual {v2, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public final serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1c

    .line 296
    invoke-static {p1, p2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->getBytesForString(Ljava/lang/String;Z)[B

    move-result-object p0

    .line 298
    invoke-virtual {p3, p2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    .line 299
    array-length p1, p0

    const/16 p2, 0x8

    invoke-virtual {p3, p2, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 300
    array-length p1, p0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_1b

    aget-byte v1, p0, v0

    .line 301
    invoke-virtual {p3, p2, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1b
    return-void

    .line 294
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String value can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifySize(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;>;I)V"
        }
    .end annotation

    .line 135
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/integrity/serializer/RuleBinarySerializer$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer$$ExternalSyntheticLambda0;-><init>()V

    .line 136
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    .line 137
    invoke-static {p1}, Ljava/util/stream/Collectors;->summingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p0, p2, :cond_27

    return-void

    .line 139
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many rules provided in the indexing group. Provided "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " limit "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
