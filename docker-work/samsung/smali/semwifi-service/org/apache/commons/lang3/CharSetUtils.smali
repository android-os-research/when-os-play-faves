.class public Lorg/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .line 52
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_27

    .line 55
    :cond_e
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_27

    aget-char v3, p0, v2

    .line 57
    invoke-virtual {p1, v3}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_27
    :goto_27
    return v1
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 83
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 86
    :cond_e
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_18
    if-ge v1, v0, :cond_27

    aget-char v3, p0, v1

    .line 89
    invoke-virtual {p1, v3}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v3

    if-eqz v3, :cond_24

    add-int/lit8 v2, v2, 0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_27
    return v2

    :cond_28
    :goto_28
    return v1
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_13

    .line 105
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_13

    aget-object v3, p0, v2

    .line 106
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    return v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 133
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    const/4 v0, 0x0

    .line 136
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_12
    :goto_12
    return-object p0
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    const/4 v0, 0x1

    .line 165
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    :goto_17
    const-string p0, ""

    return-object p0
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    .line 177
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 180
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_23

    aget-char v3, p0, v2

    .line 181
    invoke-virtual {p1, v3}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v4

    if-ne v4, p2, :cond_20

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 185
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 207
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_59

    .line 210
    :cond_d
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 213
    array-length v1, p0

    const/4 v2, 0x0

    .line 214
    aget-char v2, p0, v2

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_28
    if-ge v3, v1, :cond_55

    .line 220
    aget-char v6, p0, v3

    if-ne v6, v2, :cond_4e

    if-eqz v4, :cond_37

    .line 222
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne v6, v7, :cond_37

    goto :goto_52

    :cond_37
    if-eqz v5, :cond_3f

    .line 225
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-eq v6, v7, :cond_4e

    .line 226
    :cond_3f
    invoke-virtual {p1, v6}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 227
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_52

    .line 230
    :cond_4a
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 233
    :cond_4e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v6

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 236
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_59
    :goto_59
    return-object p0
.end method
