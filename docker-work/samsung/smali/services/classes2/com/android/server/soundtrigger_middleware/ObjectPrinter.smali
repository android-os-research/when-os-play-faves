.class public Lcom/android/server/soundtrigger_middleware/ObjectPrinter;
.super Ljava/lang/Object;
.source "ObjectPrinter.java"


# static fields
.field public static final kDefaultMaxCollectionLength:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-static {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V
    .registers 12

    if-nez p1, :cond_8

    :try_start_2
    const-string p1, "null"

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 62
    :cond_8
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 66
    :cond_10
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_18

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 70
    :cond_18
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_28

    const/16 p2, 0x27

    .line 71
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 76
    :cond_28
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3c

    const/16 p2, 0x22

    .line 77
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 83
    :cond_3c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 85
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_11b

    const-string v2, " ]"

    const-string v3, "[ "

    const-string v4, " entries)"

    const-string v5, ", "

    const-string v6, "... (+"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_8b

    .line 86
    :try_start_54
    check-cast p1, Ljava/util/Collection;

    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v8

    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-lez v1, :cond_71

    .line 93
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    if-lt v1, p2, :cond_74

    goto :goto_7b

    .line 99
    :cond_74
    invoke-static {p0, v3, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_7a
    move v7, v8

    :goto_7b
    if-eqz v7, :cond_87

    .line 103
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_87
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 111
    :cond_8b
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 112
    check-cast p1, Ljava/util/Map;

    const-string v0, "< "

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 117
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v8

    :goto_a7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-lez v1, :cond_b8

    .line 119
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b8
    if-lt v1, p2, :cond_bb

    goto :goto_d2

    .line 125
    :cond_bb
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    const-string v3, ": "

    .line 126
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_d1
    move v7, v8

    :goto_d2
    if-eqz v7, :cond_de

    .line 131
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_de
    const-string p1, " >"

    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 139
    :cond_e4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    move v1, v8

    :goto_f2
    if-ge v1, v0, :cond_106

    if-lez v1, :cond_f9

    .line 145
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f9
    if-lt v1, p2, :cond_fc

    goto :goto_107

    .line 151
    :cond_fc
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    :cond_106
    move v7, v8

    :goto_107
    if-eqz v7, :cond_113

    .line 154
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_113
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 162
    :cond_117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_11a} :catch_11b

    return-void

    :catch_11b
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
