.class public Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 63
    array-length v0, p1

    if-lez v0, :cond_11

    .line 64
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    goto :goto_1d

    .line 66
    :cond_11
    sget-object p1, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    :goto_1d
    return-void
.end method


# virtual methods
.method public isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z
    .registers 2

    .line 77
    iget-object p0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 87
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-ne v1, v3, :cond_ce

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_ce

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_ce

    add-int/lit8 p2, p2, 0x2

    .line 91
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x78

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2d

    const/16 v3, 0x58

    if-ne v1, v3, :cond_2b

    goto :goto_2d

    :cond_2b
    move v1, v2

    goto :goto_33

    :cond_2d
    :goto_2d
    add-int/lit8 p2, p2, 0x1

    if-ne p2, v0, :cond_32

    return v2

    :cond_32
    move v1, v4

    :goto_33
    move v3, p2

    :goto_34
    if-ge v3, v0, :cond_69

    .line 104
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_46

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_66

    .line 105
    :cond_46
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_56

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x66

    if-le v5, v6, :cond_66

    .line 106
    :cond_56
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_69

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x46

    if-gt v5, v6, :cond_69

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_69
    if-eq v3, v0, :cond_75

    .line 110
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_75

    move v0, v4

    goto :goto_76

    :cond_75
    move v0, v2

    :goto_76
    if-nez v0, :cond_92

    .line 113
    sget-object v5, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v5}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v5

    if-eqz v5, :cond_81

    return v2

    .line 116
    :cond_81
    sget-object v5, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v5}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto :goto_92

    .line 117
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Semi-colon required at end of numeric entity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    :goto_92
    if-eqz v1, :cond_a3

    .line 124
    :try_start_94
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_b1

    .line 126
    :cond_a3
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_b1} :catch_ce

    :goto_b1
    const p1, 0xffff

    if-le p0, p1, :cond_c5

    .line 133
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    .line 134
    aget-char p1, p0, v2

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    .line 135
    aget-char p0, p0, v4

    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_c8

    .line 137
    :cond_c5
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    :goto_c8
    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p2

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    :catch_ce
    :cond_ce
    return v2
.end method
