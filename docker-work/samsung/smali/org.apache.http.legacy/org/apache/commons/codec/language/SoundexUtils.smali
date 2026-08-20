.class final Lorg/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SoundexUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3b

    .line 48
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 49
    .local v0, "len":I
    new-array v1, v0, [C

    .line 50
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 51
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_29

    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 53
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v2

    move v2, v4

    .line 51
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 56
    .end local v3    # "i":I
    :cond_29
    if-ne v2, v0, :cond_30

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 59
    :cond_30
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 46
    .end local v0    # "len":I
    .end local v1    # "chars":[C
    .end local v2    # "count":I
    :cond_3b
    :goto_3b
    return-object p0
.end method

.method static difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "encoder"    # Lorg/apache/commons/codec/StringEncoder;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 89
    invoke-interface {p0, p1}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "es1"    # Ljava/lang/String;
    .param p1, "es2"    # Ljava/lang/String;

    .line 114
    if-eqz p0, :cond_25

    if-nez p1, :cond_5

    goto :goto_25

    .line 117
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 118
    .local v0, "lengthToMatch":I
    const/4 v1, 0x0

    .line 119
    .local v1, "diff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_24

    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_21

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 119
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 124
    .end local v2    # "i":I
    :cond_24
    return v1

    .line 115
    .end local v0    # "lengthToMatch":I
    .end local v1    # "diff":I
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method
